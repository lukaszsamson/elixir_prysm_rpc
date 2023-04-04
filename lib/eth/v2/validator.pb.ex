defmodule Ethereum.Eth.V2.SyncCommitteeDutiesRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :epoch, 1, type: :uint64, deprecated: false
  field :index, 2, repeated: true, type: :uint64, deprecated: false
end

defmodule Ethereum.Eth.V2.SyncCommitteeDutiesResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :data, 1, repeated: true, type: Ethereum.Eth.V2.SyncCommitteeDuty
  field :execution_optimistic, 2, type: :bool, json_name: "executionOptimistic"
end

defmodule Ethereum.Eth.V2.SyncCommitteeDuty do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :pubkey, 1, type: :bytes, deprecated: false
  field :validator_index, 2, type: :uint64, json_name: "validatorIndex", deprecated: false

  field :validator_sync_committee_indices, 3,
    repeated: true,
    type: :uint64,
    json_name: "validatorSyncCommitteeIndices"
end

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

defmodule Ethereum.Eth.V2.SubmitSyncCommitteeSubscriptionsRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :data, 1, repeated: true, type: Ethereum.Eth.V2.SyncCommitteeSubscription
end

defmodule Ethereum.Eth.V2.SyncCommitteeSubscription do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :validator_index, 1, type: :uint64, json_name: "validatorIndex", deprecated: false

  field :sync_committee_indices, 2,
    repeated: true,
    type: :uint64,
    json_name: "syncCommitteeIndices"

  field :until_epoch, 3, type: :uint64, json_name: "untilEpoch", deprecated: false
end

defmodule Ethereum.Eth.V2.ProduceSyncCommitteeContributionRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :slot, 1, type: :uint64, deprecated: false
  field :subcommittee_index, 2, type: :uint64, json_name: "subcommitteeIndex"
  field :beacon_block_root, 3, type: :bytes, json_name: "beaconBlockRoot", deprecated: false
end

defmodule Ethereum.Eth.V2.ProduceSyncCommitteeContributionResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :data, 1, type: Ethereum.Eth.V2.SyncCommitteeContribution
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

defmodule Ethereum.Eth.V2.SubmitContributionAndProofsRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :data, 1, repeated: true, type: Ethereum.Eth.V2.SignedContributionAndProof
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

defmodule Ethereum.Eth.V2.GetLivenessRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :epoch, 1, type: :uint64, deprecated: false
  field :index, 2, repeated: true, type: :uint64, deprecated: false
end

defmodule Ethereum.Eth.V2.GetLivenessResponse.Liveness do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :index, 1, type: :uint64, deprecated: false
  field :is_live, 2, type: :bool, json_name: "isLive"
end

defmodule Ethereum.Eth.V2.GetLivenessResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :data, 1, repeated: true, type: Ethereum.Eth.V2.GetLivenessResponse.Liveness
end