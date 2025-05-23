defmodule Ethereum.Eth.V1alpha1.GenericSignedBeaconBlock do
  @moduledoc false

  use Protobuf, deprecated: true, syntax: :proto3, protoc_gen_elixir_version: "0.13.0"

  oneof :block, 0

  field :phase0, 1, type: Ethereum.Eth.V1alpha1.SignedBeaconBlock, oneof: 0
  field :altair, 2, type: Ethereum.Eth.V1alpha1.SignedBeaconBlockAltair, oneof: 0
  field :bellatrix, 3, type: Ethereum.Eth.V1alpha1.SignedBeaconBlockBellatrix, oneof: 0

  field :blinded_bellatrix, 4,
    type: Ethereum.Eth.V1alpha1.SignedBlindedBeaconBlockBellatrix,
    json_name: "blindedBellatrix",
    oneof: 0

  field :capella, 5, type: Ethereum.Eth.V1alpha1.SignedBeaconBlockCapella, oneof: 0

  field :blinded_capella, 6,
    type: Ethereum.Eth.V1alpha1.SignedBlindedBeaconBlockCapella,
    json_name: "blindedCapella",
    oneof: 0

  field :deneb, 7, type: Ethereum.Eth.V1alpha1.SignedBeaconBlockContentsDeneb, oneof: 0

  field :blinded_deneb, 8,
    type: Ethereum.Eth.V1alpha1.SignedBlindedBeaconBlockDeneb,
    json_name: "blindedDeneb",
    oneof: 0

  field :electra, 9, type: Ethereum.Eth.V1alpha1.SignedBeaconBlockContentsElectra, oneof: 0

  field :blinded_electra, 10,
    type: Ethereum.Eth.V1alpha1.SignedBlindedBeaconBlockElectra,
    json_name: "blindedElectra",
    oneof: 0

  field :fulu, 11, type: Ethereum.Eth.V1alpha1.SignedBeaconBlockContentsFulu, oneof: 0

  field :blinded_fulu, 12,
    type: Ethereum.Eth.V1alpha1.SignedBlindedBeaconBlockFulu,
    json_name: "blindedFulu",
    oneof: 0

  field :is_blinded, 100, type: :bool, json_name: "isBlinded"
end

defmodule Ethereum.Eth.V1alpha1.GenericBeaconBlock do
  @moduledoc false

  use Protobuf, deprecated: true, syntax: :proto3, protoc_gen_elixir_version: "0.13.0"

  oneof :block, 0

  field :phase0, 1, type: Ethereum.Eth.V1alpha1.BeaconBlock, oneof: 0
  field :altair, 2, type: Ethereum.Eth.V1alpha1.BeaconBlockAltair, oneof: 0
  field :bellatrix, 3, type: Ethereum.Eth.V1alpha1.BeaconBlockBellatrix, oneof: 0

  field :blinded_bellatrix, 4,
    type: Ethereum.Eth.V1alpha1.BlindedBeaconBlockBellatrix,
    json_name: "blindedBellatrix",
    oneof: 0

  field :capella, 5, type: Ethereum.Eth.V1alpha1.BeaconBlockCapella, oneof: 0

  field :blinded_capella, 6,
    type: Ethereum.Eth.V1alpha1.BlindedBeaconBlockCapella,
    json_name: "blindedCapella",
    oneof: 0

  field :deneb, 7, type: Ethereum.Eth.V1alpha1.BeaconBlockContentsDeneb, oneof: 0

  field :blinded_deneb, 8,
    type: Ethereum.Eth.V1alpha1.BlindedBeaconBlockDeneb,
    json_name: "blindedDeneb",
    oneof: 0

  field :electra, 9, type: Ethereum.Eth.V1alpha1.BeaconBlockContentsElectra, oneof: 0

  field :blinded_electra, 10,
    type: Ethereum.Eth.V1alpha1.BlindedBeaconBlockElectra,
    json_name: "blindedElectra",
    oneof: 0

  field :fulu, 11, type: Ethereum.Eth.V1alpha1.BeaconBlockContentsFulu, oneof: 0

  field :blinded_fulu, 12,
    type: Ethereum.Eth.V1alpha1.BlindedBeaconBlockFulu,
    json_name: "blindedFulu",
    oneof: 0

  field :is_blinded, 100, type: :bool, json_name: "isBlinded"
  field :payload_value, 101, type: :string, json_name: "payloadValue"
end

defmodule Ethereum.Eth.V1alpha1.SignedBeaconBlock do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.13.0"

  field :block, 1, type: Ethereum.Eth.V1alpha1.BeaconBlock
  field :signature, 2, type: :bytes, deprecated: false
end

defmodule Ethereum.Eth.V1alpha1.BeaconBlock do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.13.0"

  field :slot, 1, type: :uint64, deprecated: false
  field :proposer_index, 2, type: :uint64, json_name: "proposerIndex", deprecated: false
  field :parent_root, 3, type: :bytes, json_name: "parentRoot", deprecated: false
  field :state_root, 4, type: :bytes, json_name: "stateRoot", deprecated: false
  field :body, 5, type: Ethereum.Eth.V1alpha1.BeaconBlockBody
end

defmodule Ethereum.Eth.V1alpha1.BeaconBlockBody do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.13.0"

  field :randao_reveal, 1, type: :bytes, json_name: "randaoReveal", deprecated: false
  field :eth1_data, 2, type: Ethereum.Eth.V1alpha1.Eth1Data, json_name: "eth1Data"
  field :graffiti, 3, type: :bytes, deprecated: false

  field :proposer_slashings, 4,
    repeated: true,
    type: Ethereum.Eth.V1alpha1.ProposerSlashing,
    json_name: "proposerSlashings",
    deprecated: false

  field :attester_slashings, 5,
    repeated: true,
    type: Ethereum.Eth.V1alpha1.AttesterSlashing,
    json_name: "attesterSlashings",
    deprecated: false

  field :attestations, 6,
    repeated: true,
    type: Ethereum.Eth.V1alpha1.Attestation,
    deprecated: false

  field :deposits, 7, repeated: true, type: Ethereum.Eth.V1alpha1.Deposit, deprecated: false

  field :voluntary_exits, 8,
    repeated: true,
    type: Ethereum.Eth.V1alpha1.SignedVoluntaryExit,
    json_name: "voluntaryExits",
    deprecated: false
end

defmodule Ethereum.Eth.V1alpha1.SignedBeaconBlockHeader do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.13.0"

  field :header, 1, type: Ethereum.Eth.V1alpha1.BeaconBlockHeader
  field :signature, 2, type: :bytes, deprecated: false
end

defmodule Ethereum.Eth.V1alpha1.BeaconBlockHeader do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.13.0"

  field :slot, 1, type: :uint64, deprecated: false
  field :proposer_index, 2, type: :uint64, json_name: "proposerIndex", deprecated: false
  field :parent_root, 3, type: :bytes, json_name: "parentRoot", deprecated: false
  field :state_root, 4, type: :bytes, json_name: "stateRoot", deprecated: false
  field :body_root, 5, type: :bytes, json_name: "bodyRoot", deprecated: false
end

defmodule Ethereum.Eth.V1alpha1.Eth1Data do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.13.0"

  field :deposit_root, 1, type: :bytes, json_name: "depositRoot", deprecated: false
  field :deposit_count, 2, type: :uint64, json_name: "depositCount"
  field :block_hash, 3, type: :bytes, json_name: "blockHash", deprecated: false
end

defmodule Ethereum.Eth.V1alpha1.ProposerSlashing do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.13.0"

  field :header_1, 2, type: Ethereum.Eth.V1alpha1.SignedBeaconBlockHeader, json_name: "header1"
  field :header_2, 3, type: Ethereum.Eth.V1alpha1.SignedBeaconBlockHeader, json_name: "header2"
end

defmodule Ethereum.Eth.V1alpha1.AttesterSlashing do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.13.0"

  field :attestation_1, 1,
    type: Ethereum.Eth.V1alpha1.IndexedAttestation,
    json_name: "attestation1"

  field :attestation_2, 2,
    type: Ethereum.Eth.V1alpha1.IndexedAttestation,
    json_name: "attestation2"
end

defmodule Ethereum.Eth.V1alpha1.IndexedAttestation do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.13.0"

  field :attesting_indices, 1,
    repeated: true,
    type: :uint64,
    json_name: "attestingIndices",
    deprecated: false

  field :data, 2, type: Ethereum.Eth.V1alpha1.AttestationData
  field :signature, 3, type: :bytes, deprecated: false
end

defmodule Ethereum.Eth.V1alpha1.Deposit.Data do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.13.0"

  field :public_key, 1, type: :bytes, json_name: "publicKey", deprecated: false

  field :withdrawal_credentials, 2,
    type: :bytes,
    json_name: "withdrawalCredentials",
    deprecated: false

  field :amount, 3, type: :uint64
  field :signature, 4, type: :bytes, deprecated: false
end

defmodule Ethereum.Eth.V1alpha1.Deposit do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.13.0"

  field :proof, 1, repeated: true, type: :bytes, deprecated: false
  field :data, 2, type: Ethereum.Eth.V1alpha1.Deposit.Data
end

defmodule Ethereum.Eth.V1alpha1.SignedVoluntaryExit do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.13.0"

  field :exit, 1, type: Ethereum.Eth.V1alpha1.VoluntaryExit
  field :signature, 2, type: :bytes, deprecated: false
end

defmodule Ethereum.Eth.V1alpha1.VoluntaryExit do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.13.0"

  field :epoch, 1, type: :uint64, deprecated: false
  field :validator_index, 2, type: :uint64, json_name: "validatorIndex", deprecated: false
end

defmodule Ethereum.Eth.V1alpha1.SignedValidatorRegistrationsV1 do
  @moduledoc false

  use Protobuf, deprecated: true, syntax: :proto3, protoc_gen_elixir_version: "0.13.0"

  field :messages, 1, repeated: true, type: Ethereum.Eth.V1alpha1.SignedValidatorRegistrationV1
end

defmodule Ethereum.Eth.V1alpha1.SignedValidatorRegistrationV1 do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.13.0"

  field :message, 1, type: Ethereum.Eth.V1alpha1.ValidatorRegistrationV1
  field :signature, 2, type: :bytes, deprecated: false
end

defmodule Ethereum.Eth.V1alpha1.ValidatorRegistrationV1 do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.13.0"

  field :fee_recipient, 1, type: :bytes, json_name: "feeRecipient", deprecated: false
  field :gas_limit, 2, type: :uint64, json_name: "gasLimit"
  field :timestamp, 3, type: :uint64
  field :pubkey, 4, type: :bytes, deprecated: false
end

defmodule Ethereum.Eth.V1alpha1.SignedBuilderBid do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.13.0"

  field :message, 1, type: Ethereum.Eth.V1alpha1.BuilderBid
  field :signature, 2, type: :bytes, deprecated: false
end

defmodule Ethereum.Eth.V1alpha1.BuilderBid do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.13.0"

  field :header, 1, type: Ethereum.Engine.V1.ExecutionPayloadHeader
  field :value, 2, type: :bytes, deprecated: false
  field :pubkey, 3, type: :bytes, deprecated: false
end

defmodule Ethereum.Eth.V1alpha1.SignedBeaconBlockAltair do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.13.0"

  field :block, 1, type: Ethereum.Eth.V1alpha1.BeaconBlockAltair
  field :signature, 2, type: :bytes, deprecated: false
end

defmodule Ethereum.Eth.V1alpha1.BeaconBlockAltair do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.13.0"

  field :slot, 1, type: :uint64, deprecated: false
  field :proposer_index, 2, type: :uint64, json_name: "proposerIndex", deprecated: false
  field :parent_root, 3, type: :bytes, json_name: "parentRoot", deprecated: false
  field :state_root, 4, type: :bytes, json_name: "stateRoot", deprecated: false
  field :body, 5, type: Ethereum.Eth.V1alpha1.BeaconBlockBodyAltair
end

defmodule Ethereum.Eth.V1alpha1.BeaconBlockBodyAltair do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.13.0"

  field :randao_reveal, 1, type: :bytes, json_name: "randaoReveal", deprecated: false
  field :eth1_data, 2, type: Ethereum.Eth.V1alpha1.Eth1Data, json_name: "eth1Data"
  field :graffiti, 3, type: :bytes, deprecated: false

  field :proposer_slashings, 4,
    repeated: true,
    type: Ethereum.Eth.V1alpha1.ProposerSlashing,
    json_name: "proposerSlashings",
    deprecated: false

  field :attester_slashings, 5,
    repeated: true,
    type: Ethereum.Eth.V1alpha1.AttesterSlashing,
    json_name: "attesterSlashings",
    deprecated: false

  field :attestations, 6,
    repeated: true,
    type: Ethereum.Eth.V1alpha1.Attestation,
    deprecated: false

  field :deposits, 7, repeated: true, type: Ethereum.Eth.V1alpha1.Deposit, deprecated: false

  field :voluntary_exits, 8,
    repeated: true,
    type: Ethereum.Eth.V1alpha1.SignedVoluntaryExit,
    json_name: "voluntaryExits",
    deprecated: false

  field :sync_aggregate, 9, type: Ethereum.Eth.V1alpha1.SyncAggregate, json_name: "syncAggregate"
end

defmodule Ethereum.Eth.V1alpha1.SyncAggregate do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.13.0"

  field :sync_committee_bits, 1, type: :bytes, json_name: "syncCommitteeBits", deprecated: false

  field :sync_committee_signature, 2,
    type: :bytes,
    json_name: "syncCommitteeSignature",
    deprecated: false
end

defmodule Ethereum.Eth.V1alpha1.SignedBeaconBlockBellatrix do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.13.0"

  field :block, 1, type: Ethereum.Eth.V1alpha1.BeaconBlockBellatrix
  field :signature, 2, type: :bytes, deprecated: false
end

defmodule Ethereum.Eth.V1alpha1.BeaconBlockBellatrix do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.13.0"

  field :slot, 1, type: :uint64, deprecated: false
  field :proposer_index, 2, type: :uint64, json_name: "proposerIndex", deprecated: false
  field :parent_root, 3, type: :bytes, json_name: "parentRoot", deprecated: false
  field :state_root, 4, type: :bytes, json_name: "stateRoot", deprecated: false
  field :body, 5, type: Ethereum.Eth.V1alpha1.BeaconBlockBodyBellatrix
end

defmodule Ethereum.Eth.V1alpha1.BeaconBlockBodyBellatrix do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.13.0"

  field :randao_reveal, 1, type: :bytes, json_name: "randaoReveal", deprecated: false
  field :eth1_data, 2, type: Ethereum.Eth.V1alpha1.Eth1Data, json_name: "eth1Data"
  field :graffiti, 3, type: :bytes, deprecated: false

  field :proposer_slashings, 4,
    repeated: true,
    type: Ethereum.Eth.V1alpha1.ProposerSlashing,
    json_name: "proposerSlashings",
    deprecated: false

  field :attester_slashings, 5,
    repeated: true,
    type: Ethereum.Eth.V1alpha1.AttesterSlashing,
    json_name: "attesterSlashings",
    deprecated: false

  field :attestations, 6,
    repeated: true,
    type: Ethereum.Eth.V1alpha1.Attestation,
    deprecated: false

  field :deposits, 7, repeated: true, type: Ethereum.Eth.V1alpha1.Deposit, deprecated: false

  field :voluntary_exits, 8,
    repeated: true,
    type: Ethereum.Eth.V1alpha1.SignedVoluntaryExit,
    json_name: "voluntaryExits",
    deprecated: false

  field :sync_aggregate, 9, type: Ethereum.Eth.V1alpha1.SyncAggregate, json_name: "syncAggregate"

  field :execution_payload, 10,
    type: Ethereum.Engine.V1.ExecutionPayload,
    json_name: "executionPayload"
end

defmodule Ethereum.Eth.V1alpha1.SignedBlindedBeaconBlockBellatrix do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.13.0"

  field :block, 1, type: Ethereum.Eth.V1alpha1.BlindedBeaconBlockBellatrix
  field :signature, 2, type: :bytes, deprecated: false
end

defmodule Ethereum.Eth.V1alpha1.BlindedBeaconBlockBellatrix do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.13.0"

  field :slot, 1, type: :uint64, deprecated: false
  field :proposer_index, 2, type: :uint64, json_name: "proposerIndex", deprecated: false
  field :parent_root, 3, type: :bytes, json_name: "parentRoot", deprecated: false
  field :state_root, 4, type: :bytes, json_name: "stateRoot", deprecated: false
  field :body, 5, type: Ethereum.Eth.V1alpha1.BlindedBeaconBlockBodyBellatrix
end

defmodule Ethereum.Eth.V1alpha1.BlindedBeaconBlockBodyBellatrix do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.13.0"

  field :randao_reveal, 1, type: :bytes, json_name: "randaoReveal", deprecated: false
  field :eth1_data, 2, type: Ethereum.Eth.V1alpha1.Eth1Data, json_name: "eth1Data"
  field :graffiti, 3, type: :bytes, deprecated: false

  field :proposer_slashings, 4,
    repeated: true,
    type: Ethereum.Eth.V1alpha1.ProposerSlashing,
    json_name: "proposerSlashings",
    deprecated: false

  field :attester_slashings, 5,
    repeated: true,
    type: Ethereum.Eth.V1alpha1.AttesterSlashing,
    json_name: "attesterSlashings",
    deprecated: false

  field :attestations, 6,
    repeated: true,
    type: Ethereum.Eth.V1alpha1.Attestation,
    deprecated: false

  field :deposits, 7, repeated: true, type: Ethereum.Eth.V1alpha1.Deposit, deprecated: false

  field :voluntary_exits, 8,
    repeated: true,
    type: Ethereum.Eth.V1alpha1.SignedVoluntaryExit,
    json_name: "voluntaryExits",
    deprecated: false

  field :sync_aggregate, 9, type: Ethereum.Eth.V1alpha1.SyncAggregate, json_name: "syncAggregate"

  field :execution_payload_header, 10,
    type: Ethereum.Engine.V1.ExecutionPayloadHeader,
    json_name: "executionPayloadHeader"
end

defmodule Ethereum.Eth.V1alpha1.SignedBeaconBlockCapella do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.13.0"

  field :block, 1, type: Ethereum.Eth.V1alpha1.BeaconBlockCapella
  field :signature, 2, type: :bytes, deprecated: false
end

defmodule Ethereum.Eth.V1alpha1.BeaconBlockCapella do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.13.0"

  field :slot, 1, type: :uint64, deprecated: false
  field :proposer_index, 2, type: :uint64, json_name: "proposerIndex", deprecated: false
  field :parent_root, 3, type: :bytes, json_name: "parentRoot", deprecated: false
  field :state_root, 4, type: :bytes, json_name: "stateRoot", deprecated: false
  field :body, 5, type: Ethereum.Eth.V1alpha1.BeaconBlockBodyCapella
end

defmodule Ethereum.Eth.V1alpha1.BeaconBlockBodyCapella do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.13.0"

  field :randao_reveal, 1, type: :bytes, json_name: "randaoReveal", deprecated: false
  field :eth1_data, 2, type: Ethereum.Eth.V1alpha1.Eth1Data, json_name: "eth1Data"
  field :graffiti, 3, type: :bytes, deprecated: false

  field :proposer_slashings, 4,
    repeated: true,
    type: Ethereum.Eth.V1alpha1.ProposerSlashing,
    json_name: "proposerSlashings",
    deprecated: false

  field :attester_slashings, 5,
    repeated: true,
    type: Ethereum.Eth.V1alpha1.AttesterSlashing,
    json_name: "attesterSlashings",
    deprecated: false

  field :attestations, 6,
    repeated: true,
    type: Ethereum.Eth.V1alpha1.Attestation,
    deprecated: false

  field :deposits, 7, repeated: true, type: Ethereum.Eth.V1alpha1.Deposit, deprecated: false

  field :voluntary_exits, 8,
    repeated: true,
    type: Ethereum.Eth.V1alpha1.SignedVoluntaryExit,
    json_name: "voluntaryExits",
    deprecated: false

  field :sync_aggregate, 9, type: Ethereum.Eth.V1alpha1.SyncAggregate, json_name: "syncAggregate"

  field :execution_payload, 10,
    type: Ethereum.Engine.V1.ExecutionPayloadCapella,
    json_name: "executionPayload"

  field :bls_to_execution_changes, 11,
    repeated: true,
    type: Ethereum.Eth.V1alpha1.SignedBLSToExecutionChange,
    json_name: "blsToExecutionChanges",
    deprecated: false
end

defmodule Ethereum.Eth.V1alpha1.SignedBlindedBeaconBlockCapella do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.13.0"

  field :block, 1, type: Ethereum.Eth.V1alpha1.BlindedBeaconBlockCapella
  field :signature, 2, type: :bytes, deprecated: false
end

defmodule Ethereum.Eth.V1alpha1.BlindedBeaconBlockCapella do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.13.0"

  field :slot, 1, type: :uint64, deprecated: false
  field :proposer_index, 2, type: :uint64, json_name: "proposerIndex", deprecated: false
  field :parent_root, 3, type: :bytes, json_name: "parentRoot", deprecated: false
  field :state_root, 4, type: :bytes, json_name: "stateRoot", deprecated: false
  field :body, 5, type: Ethereum.Eth.V1alpha1.BlindedBeaconBlockBodyCapella
end

defmodule Ethereum.Eth.V1alpha1.BlindedBeaconBlockBodyCapella do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.13.0"

  field :randao_reveal, 1, type: :bytes, json_name: "randaoReveal", deprecated: false
  field :eth1_data, 2, type: Ethereum.Eth.V1alpha1.Eth1Data, json_name: "eth1Data"
  field :graffiti, 3, type: :bytes, deprecated: false

  field :proposer_slashings, 4,
    repeated: true,
    type: Ethereum.Eth.V1alpha1.ProposerSlashing,
    json_name: "proposerSlashings",
    deprecated: false

  field :attester_slashings, 5,
    repeated: true,
    type: Ethereum.Eth.V1alpha1.AttesterSlashing,
    json_name: "attesterSlashings",
    deprecated: false

  field :attestations, 6,
    repeated: true,
    type: Ethereum.Eth.V1alpha1.Attestation,
    deprecated: false

  field :deposits, 7, repeated: true, type: Ethereum.Eth.V1alpha1.Deposit, deprecated: false

  field :voluntary_exits, 8,
    repeated: true,
    type: Ethereum.Eth.V1alpha1.SignedVoluntaryExit,
    json_name: "voluntaryExits",
    deprecated: false

  field :sync_aggregate, 9, type: Ethereum.Eth.V1alpha1.SyncAggregate, json_name: "syncAggregate"

  field :execution_payload_header, 10,
    type: Ethereum.Engine.V1.ExecutionPayloadHeaderCapella,
    json_name: "executionPayloadHeader"

  field :bls_to_execution_changes, 11,
    repeated: true,
    type: Ethereum.Eth.V1alpha1.SignedBLSToExecutionChange,
    json_name: "blsToExecutionChanges",
    deprecated: false
end

defmodule Ethereum.Eth.V1alpha1.SignedBuilderBidCapella do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.13.0"

  field :message, 1, type: Ethereum.Eth.V1alpha1.BuilderBidCapella
  field :signature, 2, type: :bytes, deprecated: false
end

defmodule Ethereum.Eth.V1alpha1.BuilderBidCapella do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.13.0"

  field :header, 1, type: Ethereum.Engine.V1.ExecutionPayloadHeaderCapella
  field :value, 2, type: :bytes, deprecated: false
  field :pubkey, 3, type: :bytes, deprecated: false
end

defmodule Ethereum.Eth.V1alpha1.SignedBeaconBlockContentsDeneb do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.13.0"

  field :block, 1, type: Ethereum.Eth.V1alpha1.SignedBeaconBlockDeneb
  field :kzg_proofs, 2, repeated: true, type: :bytes, json_name: "kzgProofs", deprecated: false
  field :blobs, 3, repeated: true, type: :bytes, deprecated: false
end

defmodule Ethereum.Eth.V1alpha1.SignedBeaconBlockDeneb do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.13.0"

  field :block, 1, type: Ethereum.Eth.V1alpha1.BeaconBlockDeneb
  field :signature, 2, type: :bytes, deprecated: false
end

defmodule Ethereum.Eth.V1alpha1.BeaconBlockContentsDeneb do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.13.0"

  field :block, 1, type: Ethereum.Eth.V1alpha1.BeaconBlockDeneb
  field :kzg_proofs, 2, repeated: true, type: :bytes, json_name: "kzgProofs", deprecated: false
  field :blobs, 3, repeated: true, type: :bytes, deprecated: false
end

defmodule Ethereum.Eth.V1alpha1.BeaconBlockDeneb do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.13.0"

  field :slot, 1, type: :uint64, deprecated: false
  field :proposer_index, 2, type: :uint64, json_name: "proposerIndex", deprecated: false
  field :parent_root, 3, type: :bytes, json_name: "parentRoot", deprecated: false
  field :state_root, 4, type: :bytes, json_name: "stateRoot", deprecated: false
  field :body, 5, type: Ethereum.Eth.V1alpha1.BeaconBlockBodyDeneb
end

defmodule Ethereum.Eth.V1alpha1.BeaconBlockBodyDeneb do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.13.0"

  field :randao_reveal, 1, type: :bytes, json_name: "randaoReveal", deprecated: false
  field :eth1_data, 2, type: Ethereum.Eth.V1alpha1.Eth1Data, json_name: "eth1Data"
  field :graffiti, 3, type: :bytes, deprecated: false

  field :proposer_slashings, 4,
    repeated: true,
    type: Ethereum.Eth.V1alpha1.ProposerSlashing,
    json_name: "proposerSlashings",
    deprecated: false

  field :attester_slashings, 5,
    repeated: true,
    type: Ethereum.Eth.V1alpha1.AttesterSlashing,
    json_name: "attesterSlashings",
    deprecated: false

  field :attestations, 6,
    repeated: true,
    type: Ethereum.Eth.V1alpha1.Attestation,
    deprecated: false

  field :deposits, 7, repeated: true, type: Ethereum.Eth.V1alpha1.Deposit, deprecated: false

  field :voluntary_exits, 8,
    repeated: true,
    type: Ethereum.Eth.V1alpha1.SignedVoluntaryExit,
    json_name: "voluntaryExits",
    deprecated: false

  field :sync_aggregate, 9, type: Ethereum.Eth.V1alpha1.SyncAggregate, json_name: "syncAggregate"

  field :execution_payload, 10,
    type: Ethereum.Engine.V1.ExecutionPayloadDeneb,
    json_name: "executionPayload"

  field :bls_to_execution_changes, 11,
    repeated: true,
    type: Ethereum.Eth.V1alpha1.SignedBLSToExecutionChange,
    json_name: "blsToExecutionChanges",
    deprecated: false

  field :blob_kzg_commitments, 12,
    repeated: true,
    type: :bytes,
    json_name: "blobKzgCommitments",
    deprecated: false
end

defmodule Ethereum.Eth.V1alpha1.SignedBlindedBeaconBlockDeneb do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.13.0"

  field :message, 1, type: Ethereum.Eth.V1alpha1.BlindedBeaconBlockDeneb
  field :signature, 2, type: :bytes, deprecated: false
end

defmodule Ethereum.Eth.V1alpha1.BlindedBeaconBlockDeneb do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.13.0"

  field :slot, 1, type: :uint64, deprecated: false
  field :proposer_index, 2, type: :uint64, json_name: "proposerIndex", deprecated: false
  field :parent_root, 3, type: :bytes, json_name: "parentRoot", deprecated: false
  field :state_root, 4, type: :bytes, json_name: "stateRoot", deprecated: false
  field :body, 5, type: Ethereum.Eth.V1alpha1.BlindedBeaconBlockBodyDeneb
end

defmodule Ethereum.Eth.V1alpha1.BlindedBeaconBlockBodyDeneb do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.13.0"

  field :randao_reveal, 1, type: :bytes, json_name: "randaoReveal", deprecated: false
  field :eth1_data, 2, type: Ethereum.Eth.V1alpha1.Eth1Data, json_name: "eth1Data"
  field :graffiti, 3, type: :bytes, deprecated: false

  field :proposer_slashings, 4,
    repeated: true,
    type: Ethereum.Eth.V1alpha1.ProposerSlashing,
    json_name: "proposerSlashings",
    deprecated: false

  field :attester_slashings, 5,
    repeated: true,
    type: Ethereum.Eth.V1alpha1.AttesterSlashing,
    json_name: "attesterSlashings",
    deprecated: false

  field :attestations, 6,
    repeated: true,
    type: Ethereum.Eth.V1alpha1.Attestation,
    deprecated: false

  field :deposits, 7, repeated: true, type: Ethereum.Eth.V1alpha1.Deposit, deprecated: false

  field :voluntary_exits, 8,
    repeated: true,
    type: Ethereum.Eth.V1alpha1.SignedVoluntaryExit,
    json_name: "voluntaryExits",
    deprecated: false

  field :sync_aggregate, 9, type: Ethereum.Eth.V1alpha1.SyncAggregate, json_name: "syncAggregate"

  field :execution_payload_header, 10,
    type: Ethereum.Engine.V1.ExecutionPayloadHeaderDeneb,
    json_name: "executionPayloadHeader"

  field :bls_to_execution_changes, 11,
    repeated: true,
    type: Ethereum.Eth.V1alpha1.SignedBLSToExecutionChange,
    json_name: "blsToExecutionChanges",
    deprecated: false

  field :blob_kzg_commitments, 12,
    repeated: true,
    type: :bytes,
    json_name: "blobKzgCommitments",
    deprecated: false
end

defmodule Ethereum.Eth.V1alpha1.SignedBuilderBidDeneb do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.13.0"

  field :message, 1, type: Ethereum.Eth.V1alpha1.BuilderBidDeneb
  field :signature, 2, type: :bytes, deprecated: false
end

defmodule Ethereum.Eth.V1alpha1.BuilderBidDeneb do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.13.0"

  field :header, 1, type: Ethereum.Engine.V1.ExecutionPayloadHeaderDeneb

  field :blob_kzg_commitments, 2,
    repeated: true,
    type: :bytes,
    json_name: "blobKzgCommitments",
    deprecated: false

  field :value, 3, type: :bytes, deprecated: false
  field :pubkey, 4, type: :bytes, deprecated: false
end

defmodule Ethereum.Eth.V1alpha1.BuilderBidElectra do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.13.0"

  field :header, 1, type: Ethereum.Engine.V1.ExecutionPayloadHeaderDeneb

  field :blob_kzg_commitments, 2,
    repeated: true,
    type: :bytes,
    json_name: "blobKzgCommitments",
    deprecated: false

  field :execution_requests, 3,
    type: Ethereum.Engine.V1.ExecutionRequests,
    json_name: "executionRequests"

  field :value, 4, type: :bytes, deprecated: false
  field :pubkey, 5, type: :bytes, deprecated: false
end

defmodule Ethereum.Eth.V1alpha1.SignedBuilderBidElectra do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.13.0"

  field :message, 1, type: Ethereum.Eth.V1alpha1.BuilderBidElectra
  field :signature, 2, type: :bytes, deprecated: false
end

defmodule Ethereum.Eth.V1alpha1.BlobSidecars do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.13.0"

  field :sidecars, 1, repeated: true, type: Ethereum.Eth.V1alpha1.BlobSidecar, deprecated: false
end

defmodule Ethereum.Eth.V1alpha1.BlobSidecar do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.13.0"

  field :index, 1, type: :uint64
  field :blob, 2, type: :bytes, deprecated: false
  field :kzg_commitment, 3, type: :bytes, json_name: "kzgCommitment", deprecated: false
  field :kzg_proof, 4, type: :bytes, json_name: "kzgProof", deprecated: false

  field :signed_block_header, 5,
    type: Ethereum.Eth.V1alpha1.SignedBeaconBlockHeader,
    json_name: "signedBlockHeader"

  field :commitment_inclusion_proof, 6,
    repeated: true,
    type: :bytes,
    json_name: "commitmentInclusionProof",
    deprecated: false
end

defmodule Ethereum.Eth.V1alpha1.SignedBeaconBlockContentsElectra do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.13.0"

  field :block, 1, type: Ethereum.Eth.V1alpha1.SignedBeaconBlockElectra
  field :kzg_proofs, 2, repeated: true, type: :bytes, json_name: "kzgProofs", deprecated: false
  field :blobs, 3, repeated: true, type: :bytes, deprecated: false
end

defmodule Ethereum.Eth.V1alpha1.SignedBeaconBlockElectra do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.13.0"

  field :block, 1, type: Ethereum.Eth.V1alpha1.BeaconBlockElectra
  field :signature, 2, type: :bytes, deprecated: false
end

defmodule Ethereum.Eth.V1alpha1.BeaconBlockContentsElectra do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.13.0"

  field :block, 1, type: Ethereum.Eth.V1alpha1.BeaconBlockElectra
  field :kzg_proofs, 2, repeated: true, type: :bytes, json_name: "kzgProofs", deprecated: false
  field :blobs, 3, repeated: true, type: :bytes, deprecated: false
end

defmodule Ethereum.Eth.V1alpha1.BeaconBlockElectra do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.13.0"

  field :slot, 1, type: :uint64, deprecated: false
  field :proposer_index, 2, type: :uint64, json_name: "proposerIndex", deprecated: false
  field :parent_root, 3, type: :bytes, json_name: "parentRoot", deprecated: false
  field :state_root, 4, type: :bytes, json_name: "stateRoot", deprecated: false
  field :body, 5, type: Ethereum.Eth.V1alpha1.BeaconBlockBodyElectra
end

defmodule Ethereum.Eth.V1alpha1.BeaconBlockBodyElectra do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.13.0"

  field :randao_reveal, 1, type: :bytes, json_name: "randaoReveal", deprecated: false
  field :eth1_data, 2, type: Ethereum.Eth.V1alpha1.Eth1Data, json_name: "eth1Data"
  field :graffiti, 3, type: :bytes, deprecated: false

  field :proposer_slashings, 4,
    repeated: true,
    type: Ethereum.Eth.V1alpha1.ProposerSlashing,
    json_name: "proposerSlashings",
    deprecated: false

  field :attester_slashings, 5,
    repeated: true,
    type: Ethereum.Eth.V1alpha1.AttesterSlashingElectra,
    json_name: "attesterSlashings",
    deprecated: false

  field :attestations, 6,
    repeated: true,
    type: Ethereum.Eth.V1alpha1.AttestationElectra,
    deprecated: false

  field :deposits, 7, repeated: true, type: Ethereum.Eth.V1alpha1.Deposit, deprecated: false

  field :voluntary_exits, 8,
    repeated: true,
    type: Ethereum.Eth.V1alpha1.SignedVoluntaryExit,
    json_name: "voluntaryExits",
    deprecated: false

  field :sync_aggregate, 9, type: Ethereum.Eth.V1alpha1.SyncAggregate, json_name: "syncAggregate"

  field :execution_payload, 10,
    type: Ethereum.Engine.V1.ExecutionPayloadDeneb,
    json_name: "executionPayload"

  field :bls_to_execution_changes, 11,
    repeated: true,
    type: Ethereum.Eth.V1alpha1.SignedBLSToExecutionChange,
    json_name: "blsToExecutionChanges",
    deprecated: false

  field :blob_kzg_commitments, 12,
    repeated: true,
    type: :bytes,
    json_name: "blobKzgCommitments",
    deprecated: false

  field :execution_requests, 13,
    type: Ethereum.Engine.V1.ExecutionRequests,
    json_name: "executionRequests"
end

defmodule Ethereum.Eth.V1alpha1.SignedBlindedBeaconBlockElectra do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.13.0"

  field :message, 1, type: Ethereum.Eth.V1alpha1.BlindedBeaconBlockElectra
  field :signature, 2, type: :bytes, deprecated: false
end

defmodule Ethereum.Eth.V1alpha1.BlindedBeaconBlockElectra do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.13.0"

  field :slot, 1, type: :uint64, deprecated: false
  field :proposer_index, 2, type: :uint64, json_name: "proposerIndex", deprecated: false
  field :parent_root, 3, type: :bytes, json_name: "parentRoot", deprecated: false
  field :state_root, 4, type: :bytes, json_name: "stateRoot", deprecated: false
  field :body, 5, type: Ethereum.Eth.V1alpha1.BlindedBeaconBlockBodyElectra
end

defmodule Ethereum.Eth.V1alpha1.BlindedBeaconBlockBodyElectra do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.13.0"

  field :randao_reveal, 1, type: :bytes, json_name: "randaoReveal", deprecated: false
  field :eth1_data, 2, type: Ethereum.Eth.V1alpha1.Eth1Data, json_name: "eth1Data"
  field :graffiti, 3, type: :bytes, deprecated: false

  field :proposer_slashings, 4,
    repeated: true,
    type: Ethereum.Eth.V1alpha1.ProposerSlashing,
    json_name: "proposerSlashings",
    deprecated: false

  field :attester_slashings, 5,
    repeated: true,
    type: Ethereum.Eth.V1alpha1.AttesterSlashingElectra,
    json_name: "attesterSlashings",
    deprecated: false

  field :attestations, 6,
    repeated: true,
    type: Ethereum.Eth.V1alpha1.AttestationElectra,
    deprecated: false

  field :deposits, 7, repeated: true, type: Ethereum.Eth.V1alpha1.Deposit, deprecated: false

  field :voluntary_exits, 8,
    repeated: true,
    type: Ethereum.Eth.V1alpha1.SignedVoluntaryExit,
    json_name: "voluntaryExits",
    deprecated: false

  field :sync_aggregate, 9, type: Ethereum.Eth.V1alpha1.SyncAggregate, json_name: "syncAggregate"

  field :execution_payload_header, 10,
    type: Ethereum.Engine.V1.ExecutionPayloadHeaderDeneb,
    json_name: "executionPayloadHeader"

  field :bls_to_execution_changes, 11,
    repeated: true,
    type: Ethereum.Eth.V1alpha1.SignedBLSToExecutionChange,
    json_name: "blsToExecutionChanges",
    deprecated: false

  field :blob_kzg_commitments, 12,
    repeated: true,
    type: :bytes,
    json_name: "blobKzgCommitments",
    deprecated: false

  field :execution_requests, 13,
    type: Ethereum.Engine.V1.ExecutionRequests,
    json_name: "executionRequests"
end

defmodule Ethereum.Eth.V1alpha1.AttesterSlashingElectra do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.13.0"

  field :attestation_1, 1,
    type: Ethereum.Eth.V1alpha1.IndexedAttestationElectra,
    json_name: "attestation1"

  field :attestation_2, 2,
    type: Ethereum.Eth.V1alpha1.IndexedAttestationElectra,
    json_name: "attestation2"
end

defmodule Ethereum.Eth.V1alpha1.IndexedAttestationElectra do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.13.0"

  field :attesting_indices, 1,
    repeated: true,
    type: :uint64,
    json_name: "attestingIndices",
    deprecated: false

  field :data, 2, type: Ethereum.Eth.V1alpha1.AttestationData
  field :signature, 3, type: :bytes, deprecated: false
end

defmodule Ethereum.Eth.V1alpha1.SignedBeaconBlockContentsFulu do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.13.0"

  field :block, 1, type: Ethereum.Eth.V1alpha1.SignedBeaconBlockFulu
  field :kzg_proofs, 2, repeated: true, type: :bytes, json_name: "kzgProofs", deprecated: false
  field :blobs, 3, repeated: true, type: :bytes, deprecated: false
end

defmodule Ethereum.Eth.V1alpha1.SignedBeaconBlockFulu do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.13.0"

  field :block, 1, type: Ethereum.Eth.V1alpha1.BeaconBlockElectra
  field :signature, 2, type: :bytes, deprecated: false
end

defmodule Ethereum.Eth.V1alpha1.BeaconBlockContentsFulu do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.13.0"

  field :block, 1, type: Ethereum.Eth.V1alpha1.BeaconBlockElectra
  field :kzg_proofs, 2, repeated: true, type: :bytes, json_name: "kzgProofs", deprecated: false
  field :blobs, 3, repeated: true, type: :bytes, deprecated: false
end

defmodule Ethereum.Eth.V1alpha1.SignedBlindedBeaconBlockFulu do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.13.0"

  field :message, 1, type: Ethereum.Eth.V1alpha1.BlindedBeaconBlockFulu
  field :signature, 2, type: :bytes, deprecated: false
end

defmodule Ethereum.Eth.V1alpha1.BlindedBeaconBlockFulu do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.13.0"

  field :slot, 1, type: :uint64, deprecated: false
  field :proposer_index, 2, type: :uint64, json_name: "proposerIndex", deprecated: false
  field :parent_root, 3, type: :bytes, json_name: "parentRoot", deprecated: false
  field :state_root, 4, type: :bytes, json_name: "stateRoot", deprecated: false
  field :body, 5, type: Ethereum.Eth.V1alpha1.BlindedBeaconBlockBodyElectra
end