defmodule Ethereum.Eth.Service.BeaconNode.Service do
  @moduledoc false
  use GRPC.Service, name: "ethereum.eth.service.BeaconNode", protoc_gen_elixir_version: "0.11.0"

  rpc :GetIdentity, Google.Protobuf.Empty, Ethereum.Eth.V1.IdentityResponse

  rpc :ListPeers, Ethereum.Eth.V1.PeersRequest, Ethereum.Eth.V1.PeersResponse

  rpc :GetPeer, Ethereum.Eth.V1.PeerRequest, Ethereum.Eth.V1.PeerResponse

  rpc :PeerCount, Google.Protobuf.Empty, Ethereum.Eth.V1.PeerCountResponse

  rpc :GetSyncStatus, Google.Protobuf.Empty, Ethereum.Eth.V1.SyncingResponse

  rpc :GetVersion, Google.Protobuf.Empty, Ethereum.Eth.V1.VersionResponse

  rpc :GetHealth, Google.Protobuf.Empty, Google.Protobuf.Empty
end

defmodule Ethereum.Eth.Service.BeaconNode.Stub do
  @moduledoc false
  use GRPC.Stub, service: Ethereum.Eth.Service.BeaconNode.Service
end