defmodule Ethereum.Eth.V1alpha1.LogsResponse do
  @moduledoc false

  use Protobuf, deprecated: true, syntax: :proto3, protoc_gen_elixir_version: "0.13.0"

  field :logs, 1, repeated: true, type: :string
end

defmodule Ethereum.Eth.V1alpha1.Health.Service do
  @moduledoc false

  use GRPC.Service, name: "ethereum.eth.v1alpha1.Health", protoc_gen_elixir_version: "0.13.0"

  rpc :StreamBeaconLogs, Google.Protobuf.Empty, stream(Ethereum.Eth.V1alpha1.LogsResponse)
end

defmodule Ethereum.Eth.V1alpha1.Health.Stub do
  @moduledoc false

  use GRPC.Stub, service: Ethereum.Eth.V1alpha1.Health.Service
end