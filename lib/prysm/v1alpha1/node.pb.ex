defmodule Ethereum.Eth.V1alpha1.PeerDirection do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :UNKNOWN, 0
  field :INBOUND, 1
  field :OUTBOUND, 2
end
defmodule Ethereum.Eth.V1alpha1.ConnectionState do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :DISCONNECTED, 0
  field :DISCONNECTING, 1
  field :CONNECTED, 2
  field :CONNECTING, 3
end
defmodule Ethereum.Eth.V1alpha1.SyncStatus do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :syncing, 1, type: :bool
end
defmodule Ethereum.Eth.V1alpha1.Genesis do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :genesis_time, 1, type: Google.Protobuf.Timestamp, json_name: "genesisTime"
  field :deposit_contract_address, 2, type: :bytes, json_name: "depositContractAddress"

  field :genesis_validators_root, 3,
    type: :bytes,
    json_name: "genesisValidatorsRoot",
    deprecated: false
end
defmodule Ethereum.Eth.V1alpha1.Version do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :version, 1, type: :string
  field :metadata, 2, type: :string
end
defmodule Ethereum.Eth.V1alpha1.ImplementedServices do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :services, 1, repeated: true, type: :string
end
defmodule Ethereum.Eth.V1alpha1.PeerRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :peer_id, 1, type: :string, json_name: "peerId"
end
defmodule Ethereum.Eth.V1alpha1.Peers do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :peers, 1, repeated: true, type: Ethereum.Eth.V1alpha1.Peer
end
defmodule Ethereum.Eth.V1alpha1.Peer do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :address, 1, type: :string
  field :direction, 2, type: Ethereum.Eth.V1alpha1.PeerDirection, enum: true

  field :connection_state, 3,
    type: Ethereum.Eth.V1alpha1.ConnectionState,
    json_name: "connectionState",
    enum: true

  field :peer_id, 4, type: :string, json_name: "peerId"
  field :enr, 5, type: :string
end
defmodule Ethereum.Eth.V1alpha1.HostData do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :addresses, 1, repeated: true, type: :string
  field :peer_id, 2, type: :string, json_name: "peerId"
  field :enr, 3, type: :string
end
defmodule Ethereum.Eth.V1alpha1.ETH1ConnectionStatus do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :current_address, 1, type: :string, json_name: "currentAddress"
  field :current_connection_error, 2, type: :string, json_name: "currentConnectionError"
  field :addresses, 3, repeated: true, type: :string
  field :connection_errors, 4, repeated: true, type: :string, json_name: "connectionErrors"
end
defmodule Ethereum.Eth.V1alpha1.Node.Service do
  @moduledoc false
  use GRPC.Service, name: "ethereum.eth.v1alpha1.Node", protoc_gen_elixir_version: "0.10.0"

  rpc :GetSyncStatus, Google.Protobuf.Empty, Ethereum.Eth.V1alpha1.SyncStatus

  rpc :GetGenesis, Google.Protobuf.Empty, Ethereum.Eth.V1alpha1.Genesis

  rpc :GetVersion, Google.Protobuf.Empty, Ethereum.Eth.V1alpha1.Version

  rpc :ListImplementedServices, Google.Protobuf.Empty, Ethereum.Eth.V1alpha1.ImplementedServices

  rpc :GetHost, Google.Protobuf.Empty, Ethereum.Eth.V1alpha1.HostData

  rpc :GetPeer, Ethereum.Eth.V1alpha1.PeerRequest, Ethereum.Eth.V1alpha1.Peer

  rpc :ListPeers, Google.Protobuf.Empty, Ethereum.Eth.V1alpha1.Peers

  rpc :GetETH1ConnectionStatus, Google.Protobuf.Empty, Ethereum.Eth.V1alpha1.ETH1ConnectionStatus
end

defmodule Ethereum.Eth.V1alpha1.Node.Stub do
  @moduledoc false
  use GRPC.Stub, service: Ethereum.Eth.V1alpha1.Node.Service
end
