defmodule Ethereum.Eth.V2.ProduceBlockResponseV2 do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :version, 1, type: Ethereum.Eth.V2.Version, enum: true
  field :data, 2, type: Ethereum.Eth.V2.BeaconBlockContainerV2
end

defmodule Ethereum.Eth.V2.ProduceBlindedBlockResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :version, 1, type: Ethereum.Eth.V2.Version, enum: true
  field :data, 2, type: Ethereum.Eth.V2.BlindedBeaconBlockContainer
end

defmodule Ethereum.Eth.V2.SyncCommitteeContribution do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :slot, 1, type: :uint64, deprecated: false
  field :beacon_block_root, 2, type: :bytes, json_name: "beaconBlockRoot", deprecated: false
  field :subcommittee_index, 3, type: :uint64, json_name: "subcommitteeIndex"
  field :aggregation_bits, 4, type: :bytes, json_name: "aggregationBits", deprecated: false
  field :signature, 5, type: :bytes, deprecated: false
end

defmodule Ethereum.Eth.V2.ContributionAndProof do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :aggregator_index, 1, type: :uint64, json_name: "aggregatorIndex", deprecated: false
  field :contribution, 2, type: Ethereum.Eth.V2.SyncCommitteeContribution
  field :selection_proof, 3, type: :bytes, json_name: "selectionProof", deprecated: false
end

defmodule Ethereum.Eth.V2.SignedContributionAndProof do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :message, 1, type: Ethereum.Eth.V2.ContributionAndProof
  field :signature, 4, type: :bytes, deprecated: false
end