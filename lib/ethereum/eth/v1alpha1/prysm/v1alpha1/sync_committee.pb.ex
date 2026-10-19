defmodule Ethereum.Eth.V1alpha1.SyncCommitteeMessage do
  @moduledoc false

  use Protobuf,
    deprecated: true,
    full_name: "ethereum.eth.v1alpha1.SyncCommitteeMessage",
    protoc_gen_elixir_version: "0.17.1",
    syntax: :proto3

  field :slot, 1, type: :uint64, deprecated: false
  field :block_root, 2, type: :bytes, json_name: "blockRoot", deprecated: false
  field :validator_index, 3, type: :uint64, json_name: "validatorIndex", deprecated: false
  field :signature, 4, type: :bytes, deprecated: false
end

defmodule Ethereum.Eth.V1alpha1.SignedContributionAndProof do
  @moduledoc false

  use Protobuf,
    full_name: "ethereum.eth.v1alpha1.SignedContributionAndProof",
    protoc_gen_elixir_version: "0.17.1",
    syntax: :proto3

  field :message, 1, type: Ethereum.Eth.V1alpha1.ContributionAndProof
  field :signature, 4, type: :bytes, deprecated: false
end

defmodule Ethereum.Eth.V1alpha1.ContributionAndProof do
  @moduledoc false

  use Protobuf,
    full_name: "ethereum.eth.v1alpha1.ContributionAndProof",
    protoc_gen_elixir_version: "0.17.1",
    syntax: :proto3

  field :aggregator_index, 1, type: :uint64, json_name: "aggregatorIndex", deprecated: false
  field :contribution, 2, type: Ethereum.Eth.V1alpha1.SyncCommitteeContribution
  field :selection_proof, 3, type: :bytes, json_name: "selectionProof", deprecated: false
end

defmodule Ethereum.Eth.V1alpha1.SyncCommitteeContribution do
  @moduledoc false

  use Protobuf,
    full_name: "ethereum.eth.v1alpha1.SyncCommitteeContribution",
    protoc_gen_elixir_version: "0.17.1",
    syntax: :proto3

  field :slot, 1, type: :uint64, deprecated: false
  field :block_root, 2, type: :bytes, json_name: "blockRoot", deprecated: false
  field :subcommittee_index, 3, type: :uint64, json_name: "subcommitteeIndex"
  field :aggregation_bits, 4, type: :bytes, json_name: "aggregationBits", deprecated: false
  field :signature, 5, type: :bytes, deprecated: false
end
