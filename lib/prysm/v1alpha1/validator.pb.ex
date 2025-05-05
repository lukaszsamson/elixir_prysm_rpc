defmodule Ethereum.Eth.V1alpha1.ValidatorStatus do
  @moduledoc false

  use Protobuf, enum: true, syntax: :proto3, protoc_gen_elixir_version: "0.13.0"

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

  use Protobuf, deprecated: true, syntax: :proto3, protoc_gen_elixir_version: "0.13.0"

  field :root, 1, type: :bytes, deprecated: false
end

defmodule Ethereum.Eth.V1alpha1.SyncSubcommitteeIndexRequest do
  @moduledoc false

  use Protobuf, deprecated: true, syntax: :proto3, protoc_gen_elixir_version: "0.13.0"

  field :public_key, 1, type: :bytes, json_name: "publicKey", deprecated: false
  field :slot, 2, type: :uint64, deprecated: false
end

defmodule Ethereum.Eth.V1alpha1.SyncCommitteeContributionRequest do
  @moduledoc false

  use Protobuf, deprecated: true, syntax: :proto3, protoc_gen_elixir_version: "0.13.0"

  field :slot, 1, type: :uint64, deprecated: false
  field :public_key, 2, type: :bytes, json_name: "publicKey", deprecated: false
  field :subnet_id, 3, type: :uint64, json_name: "subnetId"
end

defmodule Ethereum.Eth.V1alpha1.SyncSubcommitteeIndexResponse do
  @moduledoc false

  use Protobuf, deprecated: true, syntax: :proto3, protoc_gen_elixir_version: "0.13.0"

  field :indices, 1, repeated: true, type: :uint64, deprecated: false
end

defmodule Ethereum.Eth.V1alpha1.StreamSlotsResponse do
  @moduledoc false

  use Protobuf, deprecated: true, syntax: :proto3, protoc_gen_elixir_version: "0.13.0"

  field :slot, 1, type: :uint64, deprecated: false
end

defmodule Ethereum.Eth.V1alpha1.StreamBlocksResponse do
  @moduledoc false

  use Protobuf, deprecated: true, syntax: :proto3, protoc_gen_elixir_version: "0.13.0"

  oneof :block, 0

  field :phase0_block, 1,
    type: Ethereum.Eth.V1alpha1.SignedBeaconBlock,
    json_name: "phase0Block",
    oneof: 0

  field :altair_block, 2,
    type: Ethereum.Eth.V1alpha1.SignedBeaconBlockAltair,
    json_name: "altairBlock",
    oneof: 0

  field :bellatrix_block, 3,
    type: Ethereum.Eth.V1alpha1.SignedBeaconBlockBellatrix,
    json_name: "bellatrixBlock",
    oneof: 0

  field :capella_block, 4,
    type: Ethereum.Eth.V1alpha1.SignedBeaconBlockCapella,
    json_name: "capellaBlock",
    oneof: 0

  field :deneb_block, 5,
    type: Ethereum.Eth.V1alpha1.SignedBeaconBlockDeneb,
    json_name: "denebBlock",
    oneof: 0

  field :electra_block, 6,
    type: Ethereum.Eth.V1alpha1.SignedBeaconBlockElectra,
    json_name: "electraBlock",
    oneof: 0

  field :fulu_block, 7,
    type: Ethereum.Eth.V1alpha1.SignedBeaconBlockFulu,
    json_name: "fuluBlock",
    oneof: 0
end

defmodule Ethereum.Eth.V1alpha1.DomainRequest do
  @moduledoc false

  use Protobuf, deprecated: true, syntax: :proto3, protoc_gen_elixir_version: "0.13.0"

  field :epoch, 1, type: :uint64, deprecated: false
  field :domain, 2, type: :bytes
end

defmodule Ethereum.Eth.V1alpha1.DomainResponse do
  @moduledoc false

  use Protobuf, deprecated: true, syntax: :proto3, protoc_gen_elixir_version: "0.13.0"

  field :signature_domain, 1, type: :bytes, json_name: "signatureDomain"
end

defmodule Ethereum.Eth.V1alpha1.ValidatorActivationRequest do
  @moduledoc false

  use Protobuf, deprecated: true, syntax: :proto3, protoc_gen_elixir_version: "0.13.0"

  field :public_keys, 1, repeated: true, type: :bytes, json_name: "publicKeys", deprecated: false
end

defmodule Ethereum.Eth.V1alpha1.ValidatorActivationResponse.Status do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.13.0"

  field :public_key, 1, type: :bytes, json_name: "publicKey"
  field :status, 2, type: Ethereum.Eth.V1alpha1.ValidatorStatusResponse
  field :index, 3, type: :uint64, deprecated: false
end

defmodule Ethereum.Eth.V1alpha1.ValidatorActivationResponse do
  @moduledoc false

  use Protobuf, deprecated: true, syntax: :proto3, protoc_gen_elixir_version: "0.13.0"

  field :statuses, 1,
    repeated: true,
    type: Ethereum.Eth.V1alpha1.ValidatorActivationResponse.Status
end

defmodule Ethereum.Eth.V1alpha1.ChainStartResponse do
  @moduledoc false

  use Protobuf, deprecated: true, syntax: :proto3, protoc_gen_elixir_version: "0.13.0"

  field :started, 1, type: :bool
  field :genesis_time, 2, type: :uint64, json_name: "genesisTime"

  field :genesis_validators_root, 3,
    type: :bytes,
    json_name: "genesisValidatorsRoot",
    deprecated: false
end

defmodule Ethereum.Eth.V1alpha1.SyncedResponse do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.13.0"

  field :synced, 1, type: :bool
  field :genesis_time, 2, type: :uint64, json_name: "genesisTime"
end

defmodule Ethereum.Eth.V1alpha1.ValidatorIndexRequest do
  @moduledoc false

  use Protobuf, deprecated: true, syntax: :proto3, protoc_gen_elixir_version: "0.13.0"

  field :public_key, 1, type: :bytes, json_name: "publicKey", deprecated: false
end

defmodule Ethereum.Eth.V1alpha1.ValidatorIndexResponse do
  @moduledoc false

  use Protobuf, deprecated: true, syntax: :proto3, protoc_gen_elixir_version: "0.13.0"

  field :index, 1, type: :uint64, deprecated: false
end

defmodule Ethereum.Eth.V1alpha1.ValidatorStatusRequest do
  @moduledoc false

  use Protobuf, deprecated: true, syntax: :proto3, protoc_gen_elixir_version: "0.13.0"

  field :public_key, 1, type: :bytes, json_name: "publicKey", deprecated: false
end

defmodule Ethereum.Eth.V1alpha1.ValidatorStatusResponse do
  @moduledoc false

  use Protobuf, deprecated: true, syntax: :proto3, protoc_gen_elixir_version: "0.13.0"

  field :status, 1, type: Ethereum.Eth.V1alpha1.ValidatorStatus, enum: true
  field :eth1_deposit_block_number, 2, type: :uint64, json_name: "eth1DepositBlockNumber"

  field :deposit_inclusion_slot, 3,
    type: :uint64,
    json_name: "depositInclusionSlot",
    deprecated: false

  field :activation_epoch, 4, type: :uint64, json_name: "activationEpoch", deprecated: false
  field :position_in_activation_queue, 5, type: :uint64, json_name: "positionInActivationQueue"
end

defmodule Ethereum.Eth.V1alpha1.MultipleValidatorStatusRequest do
  @moduledoc false

  use Protobuf, deprecated: true, syntax: :proto3, protoc_gen_elixir_version: "0.13.0"

  field :public_keys, 1, repeated: true, type: :bytes, json_name: "publicKeys", deprecated: false
  field :indices, 2, repeated: true, type: :int64
end

defmodule Ethereum.Eth.V1alpha1.MultipleValidatorStatusResponse do
  @moduledoc false

  use Protobuf, deprecated: true, syntax: :proto3, protoc_gen_elixir_version: "0.13.0"

  field :public_keys, 1, repeated: true, type: :bytes, json_name: "publicKeys", deprecated: false
  field :statuses, 2, repeated: true, type: Ethereum.Eth.V1alpha1.ValidatorStatusResponse
  field :indices, 3, repeated: true, type: :uint64, deprecated: false
end

defmodule Ethereum.Eth.V1alpha1.DutiesRequest do
  @moduledoc false

  use Protobuf, deprecated: true, syntax: :proto3, protoc_gen_elixir_version: "0.13.0"

  field :epoch, 1, type: :uint64, deprecated: false
  field :public_keys, 2, repeated: true, type: :bytes, json_name: "publicKeys", deprecated: false
end

defmodule Ethereum.Eth.V1alpha1.DutiesResponse.Duty do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.13.0"

  field :committee, 1, repeated: true, type: :uint64, deprecated: false
  field :committee_index, 2, type: :uint64, json_name: "committeeIndex", deprecated: false
  field :attester_slot, 3, type: :uint64, json_name: "attesterSlot", deprecated: false

  field :proposer_slots, 4,
    repeated: true,
    type: :uint64,
    json_name: "proposerSlots",
    deprecated: false

  field :public_key, 5, type: :bytes, json_name: "publicKey", deprecated: false
  field :status, 6, type: Ethereum.Eth.V1alpha1.ValidatorStatus, enum: true
  field :validator_index, 7, type: :uint64, json_name: "validatorIndex", deprecated: false
  field :is_sync_committee, 8, type: :bool, json_name: "isSyncCommittee"
  field :committees_at_slot, 9, type: :uint64, json_name: "committeesAtSlot"
end

defmodule Ethereum.Eth.V1alpha1.DutiesResponse do
  @moduledoc false

  use Protobuf, deprecated: true, syntax: :proto3, protoc_gen_elixir_version: "0.13.0"

  field :current_epoch_duties, 2,
    repeated: true,
    type: Ethereum.Eth.V1alpha1.DutiesResponse.Duty,
    json_name: "currentEpochDuties"

  field :next_epoch_duties, 3,
    repeated: true,
    type: Ethereum.Eth.V1alpha1.DutiesResponse.Duty,
    json_name: "nextEpochDuties"
end

defmodule Ethereum.Eth.V1alpha1.BlockRequest do
  @moduledoc false

  use Protobuf, deprecated: true, syntax: :proto3, protoc_gen_elixir_version: "0.13.0"

  field :slot, 1, type: :uint64, deprecated: false
  field :randao_reveal, 2, type: :bytes, json_name: "randaoReveal", deprecated: false
  field :graffiti, 3, type: :bytes, deprecated: false
  field :skip_mev_boost, 4, type: :bool, json_name: "skipMevBoost"

  field :builder_boost_factor, 5,
    type: Google.Protobuf.UInt64Value,
    json_name: "builderBoostFactor"
end

defmodule Ethereum.Eth.V1alpha1.ProposeResponse do
  @moduledoc false

  use Protobuf, deprecated: true, syntax: :proto3, protoc_gen_elixir_version: "0.13.0"

  field :block_root, 1, type: :bytes, json_name: "blockRoot", deprecated: false
end

defmodule Ethereum.Eth.V1alpha1.ProposeExitResponse do
  @moduledoc false

  use Protobuf, deprecated: true, syntax: :proto3, protoc_gen_elixir_version: "0.13.0"

  field :exit_root, 1, type: :bytes, json_name: "exitRoot", deprecated: false
end

defmodule Ethereum.Eth.V1alpha1.AttestationDataRequest do
  @moduledoc false

  use Protobuf, deprecated: true, syntax: :proto3, protoc_gen_elixir_version: "0.13.0"

  field :slot, 1, type: :uint64, deprecated: false
  field :committee_index, 2, type: :uint64, json_name: "committeeIndex", deprecated: false
end

defmodule Ethereum.Eth.V1alpha1.AttestResponse do
  @moduledoc false

  use Protobuf, deprecated: true, syntax: :proto3, protoc_gen_elixir_version: "0.13.0"

  field :attestation_data_root, 1,
    type: :bytes,
    json_name: "attestationDataRoot",
    deprecated: false
end

defmodule Ethereum.Eth.V1alpha1.AggregateSelectionRequest do
  @moduledoc false

  use Protobuf, deprecated: true, syntax: :proto3, protoc_gen_elixir_version: "0.13.0"

  field :slot, 1, type: :uint64, deprecated: false
  field :committee_index, 2, type: :uint64, json_name: "committeeIndex", deprecated: false
  field :public_key, 3, type: :bytes, json_name: "publicKey", deprecated: false
  field :slot_signature, 4, type: :bytes, json_name: "slotSignature", deprecated: false
end

defmodule Ethereum.Eth.V1alpha1.AggregateSelectionResponse do
  @moduledoc false

  use Protobuf, deprecated: true, syntax: :proto3, protoc_gen_elixir_version: "0.13.0"

  field :aggregate_and_proof, 1,
    type: Ethereum.Eth.V1alpha1.AggregateAttestationAndProof,
    json_name: "aggregateAndProof"
end

defmodule Ethereum.Eth.V1alpha1.AggregateSelectionElectraResponse do
  @moduledoc false

  use Protobuf, deprecated: true, syntax: :proto3, protoc_gen_elixir_version: "0.13.0"

  field :aggregate_and_proof, 1,
    type: Ethereum.Eth.V1alpha1.AggregateAttestationAndProofElectra,
    json_name: "aggregateAndProof"
end

defmodule Ethereum.Eth.V1alpha1.SignedAggregateSubmitRequest do
  @moduledoc false

  use Protobuf, deprecated: true, syntax: :proto3, protoc_gen_elixir_version: "0.13.0"

  field :signed_aggregate_and_proof, 1,
    type: Ethereum.Eth.V1alpha1.SignedAggregateAttestationAndProof,
    json_name: "signedAggregateAndProof"
end

defmodule Ethereum.Eth.V1alpha1.SignedAggregateSubmitElectraRequest do
  @moduledoc false

  use Protobuf, deprecated: true, syntax: :proto3, protoc_gen_elixir_version: "0.13.0"

  field :signed_aggregate_and_proof, 1,
    type: Ethereum.Eth.V1alpha1.SignedAggregateAttestationAndProofElectra,
    json_name: "signedAggregateAndProof"
end

defmodule Ethereum.Eth.V1alpha1.SignedAggregateSubmitResponse do
  @moduledoc false

  use Protobuf, deprecated: true, syntax: :proto3, protoc_gen_elixir_version: "0.13.0"

  field :attestation_data_root, 1,
    type: :bytes,
    json_name: "attestationDataRoot",
    deprecated: false
end

defmodule Ethereum.Eth.V1alpha1.CommitteeSubnetsSubscribeRequest do
  @moduledoc false

  use Protobuf, deprecated: true, syntax: :proto3, protoc_gen_elixir_version: "0.13.0"

  field :slots, 1, repeated: true, type: :uint64, deprecated: false

  field :committee_ids, 2,
    repeated: true,
    type: :uint64,
    json_name: "committeeIds",
    deprecated: false

  field :is_aggregator, 3, repeated: true, type: :bool, json_name: "isAggregator"
end

defmodule Ethereum.Eth.V1alpha1.Validator do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.13.0"

  field :public_key, 1, type: :bytes, json_name: "publicKey", deprecated: false

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

defmodule Ethereum.Eth.V1alpha1.ValidatorParticipation do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.13.0"

  field :global_participation_rate, 1,
    type: :float,
    json_name: "globalParticipationRate",
    deprecated: true

  field :voted_ether, 2, type: :uint64, json_name: "votedEther", deprecated: true
  field :eligible_ether, 3, type: :uint64, json_name: "eligibleEther", deprecated: true
  field :current_epoch_active_gwei, 4, type: :uint64, json_name: "currentEpochActiveGwei"
  field :current_epoch_attesting_gwei, 5, type: :uint64, json_name: "currentEpochAttestingGwei"

  field :current_epoch_target_attesting_gwei, 6,
    type: :uint64,
    json_name: "currentEpochTargetAttestingGwei"

  field :previous_epoch_active_gwei, 7, type: :uint64, json_name: "previousEpochActiveGwei"
  field :previous_epoch_attesting_gwei, 8, type: :uint64, json_name: "previousEpochAttestingGwei"

  field :previous_epoch_target_attesting_gwei, 9,
    type: :uint64,
    json_name: "previousEpochTargetAttestingGwei"

  field :previous_epoch_head_attesting_gwei, 10,
    type: :uint64,
    json_name: "previousEpochHeadAttestingGwei"
end

defmodule Ethereum.Eth.V1alpha1.ValidatorIdentity do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.13.0"

  field :index, 1, type: :uint64, deprecated: false
  field :pubkey, 2, type: :bytes, deprecated: false
  field :activation_epoch, 3, type: :uint64, json_name: "activationEpoch", deprecated: false
end

defmodule Ethereum.Eth.V1alpha1.DoppelGangerRequest.ValidatorRequest do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.13.0"

  field :public_key, 1, type: :bytes, json_name: "publicKey", deprecated: false
  field :epoch, 3, type: :uint64, deprecated: false
  field :signed_root, 2, type: :bytes, json_name: "signedRoot", deprecated: false
end

defmodule Ethereum.Eth.V1alpha1.DoppelGangerRequest do
  @moduledoc false

  use Protobuf, deprecated: true, syntax: :proto3, protoc_gen_elixir_version: "0.13.0"

  field :validator_requests, 1,
    repeated: true,
    type: Ethereum.Eth.V1alpha1.DoppelGangerRequest.ValidatorRequest,
    json_name: "validatorRequests"
end

defmodule Ethereum.Eth.V1alpha1.DoppelGangerResponse.ValidatorResponse do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.13.0"

  field :public_key, 1, type: :bytes, json_name: "publicKey", deprecated: false
  field :duplicate_exists, 2, type: :bool, json_name: "duplicateExists"
end

defmodule Ethereum.Eth.V1alpha1.DoppelGangerResponse do
  @moduledoc false

  use Protobuf, deprecated: true, syntax: :proto3, protoc_gen_elixir_version: "0.13.0"

  field :responses, 1,
    repeated: true,
    type: Ethereum.Eth.V1alpha1.DoppelGangerResponse.ValidatorResponse
end

defmodule Ethereum.Eth.V1alpha1.StreamSlotsRequest do
  @moduledoc false

  use Protobuf, deprecated: true, syntax: :proto3, protoc_gen_elixir_version: "0.13.0"

  field :verified_only, 1, type: :bool, json_name: "verifiedOnly"
end

defmodule Ethereum.Eth.V1alpha1.StreamBlocksRequest do
  @moduledoc false

  use Protobuf, deprecated: true, syntax: :proto3, protoc_gen_elixir_version: "0.13.0"

  field :verified_only, 1, type: :bool, json_name: "verifiedOnly"
end

defmodule Ethereum.Eth.V1alpha1.PrepareBeaconProposerRequest.FeeRecipientContainer do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.13.0"

  field :fee_recipient, 1, type: :bytes, json_name: "feeRecipient", deprecated: false
  field :validator_index, 2, type: :uint64, json_name: "validatorIndex", deprecated: false
end

defmodule Ethereum.Eth.V1alpha1.PrepareBeaconProposerRequest do
  @moduledoc false

  use Protobuf, deprecated: true, syntax: :proto3, protoc_gen_elixir_version: "0.13.0"

  field :recipients, 1,
    repeated: true,
    type: Ethereum.Eth.V1alpha1.PrepareBeaconProposerRequest.FeeRecipientContainer
end

defmodule Ethereum.Eth.V1alpha1.FeeRecipientByPubKeyRequest do
  @moduledoc false

  use Protobuf, deprecated: true, syntax: :proto3, protoc_gen_elixir_version: "0.13.0"

  field :public_key, 1, type: :bytes, json_name: "publicKey", deprecated: false
end

defmodule Ethereum.Eth.V1alpha1.FeeRecipientByPubKeyResponse do
  @moduledoc false

  use Protobuf, deprecated: true, syntax: :proto3, protoc_gen_elixir_version: "0.13.0"

  field :fee_recipient, 1, type: :bytes, json_name: "feeRecipient", deprecated: false
end

defmodule Ethereum.Eth.V1alpha1.AssignValidatorToSubnetRequest do
  @moduledoc false

  use Protobuf, deprecated: true, syntax: :proto3, protoc_gen_elixir_version: "0.13.0"

  field :public_key, 1, type: :bytes, json_name: "publicKey", deprecated: false
  field :status, 2, type: Ethereum.Eth.V1alpha1.ValidatorStatus, enum: true
end

defmodule Ethereum.Eth.V1alpha1.AggregatedSigAndAggregationBitsRequest do
  @moduledoc false

  use Protobuf, deprecated: true, syntax: :proto3, protoc_gen_elixir_version: "0.13.0"

  field :msgs, 1, repeated: true, type: Ethereum.Eth.V1alpha1.SyncCommitteeMessage
  field :slot, 2, type: :uint64, deprecated: false
  field :subnet_id, 3, type: :uint64, json_name: "subnetId"
  field :block_root, 4, type: :bytes, json_name: "blockRoot", deprecated: false
end

defmodule Ethereum.Eth.V1alpha1.AggregatedSigAndAggregationBitsResponse do
  @moduledoc false

  use Protobuf, deprecated: true, syntax: :proto3, protoc_gen_elixir_version: "0.13.0"

  field :aggregated_sig, 1, type: :bytes, json_name: "aggregatedSig"
  field :bits, 2, type: :bytes
end

defmodule Ethereum.Eth.V1alpha1.BeaconNodeValidator.Service do
  @moduledoc false

  use GRPC.Service,
    name: "ethereum.eth.v1alpha1.BeaconNodeValidator",
    protoc_gen_elixir_version: "0.13.0"

  rpc :GetDuties, Ethereum.Eth.V1alpha1.DutiesRequest, Ethereum.Eth.V1alpha1.DutiesResponse

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

  rpc :GetBeaconBlock,
      Ethereum.Eth.V1alpha1.BlockRequest,
      Ethereum.Eth.V1alpha1.GenericBeaconBlock

  rpc :ProposeBeaconBlock,
      Ethereum.Eth.V1alpha1.GenericSignedBeaconBlock,
      Ethereum.Eth.V1alpha1.ProposeResponse

  rpc :PrepareBeaconProposer,
      Ethereum.Eth.V1alpha1.PrepareBeaconProposerRequest,
      Google.Protobuf.Empty

  rpc :GetFeeRecipientByPubKey,
      Ethereum.Eth.V1alpha1.FeeRecipientByPubKeyRequest,
      Ethereum.Eth.V1alpha1.FeeRecipientByPubKeyResponse

  rpc :GetAttestationData,
      Ethereum.Eth.V1alpha1.AttestationDataRequest,
      Ethereum.Eth.V1alpha1.AttestationData

  rpc :ProposeAttestation, Ethereum.Eth.V1alpha1.Attestation, Ethereum.Eth.V1alpha1.AttestResponse

  rpc :ProposeAttestationElectra,
      Ethereum.Eth.V1alpha1.SingleAttestation,
      Ethereum.Eth.V1alpha1.AttestResponse

  rpc :SubmitAggregateSelectionProof,
      Ethereum.Eth.V1alpha1.AggregateSelectionRequest,
      Ethereum.Eth.V1alpha1.AggregateSelectionResponse

  rpc :SubmitAggregateSelectionProofElectra,
      Ethereum.Eth.V1alpha1.AggregateSelectionRequest,
      Ethereum.Eth.V1alpha1.AggregateSelectionElectraResponse

  rpc :SubmitSignedAggregateSelectionProof,
      Ethereum.Eth.V1alpha1.SignedAggregateSubmitRequest,
      Ethereum.Eth.V1alpha1.SignedAggregateSubmitResponse

  rpc :SubmitSignedAggregateSelectionProofElectra,
      Ethereum.Eth.V1alpha1.SignedAggregateSubmitElectraRequest,
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

  rpc :StreamSlots,
      Ethereum.Eth.V1alpha1.StreamSlotsRequest,
      stream(Ethereum.Eth.V1alpha1.StreamSlotsResponse)

  rpc :StreamBlocksAltair,
      Ethereum.Eth.V1alpha1.StreamBlocksRequest,
      stream(Ethereum.Eth.V1alpha1.StreamBlocksResponse)

  rpc :SubmitValidatorRegistrations,
      Ethereum.Eth.V1alpha1.SignedValidatorRegistrationsV1,
      Google.Protobuf.Empty

  rpc :AssignValidatorToSubnet,
      Ethereum.Eth.V1alpha1.AssignValidatorToSubnetRequest,
      Google.Protobuf.Empty

  rpc :AggregatedSigAndAggregationBits,
      Ethereum.Eth.V1alpha1.AggregatedSigAndAggregationBitsRequest,
      Ethereum.Eth.V1alpha1.AggregatedSigAndAggregationBitsResponse
end

defmodule Ethereum.Eth.V1alpha1.BeaconNodeValidator.Stub do
  @moduledoc false

  use GRPC.Stub, service: Ethereum.Eth.V1alpha1.BeaconNodeValidator.Service
end