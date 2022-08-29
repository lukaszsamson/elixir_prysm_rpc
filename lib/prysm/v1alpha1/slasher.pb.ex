defmodule Ethereum.Eth.V1alpha1.AttesterSlashingResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :attester_slashings, 1,
    repeated: true,
    type: Ethereum.Eth.V1alpha1.AttesterSlashing,
    json_name: "attesterSlashings"
end

defmodule Ethereum.Eth.V1alpha1.ProposerSlashingResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :proposer_slashings, 1,
    repeated: true,
    type: Ethereum.Eth.V1alpha1.ProposerSlashing,
    json_name: "proposerSlashings"
end

defmodule Ethereum.Eth.V1alpha1.HighestAttestationRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :validator_indices, 1, repeated: true, type: :uint64, json_name: "validatorIndices"
end

defmodule Ethereum.Eth.V1alpha1.HighestAttestationResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :attestations, 1, repeated: true, type: Ethereum.Eth.V1alpha1.HighestAttestation
end

defmodule Ethereum.Eth.V1alpha1.HighestAttestation do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :validator_index, 1, type: :uint64, json_name: "validatorIndex"

  field :highest_source_epoch, 2,
    type: :uint64,
    json_name: "highestSourceEpoch",
    deprecated: false

  field :highest_target_epoch, 3,
    type: :uint64,
    json_name: "highestTargetEpoch",
    deprecated: false
end

defmodule Ethereum.Eth.V1alpha1.Slasher.Service do
  @moduledoc false
  use GRPC.Service, name: "ethereum.eth.v1alpha1.Slasher", protoc_gen_elixir_version: "0.11.0"

  rpc :IsSlashableAttestation,
      Ethereum.Eth.V1alpha1.IndexedAttestation,
      Ethereum.Eth.V1alpha1.AttesterSlashingResponse

  rpc :IsSlashableBlock,
      Ethereum.Eth.V1alpha1.SignedBeaconBlockHeader,
      Ethereum.Eth.V1alpha1.ProposerSlashingResponse

  rpc :HighestAttestations,
      Ethereum.Eth.V1alpha1.HighestAttestationRequest,
      Ethereum.Eth.V1alpha1.HighestAttestationResponse
end

defmodule Ethereum.Eth.V1alpha1.Slasher.Stub do
  @moduledoc false
  use GRPC.Stub, service: Ethereum.Eth.V1alpha1.Slasher.Service
end