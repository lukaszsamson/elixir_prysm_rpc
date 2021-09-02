defmodule PrysmRPC.Channel do
  use GenServer
  require Logger
  alias Ethereum.Validator.Accounts.V2, as: PrysmApi

  def start_link(args) do
    GenServer.start_link(__MODULE__, args)
  end

  def get(server) do
    GenServer.call(server, :get)
  end

  def stop(server) do
    GenServer.stop(server)
  end

  @impl true
  def init(args) do
    {:ok, channel} = GRPC.Stub.connect(args |> Keyword.fetch!(:host))
    Logger.info("#{__MODULE__} connected")
    pid = self()

    Task.start(fn ->
      Process.monitor(pid)

      receive do
        {:DOWN, _, :process, ^pid, _} ->
          case GRPC.Stub.disconnect(channel) do
            {:ok, _} ->
              Logger.info("#{__MODULE__} disconnected")
              :ok

            {:error, error} ->
              Logger.error("#{__MODULE__} error on GRPC.Stub.disconnect: #{inspect(error)}")
          end
      end
    end)

    {:ok,
     %{
       channel: channel,
       password: args |> Keyword.fetch!(:password),
       token_expiration: 0
     }}
  end

  @impl true
  def handle_call(
        :get,
        _,
        state = %{
          channel: channel,
          token_expiration: token_expiration,
          password: password
        }
      ) do
    {channel, token_expiration} =
      if system_time() >= token_expiration - 5 do
        {token, token_expiration} = login(channel, password)
        {%GRPC.Channel{channel | headers: headers(token)}, token_expiration}
      else
        {channel, token_expiration}
      end

    {:reply, channel, %{state | channel: channel, token_expiration: token_expiration}}
  end

  @impl true
  def handle_info({:gun_up, _, _}, state) do
    {:noreply, state}
  end

  def handle_info({:gun_down, _, _, _, _}, state) do
    {:noreply, state}
  end

  defp headers(token) do
    [{"authorization", "Bearer #{token}"}]
  end

  defp login(channel, password) do
    req = PrysmApi.AuthRequest.new(password: password, password_confirmation: password)

    {:ok,
     %PrysmApi.AuthResponse{
       token: token,
       token_expiration: token_expiration
     }} = PrysmApi.Auth.Stub.login(channel, req)

    Logger.info("#{__MODULE__} logged in, token valid for #{token_expiration - system_time()}s")

    {token, token_expiration}
  end

  defp system_time, do: System.system_time(:second)
end
