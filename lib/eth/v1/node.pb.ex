defmodule Ethereum.Eth.V1.PeerDirection do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :INBOUND, 0
  field :OUTBOUND, 1
end

defmodule Ethereum.Eth.V1.ConnectionState do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :DISCONNECTED, 0
  field :CONNECTING, 1
  field :CONNECTED, 2
  field :DISCONNECTING, 3
end

defmodule Ethereum.Eth.V1.IdentityResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :data, 1, type: Ethereum.Eth.V1.Identity
end

defmodule Ethereum.Eth.V1.Identity do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :peer_id, 1, type: :string, json_name: "peerId"
  field :enr, 2, type: :string
  field :p2p_addresses, 3, repeated: true, type: :string, json_name: "p2pAddresses"
  field :discovery_addresses, 4, repeated: true, type: :string, json_name: "discoveryAddresses"
  field :metadata, 5, type: Ethereum.Eth.V1.Metadata
end

defmodule Ethereum.Eth.V1.Metadata do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :seq_number, 1, type: :uint64, json_name: "seqNumber"
  field :attnets, 2, type: :bytes, deprecated: false
end

defmodule Ethereum.Eth.V1.PeerRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :peer_id, 1, type: :string, json_name: "peerId"
end

defmodule Ethereum.Eth.V1.PeersRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :state, 1, repeated: true, type: Ethereum.Eth.V1.ConnectionState, enum: true
  field :direction, 2, repeated: true, type: Ethereum.Eth.V1.PeerDirection, enum: true
end

defmodule Ethereum.Eth.V1.PeerResponse.Meta do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :count, 1, type: :uint64
end

defmodule Ethereum.Eth.V1.PeerResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :data, 1, type: Ethereum.Eth.V1.Peer
  field :meta, 2, type: Ethereum.Eth.V1.PeerResponse.Meta
end

defmodule Ethereum.Eth.V1.PeersResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :data, 1, repeated: true, type: Ethereum.Eth.V1.Peer
end

defmodule Ethereum.Eth.V1.PeerCountResponse.PeerCount do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :disconnected, 1, type: :uint64
  field :connecting, 2, type: :uint64
  field :connected, 3, type: :uint64
  field :disconnecting, 4, type: :uint64
end

defmodule Ethereum.Eth.V1.PeerCountResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :data, 1, type: Ethereum.Eth.V1.PeerCountResponse.PeerCount
end

defmodule Ethereum.Eth.V1.Peer do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :peer_id, 1, type: :string, json_name: "peerId"
  field :enr, 2, type: :string
  field :last_seen_p2p_address, 3, type: :string, json_name: "lastSeenP2pAddress"
  field :state, 4, type: Ethereum.Eth.V1.ConnectionState, enum: true
  field :direction, 5, type: Ethereum.Eth.V1.PeerDirection, enum: true
end

defmodule Ethereum.Eth.V1.VersionResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :data, 1, type: Ethereum.Eth.V1.Version
end

defmodule Ethereum.Eth.V1.Version do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :version, 1, type: :string
end

defmodule Ethereum.Eth.V1.SyncingResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :data, 1, type: Ethereum.Eth.V1.SyncInfo
end

defmodule Ethereum.Eth.V1.SyncInfo do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :head_slot, 1, type: :uint64, json_name: "headSlot", deprecated: false
  field :sync_distance, 2, type: :uint64, json_name: "syncDistance", deprecated: false
  field :is_syncing, 3, type: :bool, json_name: "isSyncing"
  field :is_optimistic, 4, type: :bool, json_name: "isOptimistic"
end