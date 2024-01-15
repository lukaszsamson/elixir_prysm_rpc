defmodule Ethereum.Validator.Accounts.V2.SignResponse.Status do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :UNKNOWN, 0
  field :SUCCEEDED, 1
  field :DENIED, 2
  field :FAILED, 3
end

defmodule Ethereum.Validator.Accounts.V2.SignRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  oneof :object, 0

  field :public_key, 1, type: :bytes, json_name: "publicKey"
  field :signing_root, 2, type: :bytes, json_name: "signingRoot"
  field :signature_domain, 3, type: :bytes, json_name: "signatureDomain"
  field :block, 101, type: Ethereum.Eth.V1alpha1.BeaconBlock, oneof: 0

  field :attestation_data, 102,
    type: Ethereum.Eth.V1alpha1.AttestationData,
    json_name: "attestationData",
    oneof: 0

  field :aggregate_attestation_and_proof, 103,
    type: Ethereum.Eth.V1alpha1.AggregateAttestationAndProof,
    json_name: "aggregateAttestationAndProof",
    oneof: 0

  field :exit, 104, type: Ethereum.Eth.V1alpha1.VoluntaryExit, oneof: 0
  field :slot, 105, type: :uint64, oneof: 0, deprecated: false
  field :epoch, 106, type: :uint64, oneof: 0, deprecated: false

  field :block_altair, 107,
    type: Ethereum.Eth.V1alpha1.BeaconBlockAltair,
    json_name: "blockAltair",
    oneof: 0

  field :sync_aggregator_selection_data, 108,
    type: Ethereum.Eth.V1alpha1.SyncAggregatorSelectionData,
    json_name: "syncAggregatorSelectionData",
    oneof: 0

  field :contribution_and_proof, 109,
    type: Ethereum.Eth.V1alpha1.ContributionAndProof,
    json_name: "contributionAndProof",
    oneof: 0

  field :sync_message_block_root, 110, type: :bytes, json_name: "syncMessageBlockRoot", oneof: 0

  field :block_bellatrix, 111,
    type: Ethereum.Eth.V1alpha1.BeaconBlockBellatrix,
    json_name: "blockBellatrix",
    oneof: 0

  field :blinded_block_bellatrix, 112,
    type: Ethereum.Eth.V1alpha1.BlindedBeaconBlockBellatrix,
    json_name: "blindedBlockBellatrix",
    oneof: 0

  field :registration, 113, type: Ethereum.Eth.V1alpha1.ValidatorRegistrationV1, oneof: 0

  field :block_capella, 114,
    type: Ethereum.Eth.V1alpha1.BeaconBlockCapella,
    json_name: "blockCapella",
    oneof: 0

  field :blinded_block_capella, 115,
    type: Ethereum.Eth.V1alpha1.BlindedBeaconBlockCapella,
    json_name: "blindedBlockCapella",
    oneof: 0

  field :block_deneb, 116,
    type: Ethereum.Eth.V1alpha1.BeaconBlockDeneb,
    json_name: "blockDeneb",
    oneof: 0

  field :blinded_block_deneb, 117,
    type: Ethereum.Eth.V1alpha1.BlindedBeaconBlockDeneb,
    json_name: "blindedBlockDeneb",
    oneof: 0

  field :signing_slot, 6, type: :uint64, json_name: "signingSlot", deprecated: false
end

defmodule Ethereum.Validator.Accounts.V2.SignResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :signature, 1, type: :bytes
  field :status, 2, type: Ethereum.Validator.Accounts.V2.SignResponse.Status, enum: true
end

defmodule Ethereum.Validator.Accounts.V2.ProposerOptionPayload do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :fee_recipient, 1, type: :string, json_name: "feeRecipient"
  field :builder, 2, type: Ethereum.Validator.Accounts.V2.BuilderConfig
end

defmodule Ethereum.Validator.Accounts.V2.BuilderConfig do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :enabled, 1, type: :bool
  field :gas_limit, 2, type: :uint64, json_name: "gasLimit", deprecated: false
  field :relays, 3, repeated: true, type: :string
end

defmodule Ethereum.Validator.Accounts.V2.ProposerSettingsPayload.ProposerConfigEntry do
  @moduledoc false
  use Protobuf, map: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Ethereum.Validator.Accounts.V2.ProposerOptionPayload
end

defmodule Ethereum.Validator.Accounts.V2.ProposerSettingsPayload do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :proposer_config, 1,
    repeated: true,
    type: Ethereum.Validator.Accounts.V2.ProposerSettingsPayload.ProposerConfigEntry,
    json_name: "proposerConfig",
    map: true

  field :default_config, 2,
    type: Ethereum.Validator.Accounts.V2.ProposerOptionPayload,
    json_name: "defaultConfig"
end