defmodule Ethereum.Eth.V1.ValidatorStatus do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

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

defmodule Ethereum.Eth.V1.ValidatorContainer do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :index, 1, type: :uint64, deprecated: false
  field :balance, 2, type: :uint64
  field :status, 3, type: Ethereum.Eth.V1.ValidatorStatus, enum: true
  field :validator, 4, type: Ethereum.Eth.V1.Validator
end

defmodule Ethereum.Eth.V1.Validator do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

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

defmodule Ethereum.Eth.V1.AttesterDutiesRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :epoch, 1, type: :uint64, deprecated: false
  field :index, 2, repeated: true, type: :uint64, deprecated: false
end

defmodule Ethereum.Eth.V1.AttesterDutiesResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :dependent_root, 1, type: :bytes, json_name: "dependentRoot", deprecated: false
  field :data, 2, repeated: true, type: Ethereum.Eth.V1.AttesterDuty
  field :execution_optimistic, 3, type: :bool, json_name: "executionOptimistic"
end

defmodule Ethereum.Eth.V1.AttesterDuty do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :pubkey, 1, type: :bytes, deprecated: false
  field :validator_index, 2, type: :uint64, json_name: "validatorIndex", deprecated: false
  field :committee_index, 3, type: :uint64, json_name: "committeeIndex", deprecated: false
  field :committee_length, 4, type: :uint64, json_name: "committeeLength"
  field :committees_at_slot, 5, type: :uint64, json_name: "committeesAtSlot"

  field :validator_committee_index, 6,
    type: :uint64,
    json_name: "validatorCommitteeIndex",
    deprecated: false

  field :slot, 7, type: :uint64, deprecated: false
end

defmodule Ethereum.Eth.V1.ProposerDutiesRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :epoch, 1, type: :uint64, deprecated: false
end

defmodule Ethereum.Eth.V1.ProposerDutiesResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :dependent_root, 1, type: :bytes, json_name: "dependentRoot", deprecated: false
  field :data, 2, repeated: true, type: Ethereum.Eth.V1.ProposerDuty
  field :execution_optimistic, 3, type: :bool, json_name: "executionOptimistic"
end

defmodule Ethereum.Eth.V1.ProposerDuty do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :pubkey, 1, type: :bytes, deprecated: false
  field :validator_index, 2, type: :uint64, json_name: "validatorIndex", deprecated: false
  field :slot, 3, type: :uint64, deprecated: false
end

defmodule Ethereum.Eth.V1.ProduceBlockRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :slot, 1, type: :uint64, deprecated: false
  field :randao_reveal, 2, type: :bytes, json_name: "randaoReveal", deprecated: false
  field :graffiti, 3, proto3_optional: true, type: :bytes, deprecated: false
end

defmodule Ethereum.Eth.V1.ProduceBlockResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :data, 1, type: Ethereum.Eth.V1.BeaconBlock
end

defmodule Ethereum.Eth.V1.ProduceAttestationDataRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :slot, 1, type: :uint64, deprecated: false
  field :committee_index, 2, type: :uint64, json_name: "committeeIndex", deprecated: false
end

defmodule Ethereum.Eth.V1.ProduceAttestationDataResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :data, 1, type: Ethereum.Eth.V1.AttestationData
end

defmodule Ethereum.Eth.V1.AggregateAttestationRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :attestation_data_root, 1,
    type: :bytes,
    json_name: "attestationDataRoot",
    deprecated: false

  field :slot, 2, type: :uint64, deprecated: false
end

defmodule Ethereum.Eth.V1.AggregateAttestationResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :data, 1, type: Ethereum.Eth.V1.Attestation
end

defmodule Ethereum.Eth.V1.SubmitAggregateAndProofsRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :data, 1, repeated: true, type: Ethereum.Eth.V1.SignedAggregateAttestationAndProof
end

defmodule Ethereum.Eth.V1.SubmitBeaconCommitteeSubscriptionsRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :data, 1, repeated: true, type: Ethereum.Eth.V1.BeaconCommitteeSubscribe
end

defmodule Ethereum.Eth.V1.BeaconCommitteeSubscribe do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :validator_index, 1, type: :uint64, json_name: "validatorIndex", deprecated: false
  field :committee_index, 2, type: :uint64, json_name: "committeeIndex", deprecated: false
  field :committees_at_slot, 3, type: :uint64, json_name: "committeesAtSlot"
  field :slot, 4, type: :uint64, deprecated: false
  field :is_aggregator, 5, type: :bool, json_name: "isAggregator"
end

defmodule Ethereum.Eth.V1.PrepareBeaconProposerRequest.FeeRecipientContainer do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :fee_recipient, 1, type: :bytes, json_name: "feeRecipient", deprecated: false
  field :validator_index, 2, type: :uint64, json_name: "validatorIndex", deprecated: false
end

defmodule Ethereum.Eth.V1.PrepareBeaconProposerRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :recipients, 1,
    repeated: true,
    type: Ethereum.Eth.V1.PrepareBeaconProposerRequest.FeeRecipientContainer
end