defmodule Ethereum.Validator.Accounts.V2.SignResponse.Status do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :UNKNOWN, 0
  field :SUCCEEDED, 1
  field :DENIED, 2
  field :FAILED, 3
end

defmodule Ethereum.Validator.Accounts.V2.ListPublicKeysResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :validating_public_keys, 2,
    repeated: true,
    type: :bytes,
    json_name: "validatingPublicKeys"
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
  field :blockV2, 107, type: Ethereum.Eth.V1alpha1.BeaconBlockAltair, oneof: 0

  field :sync_aggregator_selection_data, 108,
    type: Ethereum.Eth.V1alpha1.SyncAggregatorSelectionData,
    json_name: "syncAggregatorSelectionData",
    oneof: 0

  field :contribution_and_proof, 109,
    type: Ethereum.Eth.V1alpha1.ContributionAndProof,
    json_name: "contributionAndProof",
    oneof: 0

  field :sync_message_block_root, 110, type: :bytes, json_name: "syncMessageBlockRoot", oneof: 0
  field :blockV3, 111, type: Ethereum.Eth.V1alpha1.BeaconBlockBellatrix, oneof: 0

  field :blinded_blockV3, 112,
    type: Ethereum.Eth.V1alpha1.BlindedBeaconBlockBellatrix,
    json_name: "blindedBlockV3",
    oneof: 0

  field :registration, 113, type: Ethereum.Eth.V1alpha1.ValidatorRegistrationV1, oneof: 0
  field :signing_slot, 6, type: :uint64, json_name: "signingSlot", deprecated: false
end

defmodule Ethereum.Validator.Accounts.V2.SignResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :signature, 1, type: :bytes
  field :status, 2, type: Ethereum.Validator.Accounts.V2.SignResponse.Status, enum: true
end

defmodule Ethereum.Validator.Accounts.V2.RemoteSigner.Service do
  @moduledoc false
  use GRPC.Service,
    name: "ethereum.validator.accounts.v2.RemoteSigner",
    protoc_gen_elixir_version: "0.11.0"

  rpc :ListValidatingPublicKeys,
      Google.Protobuf.Empty,
      Ethereum.Validator.Accounts.V2.ListPublicKeysResponse

  rpc :Sign,
      Ethereum.Validator.Accounts.V2.SignRequest,
      Ethereum.Validator.Accounts.V2.SignResponse
end

defmodule Ethereum.Validator.Accounts.V2.RemoteSigner.Stub do
  @moduledoc false
  use GRPC.Stub, service: Ethereum.Validator.Accounts.V2.RemoteSigner.Service
end