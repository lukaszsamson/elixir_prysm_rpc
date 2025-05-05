defmodule Ethereum.Eth.V1.ValidatorStatus do
  @moduledoc false

  use Protobuf, enum: true, syntax: :proto3, protoc_gen_elixir_version: "0.13.0"

  field :PENDING_INITIALIZED, 0
  field :PENDING_QUEUED, 1
  field :ACTIVE_ONGOING, 2
  field :ACTIVE_EXITING, 3
  field :ACTIVE_SLASHED, 4
  field :EXITED_UNSLASHED, 5
  field :EXITED_SLASHED, 6
  field :WITHDRAWAL_POSSIBLE, 7
  field :WITHDRAWAL_DONE, 8
  field :ACTIVE, 9
  field :PENDING, 10
  field :EXITED, 11
  field :WITHDRAWAL, 12
end

defmodule Ethereum.Eth.V1.Validator do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.13.0"

  field :pubkey, 1, type: :bytes, deprecated: false

  field :withdrawal_credentials, 2,
    type: :bytes,
    json_name: "withdrawalCredentials",
    deprecated: false

  field :effective_balance, 3, type: :uint64, json_name: "effectiveBalance"
  field :slashed, 4, type: :bool

  field :activation_eligibility_epoch, 5,
    type: :uint64,
    json_name: "activationEligibilityEpoch",
    deprecated: false

  field :activation_epoch, 6, type: :uint64, json_name: "activationEpoch", deprecated: false
  field :exit_epoch, 7, type: :uint64, json_name: "exitEpoch", deprecated: false
  field :withdrawable_epoch, 8, type: :uint64, json_name: "withdrawableEpoch", deprecated: false
end

defmodule Ethereum.Eth.V1.ProduceBlockRequest do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.13.0"

  field :slot, 1, type: :uint64, deprecated: false
  field :randao_reveal, 2, type: :bytes, json_name: "randaoReveal", deprecated: false
  field :graffiti, 3, proto3_optional: true, type: :bytes, deprecated: false
end

defmodule Ethereum.Eth.V1.ProduceBlockResponse do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.13.0"

  field :data, 1, type: Ethereum.Eth.V1.BeaconBlock
end