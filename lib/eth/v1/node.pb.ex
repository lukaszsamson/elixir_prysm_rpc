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

defmodule Ethereum.Eth.V1.Peer do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :peer_id, 1, type: :string, json_name: "peerId"
  field :enr, 2, type: :string
  field :last_seen_p2p_address, 3, type: :string, json_name: "lastSeenP2pAddress"
  field :state, 4, type: Ethereum.Eth.V1.ConnectionState, enum: true
  field :direction, 5, type: Ethereum.Eth.V1.PeerDirection, enum: true
end