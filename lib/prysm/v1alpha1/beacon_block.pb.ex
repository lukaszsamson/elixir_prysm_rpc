defmodule Ethereum.Eth.V1alpha1.GenericSignedBeaconBlock do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

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
end

defmodule Ethereum.Eth.V1alpha1.GenericBeaconBlock do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

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
end

defmodule Ethereum.Eth.V1alpha1.BeaconBlock do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :slot, 1, type: :uint64, deprecated: false
  field :proposer_index, 2, type: :uint64, json_name: "proposerIndex", deprecated: false
  field :parent_root, 3, type: :bytes, json_name: "parentRoot", deprecated: false
  field :state_root, 4, type: :bytes, json_name: "stateRoot", deprecated: false
  field :body, 5, type: Ethereum.Eth.V1alpha1.BeaconBlockBody
end

defmodule Ethereum.Eth.V1alpha1.SignedBeaconBlock do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :block, 1, type: Ethereum.Eth.V1alpha1.BeaconBlock
  field :signature, 2, type: :bytes, deprecated: false
end

defmodule Ethereum.Eth.V1alpha1.BeaconBlockAltair do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :slot, 1, type: :uint64, deprecated: false
  field :proposer_index, 2, type: :uint64, json_name: "proposerIndex", deprecated: false
  field :parent_root, 3, type: :bytes, json_name: "parentRoot", deprecated: false
  field :state_root, 4, type: :bytes, json_name: "stateRoot", deprecated: false
  field :body, 5, type: Ethereum.Eth.V1alpha1.BeaconBlockBodyAltair
end

defmodule Ethereum.Eth.V1alpha1.SignedBeaconBlockAltair do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :block, 1, type: Ethereum.Eth.V1alpha1.BeaconBlockAltair
  field :signature, 2, type: :bytes, deprecated: false
end

defmodule Ethereum.Eth.V1alpha1.BeaconBlockBody do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

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

defmodule Ethereum.Eth.V1alpha1.BeaconBlockBodyAltair do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

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

defmodule Ethereum.Eth.V1alpha1.ProposerSlashing do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :header_1, 2, type: Ethereum.Eth.V1alpha1.SignedBeaconBlockHeader, json_name: "header1"
  field :header_2, 3, type: Ethereum.Eth.V1alpha1.SignedBeaconBlockHeader, json_name: "header2"
end

defmodule Ethereum.Eth.V1alpha1.AttesterSlashing do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :attestation_1, 1,
    type: Ethereum.Eth.V1alpha1.IndexedAttestation,
    json_name: "attestation1"

  field :attestation_2, 2,
    type: Ethereum.Eth.V1alpha1.IndexedAttestation,
    json_name: "attestation2"
end

defmodule Ethereum.Eth.V1alpha1.Deposit.Data do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

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
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :proof, 1, repeated: true, type: :bytes, deprecated: false
  field :data, 2, type: Ethereum.Eth.V1alpha1.Deposit.Data
end

defmodule Ethereum.Eth.V1alpha1.VoluntaryExit do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :epoch, 1, type: :uint64, deprecated: false
  field :validator_index, 2, type: :uint64, json_name: "validatorIndex", deprecated: false
end

defmodule Ethereum.Eth.V1alpha1.SignedVoluntaryExit do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :exit, 1, type: Ethereum.Eth.V1alpha1.VoluntaryExit
  field :signature, 2, type: :bytes, deprecated: false
end

defmodule Ethereum.Eth.V1alpha1.Eth1Data do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :deposit_root, 1, type: :bytes, json_name: "depositRoot", deprecated: false
  field :deposit_count, 2, type: :uint64, json_name: "depositCount"
  field :block_hash, 3, type: :bytes, json_name: "blockHash", deprecated: false
end

defmodule Ethereum.Eth.V1alpha1.BeaconBlockHeader do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :slot, 1, type: :uint64, deprecated: false
  field :proposer_index, 2, type: :uint64, json_name: "proposerIndex", deprecated: false
  field :parent_root, 3, type: :bytes, json_name: "parentRoot", deprecated: false
  field :state_root, 4, type: :bytes, json_name: "stateRoot", deprecated: false
  field :body_root, 5, type: :bytes, json_name: "bodyRoot", deprecated: false
end

defmodule Ethereum.Eth.V1alpha1.SignedBeaconBlockHeader do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :header, 1, type: Ethereum.Eth.V1alpha1.BeaconBlockHeader
  field :signature, 2, type: :bytes, deprecated: false
end

defmodule Ethereum.Eth.V1alpha1.IndexedAttestation do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :attesting_indices, 1,
    repeated: true,
    type: :uint64,
    json_name: "attestingIndices",
    deprecated: false

  field :data, 2, type: Ethereum.Eth.V1alpha1.AttestationData
  field :signature, 3, type: :bytes, deprecated: false
end

defmodule Ethereum.Eth.V1alpha1.SyncAggregate do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :sync_committee_bits, 1, type: :bytes, json_name: "syncCommitteeBits", deprecated: false

  field :sync_committee_signature, 2,
    type: :bytes,
    json_name: "syncCommitteeSignature",
    deprecated: false
end

defmodule Ethereum.Eth.V1alpha1.SignedBeaconBlockBellatrix do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :block, 1, type: Ethereum.Eth.V1alpha1.BeaconBlockBellatrix
  field :signature, 2, type: :bytes, deprecated: false
end

defmodule Ethereum.Eth.V1alpha1.BeaconBlockBellatrix do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :slot, 1, type: :uint64, deprecated: false
  field :proposer_index, 2, type: :uint64, json_name: "proposerIndex", deprecated: false
  field :parent_root, 3, type: :bytes, json_name: "parentRoot", deprecated: false
  field :state_root, 4, type: :bytes, json_name: "stateRoot", deprecated: false
  field :body, 5, type: Ethereum.Eth.V1alpha1.BeaconBlockBodyBellatrix
end

defmodule Ethereum.Eth.V1alpha1.BeaconBlockBodyBellatrix do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

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
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :block, 1, type: Ethereum.Eth.V1alpha1.BlindedBeaconBlockBellatrix
  field :signature, 2, type: :bytes, deprecated: false
end

defmodule Ethereum.Eth.V1alpha1.BlindedBeaconBlockBellatrix do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :slot, 1, type: :uint64, deprecated: false
  field :proposer_index, 2, type: :uint64, json_name: "proposerIndex", deprecated: false
  field :parent_root, 3, type: :bytes, json_name: "parentRoot", deprecated: false
  field :state_root, 4, type: :bytes, json_name: "stateRoot", deprecated: false
  field :body, 5, type: Ethereum.Eth.V1alpha1.BlindedBeaconBlockBodyBellatrix
end

defmodule Ethereum.Eth.V1alpha1.BlindedBeaconBlockBodyBellatrix do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

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
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :block, 1, type: Ethereum.Eth.V1alpha1.BeaconBlockCapella
  field :signature, 2, type: :bytes, deprecated: false
end

defmodule Ethereum.Eth.V1alpha1.BeaconBlockCapella do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :slot, 1, type: :uint64, deprecated: false
  field :proposer_index, 2, type: :uint64, json_name: "proposerIndex", deprecated: false
  field :parent_root, 3, type: :bytes, json_name: "parentRoot", deprecated: false
  field :state_root, 4, type: :bytes, json_name: "stateRoot", deprecated: false
  field :body, 5, type: Ethereum.Eth.V1alpha1.BeaconBlockBodyCapella
end

defmodule Ethereum.Eth.V1alpha1.BeaconBlockBodyCapella do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

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
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :block, 1, type: Ethereum.Eth.V1alpha1.BlindedBeaconBlockCapella
  field :signature, 2, type: :bytes, deprecated: false
end

defmodule Ethereum.Eth.V1alpha1.BlindedBeaconBlockCapella do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :slot, 1, type: :uint64, deprecated: false
  field :proposer_index, 2, type: :uint64, json_name: "proposerIndex", deprecated: false
  field :parent_root, 3, type: :bytes, json_name: "parentRoot", deprecated: false
  field :state_root, 4, type: :bytes, json_name: "stateRoot", deprecated: false
  field :body, 5, type: Ethereum.Eth.V1alpha1.BlindedBeaconBlockBodyCapella
end

defmodule Ethereum.Eth.V1alpha1.BlindedBeaconBlockBodyCapella do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

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

defmodule Ethereum.Eth.V1alpha1.ValidatorRegistrationV1 do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :fee_recipient, 1, type: :bytes, json_name: "feeRecipient", deprecated: false
  field :gas_limit, 2, type: :uint64, json_name: "gasLimit"
  field :timestamp, 3, type: :uint64
  field :pubkey, 4, type: :bytes, deprecated: false
end

defmodule Ethereum.Eth.V1alpha1.SignedValidatorRegistrationsV1 do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :messages, 1, repeated: true, type: Ethereum.Eth.V1alpha1.SignedValidatorRegistrationV1
end

defmodule Ethereum.Eth.V1alpha1.SignedValidatorRegistrationV1 do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :message, 1, type: Ethereum.Eth.V1alpha1.ValidatorRegistrationV1
  field :signature, 2, type: :bytes, deprecated: false
end

defmodule Ethereum.Eth.V1alpha1.BuilderBid do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :header, 1, type: Ethereum.Engine.V1.ExecutionPayloadHeader
  field :value, 2, type: :bytes, deprecated: false
  field :pubkey, 3, type: :bytes, deprecated: false
end

defmodule Ethereum.Eth.V1alpha1.SignedBuilderBid do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :message, 1, type: Ethereum.Eth.V1alpha1.BuilderBid
  field :signature, 2, type: :bytes, deprecated: false
end