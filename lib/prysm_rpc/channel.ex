defmodule PrysmRPC.Channel do
  use GenServer
  require Logger

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
       channel: channel
     }}
  end

  @impl true
  def handle_call(
        :get,
        _,
        state = %{
          channel: channel
        }
      ) do
    {:reply, channel, state}
  end

  @impl true
  def handle_info({:gun_up, _, _}, state) do
    {:noreply, state}
  end

  def handle_info({:gun_down, _, _, _, _}, state) do
    {:noreply, state}
  end
end
