defmodule Ethereum.Eth.Service.Events.Service do
  @moduledoc false
  use GRPC.Service, name: "ethereum.eth.service.Events", protoc_gen_elixir_version: "0.11.0"

  rpc :StreamEvents, Ethereum.Eth.V1.StreamEventsRequest, stream(Gateway.EventSource)
end

defmodule Ethereum.Eth.Service.Events.Stub do
  @moduledoc false
  use GRPC.Stub, service: Ethereum.Eth.Service.Events.Service
end