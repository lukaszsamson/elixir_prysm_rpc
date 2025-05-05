defmodule Ethereum.Eth.V1alpha1.ListIndexedAttestationsRequest do
  @moduledoc false

  use Protobuf, deprecated: true, syntax: :proto3, protoc_gen_elixir_version: "0.13.0"

  oneof :query_filter, 0

  field :epoch, 1, type: :uint64, oneof: 0, deprecated: false
  field :genesis_epoch, 2, type: :bool, json_name: "genesisEpoch", oneof: 0
  field :page_size, 3, type: :int32, json_name: "pageSize"
  field :page_token, 4, type: :string, json_name: "pageToken"
end

defmodule Ethereum.Eth.V1alpha1.ListAttestationsRequest do
  @moduledoc false

  use Protobuf, deprecated: true, syntax: :proto3, protoc_gen_elixir_version: "0.13.0"

  oneof :query_filter, 0

  field :epoch, 1, type: :uint64, oneof: 0, deprecated: false
  field :genesis_epoch, 2, type: :bool, json_name: "genesisEpoch", oneof: 0
  field :page_size, 3, type: :int32, json_name: "pageSize"
  field :page_token, 4, type: :string, json_name: "pageToken"
end

defmodule Ethereum.Eth.V1alpha1.ListAttestationsResponse do
  @moduledoc false

  use Protobuf, deprecated: true, syntax: :proto3, protoc_gen_elixir_version: "0.13.0"

  field :attestations, 1, repeated: true, type: Ethereum.Eth.V1alpha1.Attestation
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :total_size, 3, type: :int32, json_name: "totalSize"
end

defmodule Ethereum.Eth.V1alpha1.ListAttestationsElectraResponse do
  @moduledoc false

  use Protobuf, deprecated: true, syntax: :proto3, protoc_gen_elixir_version: "0.13.0"

  field :attestations, 1, repeated: true, type: Ethereum.Eth.V1alpha1.AttestationElectra
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :total_size, 3, type: :int32, json_name: "totalSize"
end

defmodule Ethereum.Eth.V1alpha1.ListIndexedAttestationsResponse do
  @moduledoc false

  use Protobuf, deprecated: true, syntax: :proto3, protoc_gen_elixir_version: "0.13.0"

  field :indexed_attestations, 1,
    repeated: true,
    type: Ethereum.Eth.V1alpha1.IndexedAttestation,
    json_name: "indexedAttestations"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :total_size, 3, type: :int32, json_name: "totalSize"
end

defmodule Ethereum.Eth.V1alpha1.ListIndexedAttestationsElectraResponse do
  @moduledoc false

  use Protobuf, deprecated: true, syntax: :proto3, protoc_gen_elixir_version: "0.13.0"

  field :indexed_attestations, 1,
    repeated: true,
    type: Ethereum.Eth.V1alpha1.IndexedAttestationElectra,
    json_name: "indexedAttestations"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :total_size, 3, type: :int32, json_name: "totalSize"
end

defmodule Ethereum.Eth.V1alpha1.ListBlocksRequest do
  @moduledoc false

  use Protobuf, deprecated: true, syntax: :proto3, protoc_gen_elixir_version: "0.13.0"

  oneof :query_filter, 0

  field :root, 1, type: :bytes, oneof: 0
  field :slot, 2, type: :uint64, oneof: 0, deprecated: false
  field :epoch, 3, type: :uint64, oneof: 0, deprecated: false
  field :genesis, 4, type: :bool, oneof: 0
  field :page_size, 5, type: :int32, json_name: "pageSize"
  field :page_token, 6, type: :string, json_name: "pageToken"
end

defmodule Ethereum.Eth.V1alpha1.ListBeaconBlocksResponse do
  @moduledoc false

  use Protobuf, deprecated: true, syntax: :proto3, protoc_gen_elixir_version: "0.13.0"

  field :block_containers, 1,
    repeated: true,
    type: Ethereum.Eth.V1alpha1.BeaconBlockContainer,
    json_name: "blockContainers"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :total_size, 3, type: :int32, json_name: "totalSize"
end

defmodule Ethereum.Eth.V1alpha1.BeaconBlockContainer do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.13.0"

  oneof :block, 0

  field :block_root, 1, type: :bytes, json_name: "blockRoot"
  field :canonical, 2, type: :bool

  field :phase0_block, 3,
    type: Ethereum.Eth.V1alpha1.SignedBeaconBlock,
    json_name: "phase0Block",
    oneof: 0

  field :altair_block, 4,
    type: Ethereum.Eth.V1alpha1.SignedBeaconBlockAltair,
    json_name: "altairBlock",
    oneof: 0

  field :bellatrix_block, 5,
    type: Ethereum.Eth.V1alpha1.SignedBeaconBlockBellatrix,
    json_name: "bellatrixBlock",
    oneof: 0

  field :blinded_bellatrix_block, 6,
    type: Ethereum.Eth.V1alpha1.SignedBlindedBeaconBlockBellatrix,
    json_name: "blindedBellatrixBlock",
    oneof: 0

  field :capella_block, 7,
    type: Ethereum.Eth.V1alpha1.SignedBeaconBlockCapella,
    json_name: "capellaBlock",
    oneof: 0

  field :blinded_capella_block, 8,
    type: Ethereum.Eth.V1alpha1.SignedBlindedBeaconBlockCapella,
    json_name: "blindedCapellaBlock",
    oneof: 0

  field :deneb_block, 9,
    type: Ethereum.Eth.V1alpha1.SignedBeaconBlockDeneb,
    json_name: "denebBlock",
    oneof: 0

  field :blinded_deneb_block, 10,
    type: Ethereum.Eth.V1alpha1.SignedBlindedBeaconBlockDeneb,
    json_name: "blindedDenebBlock",
    oneof: 0

  field :electra_block, 11,
    type: Ethereum.Eth.V1alpha1.SignedBeaconBlockElectra,
    json_name: "electraBlock",
    oneof: 0

  field :blinded_electra_block, 12,
    type: Ethereum.Eth.V1alpha1.SignedBlindedBeaconBlockElectra,
    json_name: "blindedElectraBlock",
    oneof: 0

  field :fulu_block, 13,
    type: Ethereum.Eth.V1alpha1.SignedBeaconBlockFulu,
    json_name: "fuluBlock",
    oneof: 0

  field :blinded_fulu_block, 14,
    type: Ethereum.Eth.V1alpha1.SignedBlindedBeaconBlockFulu,
    json_name: "blindedFuluBlock",
    oneof: 0
end

defmodule Ethereum.Eth.V1alpha1.ChainHead do
  @moduledoc false

  use Protobuf, deprecated: true, syntax: :proto3, protoc_gen_elixir_version: "0.13.0"

  field :head_slot, 1, type: :uint64, json_name: "headSlot", deprecated: false
  field :head_epoch, 2, type: :uint64, json_name: "headEpoch", deprecated: false
  field :head_block_root, 3, type: :bytes, json_name: "headBlockRoot", deprecated: false
  field :finalized_slot, 4, type: :uint64, json_name: "finalizedSlot", deprecated: false
  field :finalized_epoch, 5, type: :uint64, json_name: "finalizedEpoch", deprecated: false
  field :finalized_block_root, 6, type: :bytes, json_name: "finalizedBlockRoot", deprecated: false
  field :justified_slot, 7, type: :uint64, json_name: "justifiedSlot", deprecated: false
  field :justified_epoch, 8, type: :uint64, json_name: "justifiedEpoch", deprecated: false
  field :justified_block_root, 9, type: :bytes, json_name: "justifiedBlockRoot", deprecated: false

  field :previous_justified_slot, 10,
    type: :uint64,
    json_name: "previousJustifiedSlot",
    deprecated: false

  field :previous_justified_epoch, 11,
    type: :uint64,
    json_name: "previousJustifiedEpoch",
    deprecated: false

  field :previous_justified_block_root, 12,
    type: :bytes,
    json_name: "previousJustifiedBlockRoot",
    deprecated: false

  field :optimistic_status, 13, type: :bool, json_name: "optimisticStatus"
end

defmodule Ethereum.Eth.V1alpha1.ListCommitteesRequest do
  @moduledoc false

  use Protobuf, deprecated: true, syntax: :proto3, protoc_gen_elixir_version: "0.13.0"

  oneof :query_filter, 0

  field :epoch, 1, type: :uint64, oneof: 0, deprecated: false
  field :genesis, 2, type: :bool, oneof: 0
end

defmodule Ethereum.Eth.V1alpha1.BeaconCommittees.CommitteeItem do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.13.0"

  field :validator_indices, 1,
    repeated: true,
    type: :uint64,
    json_name: "validatorIndices",
    deprecated: false
end

defmodule Ethereum.Eth.V1alpha1.BeaconCommittees.CommitteesList do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.13.0"

  field :committees, 1, repeated: true, type: Ethereum.Eth.V1alpha1.BeaconCommittees.CommitteeItem
end

defmodule Ethereum.Eth.V1alpha1.BeaconCommittees.CommitteesEntry do
  @moduledoc false

  use Protobuf, map: true, syntax: :proto3, protoc_gen_elixir_version: "0.13.0"

  field :key, 1, type: :uint64
  field :value, 2, type: Ethereum.Eth.V1alpha1.BeaconCommittees.CommitteesList
end

defmodule Ethereum.Eth.V1alpha1.BeaconCommittees do
  @moduledoc false

  use Protobuf, deprecated: true, syntax: :proto3, protoc_gen_elixir_version: "0.13.0"

  field :epoch, 1, type: :uint64, deprecated: false

  field :committees, 2,
    repeated: true,
    type: Ethereum.Eth.V1alpha1.BeaconCommittees.CommitteesEntry,
    map: true

  field :active_validator_count, 3, type: :uint64, json_name: "activeValidatorCount"
end

defmodule Ethereum.Eth.V1alpha1.ListValidatorBalancesRequest do
  @moduledoc false

  use Protobuf, deprecated: true, syntax: :proto3, protoc_gen_elixir_version: "0.13.0"

  oneof :query_filter, 0

  field :epoch, 1, type: :uint64, oneof: 0, deprecated: false
  field :genesis, 2, type: :bool, oneof: 0
  field :public_keys, 3, repeated: true, type: :bytes, json_name: "publicKeys", deprecated: false
  field :indices, 4, repeated: true, type: :uint64, deprecated: false
  field :page_size, 5, type: :int32, json_name: "pageSize"
  field :page_token, 6, type: :string, json_name: "pageToken"
end

defmodule Ethereum.Eth.V1alpha1.ValidatorBalances.Balance do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.13.0"

  field :public_key, 1, type: :bytes, json_name: "publicKey", deprecated: false
  field :index, 2, type: :uint64, deprecated: false
  field :balance, 3, type: :uint64
  field :status, 4, type: :string
end

defmodule Ethereum.Eth.V1alpha1.ValidatorBalances do
  @moduledoc false

  use Protobuf, deprecated: true, syntax: :proto3, protoc_gen_elixir_version: "0.13.0"

  field :epoch, 1, type: :uint64, deprecated: false
  field :balances, 2, repeated: true, type: Ethereum.Eth.V1alpha1.ValidatorBalances.Balance
  field :next_page_token, 3, type: :string, json_name: "nextPageToken"
  field :total_size, 4, type: :int32, json_name: "totalSize"
end

defmodule Ethereum.Eth.V1alpha1.ListValidatorsRequest do
  @moduledoc false

  use Protobuf, deprecated: true, syntax: :proto3, protoc_gen_elixir_version: "0.13.0"

  oneof :query_filter, 0

  field :epoch, 1, type: :uint64, oneof: 0, deprecated: false
  field :genesis, 2, type: :bool, oneof: 0
  field :active, 3, type: :bool
  field :page_size, 4, type: :int32, json_name: "pageSize"
  field :page_token, 5, type: :string, json_name: "pageToken"
  field :public_keys, 6, repeated: true, type: :bytes, json_name: "publicKeys"
  field :indices, 7, repeated: true, type: :uint64, deprecated: false
end

defmodule Ethereum.Eth.V1alpha1.GetValidatorRequest do
  @moduledoc false

  use Protobuf, deprecated: true, syntax: :proto3, protoc_gen_elixir_version: "0.13.0"

  oneof :query_filter, 0

  field :index, 1, type: :uint64, oneof: 0, deprecated: false
  field :public_key, 2, type: :bytes, json_name: "publicKey", oneof: 0, deprecated: false
end

defmodule Ethereum.Eth.V1alpha1.Validators.ValidatorContainer do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.13.0"

  field :index, 1, type: :uint64, deprecated: false
  field :validator, 2, type: Ethereum.Eth.V1alpha1.Validator
end

defmodule Ethereum.Eth.V1alpha1.Validators do
  @moduledoc false

  use Protobuf, deprecated: true, syntax: :proto3, protoc_gen_elixir_version: "0.13.0"

  field :epoch, 1, type: :uint64, deprecated: false

  field :validator_list, 2,
    repeated: true,
    type: Ethereum.Eth.V1alpha1.Validators.ValidatorContainer,
    json_name: "validatorList"

  field :next_page_token, 3, type: :string, json_name: "nextPageToken"
  field :total_size, 4, type: :int32, json_name: "totalSize"
end

defmodule Ethereum.Eth.V1alpha1.GetValidatorActiveSetChangesRequest do
  @moduledoc false

  use Protobuf, deprecated: true, syntax: :proto3, protoc_gen_elixir_version: "0.13.0"

  oneof :query_filter, 0

  field :epoch, 1, type: :uint64, oneof: 0, deprecated: false
  field :genesis, 2, type: :bool, oneof: 0
end

defmodule Ethereum.Eth.V1alpha1.ActiveSetChanges do
  @moduledoc false

  use Protobuf, deprecated: true, syntax: :proto3, protoc_gen_elixir_version: "0.13.0"

  field :epoch, 1, type: :uint64, deprecated: false

  field :activated_public_keys, 2,
    repeated: true,
    type: :bytes,
    json_name: "activatedPublicKeys",
    deprecated: false

  field :activated_indices, 3,
    repeated: true,
    type: :uint64,
    json_name: "activatedIndices",
    deprecated: false

  field :exited_public_keys, 4,
    repeated: true,
    type: :bytes,
    json_name: "exitedPublicKeys",
    deprecated: false

  field :exited_indices, 5,
    repeated: true,
    type: :uint64,
    json_name: "exitedIndices",
    deprecated: false

  field :slashed_public_keys, 6,
    repeated: true,
    type: :bytes,
    json_name: "slashedPublicKeys",
    deprecated: false

  field :slashed_indices, 7,
    repeated: true,
    type: :uint64,
    json_name: "slashedIndices",
    deprecated: false

  field :ejected_public_keys, 8,
    repeated: true,
    type: :bytes,
    json_name: "ejectedPublicKeys",
    deprecated: false

  field :ejected_indices, 9,
    repeated: true,
    type: :uint64,
    json_name: "ejectedIndices",
    deprecated: false
end

defmodule Ethereum.Eth.V1alpha1.ValidatorPerformanceRequest do
  @moduledoc false

  use Protobuf, deprecated: true, syntax: :proto3, protoc_gen_elixir_version: "0.13.0"

  field :public_keys, 1, repeated: true, type: :bytes, json_name: "publicKeys", deprecated: true
  field :indices, 2, repeated: true, type: :uint64, deprecated: false
end

defmodule Ethereum.Eth.V1alpha1.ValidatorPerformanceResponse do
  @moduledoc false

  use Protobuf, deprecated: true, syntax: :proto3, protoc_gen_elixir_version: "0.13.0"

  field :current_effective_balances, 1,
    repeated: true,
    type: :uint64,
    json_name: "currentEffectiveBalances"

  field :inclusion_slots, 2,
    repeated: true,
    type: :uint64,
    json_name: "inclusionSlots",
    deprecated: true

  field :inclusion_distances, 3,
    repeated: true,
    type: :uint64,
    json_name: "inclusionDistances",
    deprecated: true

  field :correctly_voted_source, 4, repeated: true, type: :bool, json_name: "correctlyVotedSource"
  field :correctly_voted_target, 5, repeated: true, type: :bool, json_name: "correctlyVotedTarget"
  field :correctly_voted_head, 6, repeated: true, type: :bool, json_name: "correctlyVotedHead"

  field :balances_before_epoch_transition, 7,
    repeated: true,
    type: :uint64,
    json_name: "balancesBeforeEpochTransition"

  field :balances_after_epoch_transition, 8,
    repeated: true,
    type: :uint64,
    json_name: "balancesAfterEpochTransition"

  field :missing_validators, 9, repeated: true, type: :bytes, json_name: "missingValidators"

  field :average_active_validator_balance, 10,
    type: :float,
    json_name: "averageActiveValidatorBalance"

  field :public_keys, 11, repeated: true, type: :bytes, json_name: "publicKeys", deprecated: false
  field :inactivity_scores, 12, repeated: true, type: :uint64, json_name: "inactivityScores"
end

defmodule Ethereum.Eth.V1alpha1.ValidatorQueue do
  @moduledoc false

  use Protobuf, deprecated: true, syntax: :proto3, protoc_gen_elixir_version: "0.13.0"

  field :churn_limit, 1, type: :uint64, json_name: "churnLimit"

  field :activation_public_keys, 2,
    repeated: true,
    type: :bytes,
    json_name: "activationPublicKeys",
    deprecated: true

  field :exit_public_keys, 3,
    repeated: true,
    type: :bytes,
    json_name: "exitPublicKeys",
    deprecated: true

  field :activation_validator_indices, 4,
    repeated: true,
    type: :uint64,
    json_name: "activationValidatorIndices",
    deprecated: false

  field :exit_validator_indices, 5,
    repeated: true,
    type: :uint64,
    json_name: "exitValidatorIndices",
    deprecated: false
end

defmodule Ethereum.Eth.V1alpha1.ListValidatorAssignmentsRequest do
  @moduledoc false

  use Protobuf, deprecated: true, syntax: :proto3, protoc_gen_elixir_version: "0.13.0"

  oneof :query_filter, 0

  field :epoch, 1, type: :uint64, oneof: 0, deprecated: false
  field :genesis, 2, type: :bool, oneof: 0
  field :public_keys, 3, repeated: true, type: :bytes, json_name: "publicKeys", deprecated: false
  field :indices, 4, repeated: true, type: :uint64, deprecated: false
  field :page_size, 5, type: :int32, json_name: "pageSize"
  field :page_token, 6, type: :string, json_name: "pageToken"
end

defmodule Ethereum.Eth.V1alpha1.ValidatorAssignments.CommitteeAssignment do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.13.0"

  field :beacon_committees, 1,
    repeated: true,
    type: :uint64,
    json_name: "beaconCommittees",
    deprecated: false

  field :committee_index, 2, type: :uint64, json_name: "committeeIndex", deprecated: false
  field :attester_slot, 3, type: :uint64, json_name: "attesterSlot", deprecated: false

  field :proposer_slots, 4,
    repeated: true,
    type: :uint64,
    json_name: "proposerSlots",
    deprecated: false

  field :public_key, 5, type: :bytes, json_name: "publicKey", deprecated: true
  field :validator_index, 6, type: :uint64, json_name: "validatorIndex", deprecated: false
end

defmodule Ethereum.Eth.V1alpha1.ValidatorAssignments do
  @moduledoc false

  use Protobuf, deprecated: true, syntax: :proto3, protoc_gen_elixir_version: "0.13.0"

  field :epoch, 1, type: :uint64, deprecated: false

  field :assignments, 2,
    repeated: true,
    type: Ethereum.Eth.V1alpha1.ValidatorAssignments.CommitteeAssignment

  field :next_page_token, 3, type: :string, json_name: "nextPageToken"
  field :total_size, 4, type: :int32, json_name: "totalSize"
end

defmodule Ethereum.Eth.V1alpha1.GetValidatorParticipationRequest do
  @moduledoc false

  use Protobuf, deprecated: true, syntax: :proto3, protoc_gen_elixir_version: "0.13.0"

  oneof :query_filter, 0

  field :epoch, 1, type: :uint64, oneof: 0, deprecated: false
  field :genesis, 2, type: :bool, oneof: 0
end

defmodule Ethereum.Eth.V1alpha1.ValidatorParticipationResponse do
  @moduledoc false

  use Protobuf, deprecated: true, syntax: :proto3, protoc_gen_elixir_version: "0.13.0"

  field :epoch, 1, type: :uint64, deprecated: false
  field :finalized, 2, type: :bool
  field :participation, 3, type: Ethereum.Eth.V1alpha1.ValidatorParticipation
end

defmodule Ethereum.Eth.V1alpha1.AttestationPoolRequest do
  @moduledoc false

  use Protobuf, deprecated: true, syntax: :proto3, protoc_gen_elixir_version: "0.13.0"

  field :page_size, 1, type: :int32, json_name: "pageSize"
  field :page_token, 2, type: :string, json_name: "pageToken"
end

defmodule Ethereum.Eth.V1alpha1.AttestationPoolResponse do
  @moduledoc false

  use Protobuf, deprecated: true, syntax: :proto3, protoc_gen_elixir_version: "0.13.0"

  field :attestations, 1, repeated: true, type: Ethereum.Eth.V1alpha1.Attestation
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :total_size, 3, type: :int32, json_name: "totalSize"
end

defmodule Ethereum.Eth.V1alpha1.AttestationPoolElectraResponse do
  @moduledoc false

  use Protobuf, deprecated: true, syntax: :proto3, protoc_gen_elixir_version: "0.13.0"

  field :attestations, 1, repeated: true, type: Ethereum.Eth.V1alpha1.AttestationElectra
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :total_size, 3, type: :int32, json_name: "totalSize"
end

defmodule Ethereum.Eth.V1alpha1.BeaconConfig.ConfigEntry do
  @moduledoc false

  use Protobuf, map: true, syntax: :proto3, protoc_gen_elixir_version: "0.13.0"

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Ethereum.Eth.V1alpha1.BeaconConfig do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.13.0"

  field :config, 1,
    repeated: true,
    type: Ethereum.Eth.V1alpha1.BeaconConfig.ConfigEntry,
    map: true
end

defmodule Ethereum.Eth.V1alpha1.SubmitSlashingResponse do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.13.0"

  field :slashed_indices, 1,
    repeated: true,
    type: :uint64,
    json_name: "slashedIndices",
    deprecated: false
end

defmodule Ethereum.Eth.V1alpha1.IndividualVotesRequest do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.13.0"

  field :epoch, 1, type: :uint64, deprecated: false
  field :public_keys, 2, repeated: true, type: :bytes, json_name: "publicKeys"
  field :indices, 3, repeated: true, type: :uint64, deprecated: false
end

defmodule Ethereum.Eth.V1alpha1.IndividualVotesRespond.IndividualVote do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.13.0"

  field :epoch, 1, type: :uint64, deprecated: false
  field :public_key, 2, type: :bytes, json_name: "publicKey"
  field :validator_index, 3, type: :uint64, json_name: "validatorIndex", deprecated: false
  field :is_slashed, 4, type: :bool, json_name: "isSlashed"

  field :is_withdrawable_in_current_epoch, 5,
    type: :bool,
    json_name: "isWithdrawableInCurrentEpoch"

  field :is_active_in_current_epoch, 6, type: :bool, json_name: "isActiveInCurrentEpoch"
  field :is_active_in_previous_epoch, 7, type: :bool, json_name: "isActiveInPreviousEpoch"
  field :is_current_epoch_attester, 8, type: :bool, json_name: "isCurrentEpochAttester"

  field :is_current_epoch_target_attester, 9,
    type: :bool,
    json_name: "isCurrentEpochTargetAttester"

  field :is_previous_epoch_attester, 10, type: :bool, json_name: "isPreviousEpochAttester"

  field :is_previous_epoch_target_attester, 11,
    type: :bool,
    json_name: "isPreviousEpochTargetAttester"

  field :is_previous_epoch_head_attester, 12,
    type: :bool,
    json_name: "isPreviousEpochHeadAttester"

  field :current_epoch_effective_balance_gwei, 13,
    type: :uint64,
    json_name: "currentEpochEffectiveBalanceGwei"

  field :inclusion_slot, 14, type: :uint64, json_name: "inclusionSlot", deprecated: true
  field :inclusion_distance, 15, type: :uint64, json_name: "inclusionDistance", deprecated: true
  field :inactivity_score, 16, type: :uint64, json_name: "inactivityScore"
end

defmodule Ethereum.Eth.V1alpha1.IndividualVotesRespond do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.13.0"

  field :individual_votes, 1,
    repeated: true,
    type: Ethereum.Eth.V1alpha1.IndividualVotesRespond.IndividualVote,
    json_name: "individualVotes"
end

defmodule Ethereum.Eth.V1alpha1.BeaconChain.Service do
  @moduledoc false

  use GRPC.Service, name: "ethereum.eth.v1alpha1.BeaconChain", protoc_gen_elixir_version: "0.13.0"

  rpc :ListAttestations,
      Ethereum.Eth.V1alpha1.ListAttestationsRequest,
      Ethereum.Eth.V1alpha1.ListAttestationsResponse

  rpc :ListAttestationsElectra,
      Ethereum.Eth.V1alpha1.ListAttestationsRequest,
      Ethereum.Eth.V1alpha1.ListAttestationsElectraResponse

  rpc :ListIndexedAttestations,
      Ethereum.Eth.V1alpha1.ListIndexedAttestationsRequest,
      Ethereum.Eth.V1alpha1.ListIndexedAttestationsResponse

  rpc :ListIndexedAttestationsElectra,
      Ethereum.Eth.V1alpha1.ListIndexedAttestationsRequest,
      Ethereum.Eth.V1alpha1.ListIndexedAttestationsElectraResponse

  rpc :AttestationPool,
      Ethereum.Eth.V1alpha1.AttestationPoolRequest,
      Ethereum.Eth.V1alpha1.AttestationPoolResponse

  rpc :AttestationPoolElectra,
      Ethereum.Eth.V1alpha1.AttestationPoolRequest,
      Ethereum.Eth.V1alpha1.AttestationPoolElectraResponse

  rpc :ListBeaconBlocks,
      Ethereum.Eth.V1alpha1.ListBlocksRequest,
      Ethereum.Eth.V1alpha1.ListBeaconBlocksResponse

  rpc :GetChainHead, Google.Protobuf.Empty, Ethereum.Eth.V1alpha1.ChainHead

  rpc :ListBeaconCommittees,
      Ethereum.Eth.V1alpha1.ListCommitteesRequest,
      Ethereum.Eth.V1alpha1.BeaconCommittees

  rpc :ListValidatorBalances,
      Ethereum.Eth.V1alpha1.ListValidatorBalancesRequest,
      Ethereum.Eth.V1alpha1.ValidatorBalances

  rpc :ListValidators,
      Ethereum.Eth.V1alpha1.ListValidatorsRequest,
      Ethereum.Eth.V1alpha1.Validators

  rpc :GetValidator, Ethereum.Eth.V1alpha1.GetValidatorRequest, Ethereum.Eth.V1alpha1.Validator

  rpc :GetValidatorActiveSetChanges,
      Ethereum.Eth.V1alpha1.GetValidatorActiveSetChangesRequest,
      Ethereum.Eth.V1alpha1.ActiveSetChanges

  rpc :GetValidatorQueue, Google.Protobuf.Empty, Ethereum.Eth.V1alpha1.ValidatorQueue

  rpc :GetValidatorPerformance,
      Ethereum.Eth.V1alpha1.ValidatorPerformanceRequest,
      Ethereum.Eth.V1alpha1.ValidatorPerformanceResponse

  rpc :ListValidatorAssignments,
      Ethereum.Eth.V1alpha1.ListValidatorAssignmentsRequest,
      Ethereum.Eth.V1alpha1.ValidatorAssignments

  rpc :GetValidatorParticipation,
      Ethereum.Eth.V1alpha1.GetValidatorParticipationRequest,
      Ethereum.Eth.V1alpha1.ValidatorParticipationResponse

  rpc :GetBeaconConfig, Google.Protobuf.Empty, Ethereum.Eth.V1alpha1.BeaconConfig

  rpc :SubmitAttesterSlashing,
      Ethereum.Eth.V1alpha1.AttesterSlashing,
      Ethereum.Eth.V1alpha1.SubmitSlashingResponse

  rpc :SubmitAttesterSlashingElectra,
      Ethereum.Eth.V1alpha1.AttesterSlashingElectra,
      Ethereum.Eth.V1alpha1.SubmitSlashingResponse

  rpc :SubmitProposerSlashing,
      Ethereum.Eth.V1alpha1.ProposerSlashing,
      Ethereum.Eth.V1alpha1.SubmitSlashingResponse

  rpc :GetIndividualVotes,
      Ethereum.Eth.V1alpha1.IndividualVotesRequest,
      Ethereum.Eth.V1alpha1.IndividualVotesRespond
end

defmodule Ethereum.Eth.V1alpha1.BeaconChain.Stub do
  @moduledoc false

  use GRPC.Stub, service: Ethereum.Eth.V1alpha1.BeaconChain.Service
end