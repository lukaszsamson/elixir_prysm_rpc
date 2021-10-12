defmodule Ethereum.Eth.V1alpha1.ValidatorStatus do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :UNKNOWN_STATUS
          | :DEPOSITED
          | :PENDING
          | :ACTIVE
          | :EXITING
          | :SLASHING
          | :EXITED
          | :INVALID
          | :PARTIALLY_DEPOSITED

  field :UNKNOWN_STATUS, 0

  field :DEPOSITED, 1

  field :PENDING, 2

  field :ACTIVE, 3

  field :EXITING, 4

  field :SLASHING, 5

  field :EXITED, 6

  field :INVALID, 7

  field :PARTIALLY_DEPOSITED, 8
end

defmodule Ethereum.Eth.V1alpha1.SyncMessageBlockRootResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          root: binary
        }

  defstruct [:root]

  field :root, 1, type: :bytes
end

defmodule Ethereum.Eth.V1alpha1.SyncSubcommitteeIndexRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          public_key: binary,
          slot: non_neg_integer
        }

  defstruct [:public_key, :slot]

  field :public_key, 1, type: :bytes
  field :slot, 2, type: :uint64
end

defmodule Ethereum.Eth.V1alpha1.SyncCommitteeContributionRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          slot: non_neg_integer,
          public_key: binary,
          subnet_id: non_neg_integer
        }

  defstruct [:slot, :public_key, :subnet_id]

  field :slot, 1, type: :uint64
  field :public_key, 2, type: :bytes
  field :subnet_id, 3, type: :uint64
end

defmodule Ethereum.Eth.V1alpha1.SyncSubcommitteeIndexResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          indices: [non_neg_integer]
        }

  defstruct [:indices]

  field :indices, 1, repeated: true, type: :uint64
end

defmodule Ethereum.Eth.V1alpha1.StreamBlocksResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          block: {atom, any}
        }

  defstruct [:block]

  oneof :block, 0
  field :phase0_block, 1, type: Ethereum.Eth.V1alpha1.SignedBeaconBlock, oneof: 0
  field :altair_block, 2, type: Ethereum.Eth.V1alpha1.SignedBeaconBlockAltair, oneof: 0
end

defmodule Ethereum.Eth.V1alpha1.DomainRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          epoch: non_neg_integer,
          domain: binary
        }

  defstruct [:epoch, :domain]

  field :epoch, 1, type: :uint64
  field :domain, 2, type: :bytes
end

defmodule Ethereum.Eth.V1alpha1.DomainResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          signature_domain: binary
        }

  defstruct [:signature_domain]

  field :signature_domain, 1, type: :bytes
end

defmodule Ethereum.Eth.V1alpha1.ValidatorActivationRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          public_keys: [binary]
        }

  defstruct [:public_keys]

  field :public_keys, 1, repeated: true, type: :bytes
end

defmodule Ethereum.Eth.V1alpha1.ValidatorActivationResponse.Status do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          public_key: binary,
          status: Ethereum.Eth.V1alpha1.ValidatorStatusResponse.t() | nil,
          index: non_neg_integer
        }

  defstruct [:public_key, :status, :index]

  field :public_key, 1, type: :bytes
  field :status, 2, type: Ethereum.Eth.V1alpha1.ValidatorStatusResponse
  field :index, 3, type: :uint64
end

defmodule Ethereum.Eth.V1alpha1.ValidatorActivationResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          statuses: [Ethereum.Eth.V1alpha1.ValidatorActivationResponse.Status.t()]
        }

  defstruct [:statuses]

  field :statuses, 1,
    repeated: true,
    type: Ethereum.Eth.V1alpha1.ValidatorActivationResponse.Status
end

defmodule Ethereum.Eth.V1alpha1.ChainStartResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          started: boolean,
          genesis_time: non_neg_integer,
          genesis_validators_root: binary
        }

  defstruct [:started, :genesis_time, :genesis_validators_root]

  field :started, 1, type: :bool
  field :genesis_time, 2, type: :uint64
  field :genesis_validators_root, 3, type: :bytes
end

defmodule Ethereum.Eth.V1alpha1.SyncedResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          synced: boolean,
          genesis_time: non_neg_integer
        }

  defstruct [:synced, :genesis_time]

  field :synced, 1, type: :bool
  field :genesis_time, 2, type: :uint64
end

defmodule Ethereum.Eth.V1alpha1.ValidatorIndexRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          public_key: binary
        }

  defstruct [:public_key]

  field :public_key, 1, type: :bytes
end

defmodule Ethereum.Eth.V1alpha1.ValidatorIndexResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          index: non_neg_integer
        }

  defstruct [:index]

  field :index, 1, type: :uint64
end

defmodule Ethereum.Eth.V1alpha1.ValidatorStatusRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          public_key: binary
        }

  defstruct [:public_key]

  field :public_key, 1, type: :bytes
end

defmodule Ethereum.Eth.V1alpha1.ValidatorStatusResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          status: Ethereum.Eth.V1alpha1.ValidatorStatus.t(),
          eth1_deposit_block_number: non_neg_integer,
          deposit_inclusion_slot: non_neg_integer,
          activation_epoch: non_neg_integer,
          position_in_activation_queue: non_neg_integer
        }

  defstruct [
    :status,
    :eth1_deposit_block_number,
    :deposit_inclusion_slot,
    :activation_epoch,
    :position_in_activation_queue
  ]

  field :status, 1, type: Ethereum.Eth.V1alpha1.ValidatorStatus, enum: true
  field :eth1_deposit_block_number, 2, type: :uint64
  field :deposit_inclusion_slot, 3, type: :uint64
  field :activation_epoch, 4, type: :uint64
  field :position_in_activation_queue, 5, type: :uint64
end

defmodule Ethereum.Eth.V1alpha1.MultipleValidatorStatusRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          public_keys: [binary],
          indices: [integer]
        }

  defstruct [:public_keys, :indices]

  field :public_keys, 1, repeated: true, type: :bytes
  field :indices, 2, repeated: true, type: :int64
end

defmodule Ethereum.Eth.V1alpha1.MultipleValidatorStatusResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          public_keys: [binary],
          statuses: [Ethereum.Eth.V1alpha1.ValidatorStatusResponse.t()],
          indices: [non_neg_integer]
        }

  defstruct [:public_keys, :statuses, :indices]

  field :public_keys, 1, repeated: true, type: :bytes
  field :statuses, 2, repeated: true, type: Ethereum.Eth.V1alpha1.ValidatorStatusResponse
  field :indices, 3, repeated: true, type: :uint64
end

defmodule Ethereum.Eth.V1alpha1.DutiesRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          epoch: non_neg_integer,
          public_keys: [binary]
        }

  defstruct [:epoch, :public_keys]

  field :epoch, 1, type: :uint64
  field :public_keys, 2, repeated: true, type: :bytes
end

defmodule Ethereum.Eth.V1alpha1.DutiesResponse.Duty do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          committee: [non_neg_integer],
          committee_index: non_neg_integer,
          attester_slot: non_neg_integer,
          proposer_slots: [non_neg_integer],
          public_key: binary,
          status: Ethereum.Eth.V1alpha1.ValidatorStatus.t(),
          validator_index: non_neg_integer,
          is_sync_committee: boolean
        }

  defstruct [
    :committee,
    :committee_index,
    :attester_slot,
    :proposer_slots,
    :public_key,
    :status,
    :validator_index,
    :is_sync_committee
  ]

  field :committee, 1, repeated: true, type: :uint64
  field :committee_index, 2, type: :uint64
  field :attester_slot, 3, type: :uint64
  field :proposer_slots, 4, repeated: true, type: :uint64
  field :public_key, 5, type: :bytes
  field :status, 6, type: Ethereum.Eth.V1alpha1.ValidatorStatus, enum: true
  field :validator_index, 7, type: :uint64
  field :is_sync_committee, 8, type: :bool
end

defmodule Ethereum.Eth.V1alpha1.DutiesResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          duties: [Ethereum.Eth.V1alpha1.DutiesResponse.Duty.t()],
          current_epoch_duties: [Ethereum.Eth.V1alpha1.DutiesResponse.Duty.t()],
          next_epoch_duties: [Ethereum.Eth.V1alpha1.DutiesResponse.Duty.t()]
        }

  defstruct [:duties, :current_epoch_duties, :next_epoch_duties]

  field :duties, 1,
    repeated: true,
    type: Ethereum.Eth.V1alpha1.DutiesResponse.Duty,
    deprecated: true

  field :current_epoch_duties, 2, repeated: true, type: Ethereum.Eth.V1alpha1.DutiesResponse.Duty
  field :next_epoch_duties, 3, repeated: true, type: Ethereum.Eth.V1alpha1.DutiesResponse.Duty
end

defmodule Ethereum.Eth.V1alpha1.BlockRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          slot: non_neg_integer,
          randao_reveal: binary,
          graffiti: binary
        }

  defstruct [:slot, :randao_reveal, :graffiti]

  field :slot, 1, type: :uint64
  field :randao_reveal, 2, type: :bytes
  field :graffiti, 3, type: :bytes
end

defmodule Ethereum.Eth.V1alpha1.ProposeResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          block_root: binary
        }

  defstruct [:block_root]

  field :block_root, 1, type: :bytes
end

defmodule Ethereum.Eth.V1alpha1.ProposeExitResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          exit_root: binary
        }

  defstruct [:exit_root]

  field :exit_root, 1, type: :bytes
end

defmodule Ethereum.Eth.V1alpha1.AttestationDataRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          slot: non_neg_integer,
          committee_index: non_neg_integer
        }

  defstruct [:slot, :committee_index]

  field :slot, 1, type: :uint64
  field :committee_index, 2, type: :uint64
end

defmodule Ethereum.Eth.V1alpha1.AttestResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          attestation_data_root: binary
        }

  defstruct [:attestation_data_root]

  field :attestation_data_root, 1, type: :bytes
end

defmodule Ethereum.Eth.V1alpha1.AggregateSelectionRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          slot: non_neg_integer,
          committee_index: non_neg_integer,
          public_key: binary,
          slot_signature: binary
        }

  defstruct [:slot, :committee_index, :public_key, :slot_signature]

  field :slot, 1, type: :uint64
  field :committee_index, 2, type: :uint64
  field :public_key, 3, type: :bytes
  field :slot_signature, 4, type: :bytes
end

defmodule Ethereum.Eth.V1alpha1.AggregateSelectionResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          aggregate_and_proof: Ethereum.Eth.V1alpha1.AggregateAttestationAndProof.t() | nil
        }

  defstruct [:aggregate_and_proof]

  field :aggregate_and_proof, 1, type: Ethereum.Eth.V1alpha1.AggregateAttestationAndProof
end

defmodule Ethereum.Eth.V1alpha1.SignedAggregateSubmitRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          signed_aggregate_and_proof:
            Ethereum.Eth.V1alpha1.SignedAggregateAttestationAndProof.t() | nil
        }

  defstruct [:signed_aggregate_and_proof]

  field :signed_aggregate_and_proof, 1,
    type: Ethereum.Eth.V1alpha1.SignedAggregateAttestationAndProof
end

defmodule Ethereum.Eth.V1alpha1.SignedAggregateSubmitResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          attestation_data_root: binary
        }

  defstruct [:attestation_data_root]

  field :attestation_data_root, 1, type: :bytes
end

defmodule Ethereum.Eth.V1alpha1.CommitteeSubnetsSubscribeRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          slots: [non_neg_integer],
          committee_ids: [non_neg_integer],
          is_aggregator: [boolean]
        }

  defstruct [:slots, :committee_ids, :is_aggregator]

  field :slots, 1, repeated: true, type: :uint64
  field :committee_ids, 2, repeated: true, type: :uint64
  field :is_aggregator, 3, repeated: true, type: :bool
end

defmodule Ethereum.Eth.V1alpha1.Validator do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          public_key: binary,
          withdrawal_credentials: binary,
          effective_balance: non_neg_integer,
          slashed: boolean,
          activation_eligibility_epoch: non_neg_integer,
          activation_epoch: non_neg_integer,
          exit_epoch: non_neg_integer,
          withdrawable_epoch: non_neg_integer
        }

  defstruct [
    :public_key,
    :withdrawal_credentials,
    :effective_balance,
    :slashed,
    :activation_eligibility_epoch,
    :activation_epoch,
    :exit_epoch,
    :withdrawable_epoch
  ]

  field :public_key, 1, type: :bytes
  field :withdrawal_credentials, 2, type: :bytes
  field :effective_balance, 3, type: :uint64
  field :slashed, 4, type: :bool
  field :activation_eligibility_epoch, 5, type: :uint64
  field :activation_epoch, 6, type: :uint64
  field :exit_epoch, 7, type: :uint64
  field :withdrawable_epoch, 8, type: :uint64
end

defmodule Ethereum.Eth.V1alpha1.ValidatorParticipation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          global_participation_rate: float | :infinity | :negative_infinity | :nan,
          voted_ether: non_neg_integer,
          eligible_ether: non_neg_integer,
          current_epoch_active_gwei: non_neg_integer,
          current_epoch_attesting_gwei: non_neg_integer,
          current_epoch_target_attesting_gwei: non_neg_integer,
          previous_epoch_active_gwei: non_neg_integer,
          previous_epoch_attesting_gwei: non_neg_integer,
          previous_epoch_target_attesting_gwei: non_neg_integer,
          previous_epoch_head_attesting_gwei: non_neg_integer
        }

  defstruct [
    :global_participation_rate,
    :voted_ether,
    :eligible_ether,
    :current_epoch_active_gwei,
    :current_epoch_attesting_gwei,
    :current_epoch_target_attesting_gwei,
    :previous_epoch_active_gwei,
    :previous_epoch_attesting_gwei,
    :previous_epoch_target_attesting_gwei,
    :previous_epoch_head_attesting_gwei
  ]

  field :global_participation_rate, 1, type: :float, deprecated: true
  field :voted_ether, 2, type: :uint64, deprecated: true
  field :eligible_ether, 3, type: :uint64, deprecated: true
  field :current_epoch_active_gwei, 4, type: :uint64
  field :current_epoch_attesting_gwei, 5, type: :uint64
  field :current_epoch_target_attesting_gwei, 6, type: :uint64
  field :previous_epoch_active_gwei, 7, type: :uint64
  field :previous_epoch_attesting_gwei, 8, type: :uint64
  field :previous_epoch_target_attesting_gwei, 9, type: :uint64
  field :previous_epoch_head_attesting_gwei, 10, type: :uint64
end

defmodule Ethereum.Eth.V1alpha1.ValidatorInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          public_key: binary,
          index: non_neg_integer,
          epoch: non_neg_integer,
          status: Ethereum.Eth.V1alpha1.ValidatorStatus.t(),
          transition_timestamp: non_neg_integer,
          balance: non_neg_integer,
          effective_balance: non_neg_integer
        }

  defstruct [
    :public_key,
    :index,
    :epoch,
    :status,
    :transition_timestamp,
    :balance,
    :effective_balance
  ]

  field :public_key, 1, type: :bytes
  field :index, 2, type: :uint64
  field :epoch, 3, type: :uint64
  field :status, 4, type: Ethereum.Eth.V1alpha1.ValidatorStatus, enum: true
  field :transition_timestamp, 5, type: :uint64
  field :balance, 6, type: :uint64
  field :effective_balance, 7, type: :uint64
end

defmodule Ethereum.Eth.V1alpha1.DoppelGangerRequest.ValidatorRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          public_key: binary,
          epoch: non_neg_integer,
          signed_root: binary
        }

  defstruct [:public_key, :epoch, :signed_root]

  field :public_key, 1, type: :bytes
  field :epoch, 3, type: :uint64
  field :signed_root, 2, type: :bytes
end

defmodule Ethereum.Eth.V1alpha1.DoppelGangerRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          validator_requests: [Ethereum.Eth.V1alpha1.DoppelGangerRequest.ValidatorRequest.t()]
        }

  defstruct [:validator_requests]

  field :validator_requests, 1,
    repeated: true,
    type: Ethereum.Eth.V1alpha1.DoppelGangerRequest.ValidatorRequest
end

defmodule Ethereum.Eth.V1alpha1.DoppelGangerResponse.ValidatorResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          public_key: binary,
          duplicate_exists: boolean
        }

  defstruct [:public_key, :duplicate_exists]

  field :public_key, 1, type: :bytes
  field :duplicate_exists, 2, type: :bool
end

defmodule Ethereum.Eth.V1alpha1.DoppelGangerResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          responses: [Ethereum.Eth.V1alpha1.DoppelGangerResponse.ValidatorResponse.t()]
        }

  defstruct [:responses]

  field :responses, 1,
    repeated: true,
    type: Ethereum.Eth.V1alpha1.DoppelGangerResponse.ValidatorResponse
end

defmodule Ethereum.Eth.V1alpha1.StreamBlocksRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          verified_only: boolean
        }

  defstruct [:verified_only]

  field :verified_only, 1, type: :bool
end

defmodule Ethereum.Eth.V1alpha1.BeaconNodeValidator.Service do
  @moduledoc false
  use GRPC.Service, name: "ethereum.eth.v1alpha1.BeaconNodeValidator"

  rpc :GetDuties, Ethereum.Eth.V1alpha1.DutiesRequest, Ethereum.Eth.V1alpha1.DutiesResponse

  rpc :StreamDuties,
      Ethereum.Eth.V1alpha1.DutiesRequest,
      stream(Ethereum.Eth.V1alpha1.DutiesResponse)

  rpc :DomainData, Ethereum.Eth.V1alpha1.DomainRequest, Ethereum.Eth.V1alpha1.DomainResponse

  rpc :WaitForChainStart, Google.Protobuf.Empty, stream(Ethereum.Eth.V1alpha1.ChainStartResponse)

  rpc :WaitForActivation,
      Ethereum.Eth.V1alpha1.ValidatorActivationRequest,
      stream(Ethereum.Eth.V1alpha1.ValidatorActivationResponse)

  rpc :ValidatorIndex,
      Ethereum.Eth.V1alpha1.ValidatorIndexRequest,
      Ethereum.Eth.V1alpha1.ValidatorIndexResponse

  rpc :ValidatorStatus,
      Ethereum.Eth.V1alpha1.ValidatorStatusRequest,
      Ethereum.Eth.V1alpha1.ValidatorStatusResponse

  rpc :MultipleValidatorStatus,
      Ethereum.Eth.V1alpha1.MultipleValidatorStatusRequest,
      Ethereum.Eth.V1alpha1.MultipleValidatorStatusResponse

  rpc :GetBlock, Ethereum.Eth.V1alpha1.BlockRequest, Ethereum.Eth.V1alpha1.BeaconBlock

  rpc :ProposeBlock,
      Ethereum.Eth.V1alpha1.SignedBeaconBlock,
      Ethereum.Eth.V1alpha1.ProposeResponse

  rpc :GetBeaconBlock,
      Ethereum.Eth.V1alpha1.BlockRequest,
      Ethereum.Eth.V1alpha1.GenericBeaconBlock

  rpc :ProposeBeaconBlock,
      Ethereum.Eth.V1alpha1.GenericSignedBeaconBlock,
      Ethereum.Eth.V1alpha1.ProposeResponse

  rpc :GetAttestationData,
      Ethereum.Eth.V1alpha1.AttestationDataRequest,
      Ethereum.Eth.V1alpha1.AttestationData

  rpc :ProposeAttestation, Ethereum.Eth.V1alpha1.Attestation, Ethereum.Eth.V1alpha1.AttestResponse

  rpc :SubmitAggregateSelectionProof,
      Ethereum.Eth.V1alpha1.AggregateSelectionRequest,
      Ethereum.Eth.V1alpha1.AggregateSelectionResponse

  rpc :SubmitSignedAggregateSelectionProof,
      Ethereum.Eth.V1alpha1.SignedAggregateSubmitRequest,
      Ethereum.Eth.V1alpha1.SignedAggregateSubmitResponse

  rpc :ProposeExit,
      Ethereum.Eth.V1alpha1.SignedVoluntaryExit,
      Ethereum.Eth.V1alpha1.ProposeExitResponse

  rpc :SubscribeCommitteeSubnets,
      Ethereum.Eth.V1alpha1.CommitteeSubnetsSubscribeRequest,
      Google.Protobuf.Empty

  rpc :CheckDoppelGanger,
      Ethereum.Eth.V1alpha1.DoppelGangerRequest,
      Ethereum.Eth.V1alpha1.DoppelGangerResponse

  rpc :GetSyncMessageBlockRoot,
      Google.Protobuf.Empty,
      Ethereum.Eth.V1alpha1.SyncMessageBlockRootResponse

  rpc :SubmitSyncMessage, Ethereum.Eth.V1alpha1.SyncCommitteeMessage, Google.Protobuf.Empty

  rpc :GetSyncSubcommitteeIndex,
      Ethereum.Eth.V1alpha1.SyncSubcommitteeIndexRequest,
      Ethereum.Eth.V1alpha1.SyncSubcommitteeIndexResponse

  rpc :GetSyncCommitteeContribution,
      Ethereum.Eth.V1alpha1.SyncCommitteeContributionRequest,
      Ethereum.Eth.V1alpha1.SyncCommitteeContribution

  rpc :SubmitSignedContributionAndProof,
      Ethereum.Eth.V1alpha1.SignedContributionAndProof,
      Google.Protobuf.Empty

  rpc :StreamBlocksAltair,
      Ethereum.Eth.V1alpha1.StreamBlocksRequest,
      stream(Ethereum.Eth.V1alpha1.StreamBlocksResponse)
end

defmodule Ethereum.Eth.V1alpha1.BeaconNodeValidator.Stub do
  @moduledoc false
  use GRPC.Stub, service: Ethereum.Eth.V1alpha1.BeaconNodeValidator.Service
end
