defmodule Ethereum.Eth.V2.SubmitSyncCommitteeSignaturesRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :data, 1, repeated: true, type: Ethereum.Eth.V2.SyncCommitteeMessage
end

defmodule Ethereum.Eth.V2.SyncCommittee do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :pubkeys, 1, repeated: true, type: :bytes, deprecated: false
  field :aggregate_pubkey, 2, type: :bytes, json_name: "aggregatePubkey", deprecated: false
end

defmodule Ethereum.Eth.V2.SyncCommitteeMessage do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :slot, 1, type: :uint64, deprecated: false
  field :beacon_block_root, 2, type: :bytes, json_name: "beaconBlockRoot", deprecated: false
  field :validator_index, 3, type: :uint64, json_name: "validatorIndex", deprecated: false
  field :signature, 4, type: :bytes, deprecated: false
end