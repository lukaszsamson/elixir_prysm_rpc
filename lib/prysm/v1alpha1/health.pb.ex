defmodule Ethereum.Eth.V1alpha1.LogsResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :logs, 1, repeated: true, type: :string
end

defmodule Ethereum.Eth.V1alpha1.Health.Service do
  @moduledoc false
  use GRPC.Service, name: "ethereum.eth.v1alpha1.Health", protoc_gen_elixir_version: "0.11.0"

  rpc :StreamBeaconLogs, Google.Protobuf.Empty, stream(Ethereum.Eth.V1alpha1.LogsResponse)
end

defmodule Ethereum.Eth.V1alpha1.Health.Stub do
  @moduledoc false
  use GRPC.Stub, service: Ethereum.Eth.V1alpha1.Health.Service
end