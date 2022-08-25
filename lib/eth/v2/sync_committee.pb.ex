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

defmodule Ethereum.Eth.V2.SubmitPoolSyncCommitteeSignatures do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :data, 1, repeated: true, type: Ethereum.Eth.V2.SyncCommitteeMessage
end

defmodule Ethereum.Eth.V2.SyncCommitteeMessage do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :slot, 1, type: :uint64, deprecated: false
  field :beacon_block_root, 2, type: :bytes, json_name: "beaconBlockRoot", deprecated: false
  field :validator_index, 3, type: :uint64, json_name: "validatorIndex", deprecated: false
  field :signature, 4, type: :bytes, deprecated: false
end

defmodule Ethereum.Eth.V2.StateSyncCommitteesRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :state_id, 1, type: :bytes, json_name: "stateId"
  field :epoch, 2, proto3_optional: true, type: :uint64, deprecated: false
end

defmodule Ethereum.Eth.V2.StateSyncCommitteesResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :data, 1, type: Ethereum.Eth.V2.SyncCommitteeValidators
  field :execution_optimistic, 2, type: :bool, json_name: "executionOptimistic"
end

defmodule Ethereum.Eth.V2.SyncCommitteeValidators do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :validators, 1, repeated: true, type: :uint64, deprecated: false

  field :validator_aggregates, 2,
    repeated: true,
    type: Ethereum.Eth.V2.SyncSubcommitteeValidators,
    json_name: "validatorAggregates"
end

defmodule Ethereum.Eth.V2.SyncSubcommitteeValidators do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :validators, 1, repeated: true, type: :uint64, deprecated: false
end