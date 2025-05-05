defmodule Ethereum.Eth.V1alpha1.LightClientBootstrapAltair do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.13.0"

  field :header, 1, type: Ethereum.Eth.V1alpha1.LightClientHeaderAltair

  field :current_sync_committee, 2,
    type: Ethereum.Eth.V1alpha1.SyncCommittee,
    json_name: "currentSyncCommittee"

  field :current_sync_committee_branch, 3,
    repeated: true,
    type: :bytes,
    json_name: "currentSyncCommitteeBranch",
    deprecated: false
end

defmodule Ethereum.Eth.V1alpha1.LightClientUpdateAltair do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.13.0"

  field :attested_header, 1,
    type: Ethereum.Eth.V1alpha1.LightClientHeaderAltair,
    json_name: "attestedHeader"

  field :next_sync_committee, 2,
    type: Ethereum.Eth.V1alpha1.SyncCommittee,
    json_name: "nextSyncCommittee"

  field :next_sync_committee_branch, 3,
    repeated: true,
    type: :bytes,
    json_name: "nextSyncCommitteeBranch",
    deprecated: false

  field :finalized_header, 4,
    type: Ethereum.Eth.V1alpha1.LightClientHeaderAltair,
    json_name: "finalizedHeader"

  field :finality_branch, 5,
    repeated: true,
    type: :bytes,
    json_name: "finalityBranch",
    deprecated: false

  field :sync_aggregate, 6, type: Ethereum.Eth.V1alpha1.SyncAggregate, json_name: "syncAggregate"
  field :signature_slot, 7, type: :uint64, json_name: "signatureSlot", deprecated: false
end

defmodule Ethereum.Eth.V1alpha1.LightClientFinalityUpdateAltair do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.13.0"

  field :attested_header, 1,
    type: Ethereum.Eth.V1alpha1.LightClientHeaderAltair,
    json_name: "attestedHeader"

  field :finalized_header, 2,
    type: Ethereum.Eth.V1alpha1.LightClientHeaderAltair,
    json_name: "finalizedHeader"

  field :finality_branch, 3,
    repeated: true,
    type: :bytes,
    json_name: "finalityBranch",
    deprecated: false

  field :sync_aggregate, 4, type: Ethereum.Eth.V1alpha1.SyncAggregate, json_name: "syncAggregate"
  field :signature_slot, 5, type: :uint64, json_name: "signatureSlot", deprecated: false
end

defmodule Ethereum.Eth.V1alpha1.LightClientOptimisticUpdateAltair do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.13.0"

  field :attested_header, 1,
    type: Ethereum.Eth.V1alpha1.LightClientHeaderAltair,
    json_name: "attestedHeader"

  field :sync_aggregate, 2, type: Ethereum.Eth.V1alpha1.SyncAggregate, json_name: "syncAggregate"
  field :signature_slot, 3, type: :uint64, json_name: "signatureSlot", deprecated: false
end

defmodule Ethereum.Eth.V1alpha1.LightClientHeaderAltair do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.13.0"

  field :beacon, 1, type: Ethereum.Eth.V1alpha1.BeaconBlockHeader
end

defmodule Ethereum.Eth.V1alpha1.LightClientBootstrapCapella do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.13.0"

  field :header, 1, type: Ethereum.Eth.V1alpha1.LightClientHeaderCapella

  field :current_sync_committee, 2,
    type: Ethereum.Eth.V1alpha1.SyncCommittee,
    json_name: "currentSyncCommittee"

  field :current_sync_committee_branch, 3,
    repeated: true,
    type: :bytes,
    json_name: "currentSyncCommitteeBranch",
    deprecated: false
end

defmodule Ethereum.Eth.V1alpha1.LightClientUpdateCapella do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.13.0"

  field :attested_header, 1,
    type: Ethereum.Eth.V1alpha1.LightClientHeaderCapella,
    json_name: "attestedHeader"

  field :next_sync_committee, 2,
    type: Ethereum.Eth.V1alpha1.SyncCommittee,
    json_name: "nextSyncCommittee"

  field :next_sync_committee_branch, 3,
    repeated: true,
    type: :bytes,
    json_name: "nextSyncCommitteeBranch",
    deprecated: false

  field :finalized_header, 4,
    type: Ethereum.Eth.V1alpha1.LightClientHeaderCapella,
    json_name: "finalizedHeader"

  field :finality_branch, 5,
    repeated: true,
    type: :bytes,
    json_name: "finalityBranch",
    deprecated: false

  field :sync_aggregate, 6, type: Ethereum.Eth.V1alpha1.SyncAggregate, json_name: "syncAggregate"
  field :signature_slot, 7, type: :uint64, json_name: "signatureSlot", deprecated: false
end

defmodule Ethereum.Eth.V1alpha1.LightClientFinalityUpdateCapella do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.13.0"

  field :attested_header, 1,
    type: Ethereum.Eth.V1alpha1.LightClientHeaderCapella,
    json_name: "attestedHeader"

  field :finalized_header, 2,
    type: Ethereum.Eth.V1alpha1.LightClientHeaderCapella,
    json_name: "finalizedHeader"

  field :finality_branch, 3,
    repeated: true,
    type: :bytes,
    json_name: "finalityBranch",
    deprecated: false

  field :sync_aggregate, 4, type: Ethereum.Eth.V1alpha1.SyncAggregate, json_name: "syncAggregate"
  field :signature_slot, 5, type: :uint64, json_name: "signatureSlot", deprecated: false
end

defmodule Ethereum.Eth.V1alpha1.LightClientOptimisticUpdateCapella do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.13.0"

  field :attested_header, 1,
    type: Ethereum.Eth.V1alpha1.LightClientHeaderCapella,
    json_name: "attestedHeader"

  field :sync_aggregate, 2, type: Ethereum.Eth.V1alpha1.SyncAggregate, json_name: "syncAggregate"
  field :signature_slot, 3, type: :uint64, json_name: "signatureSlot", deprecated: false
end

defmodule Ethereum.Eth.V1alpha1.LightClientHeaderCapella do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.13.0"

  field :beacon, 1, type: Ethereum.Eth.V1alpha1.BeaconBlockHeader
  field :execution, 2, type: Ethereum.Engine.V1.ExecutionPayloadHeaderCapella

  field :execution_branch, 3,
    repeated: true,
    type: :bytes,
    json_name: "executionBranch",
    deprecated: false
end

defmodule Ethereum.Eth.V1alpha1.LightClientBootstrapDeneb do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.13.0"

  field :header, 1, type: Ethereum.Eth.V1alpha1.LightClientHeaderDeneb

  field :current_sync_committee, 2,
    type: Ethereum.Eth.V1alpha1.SyncCommittee,
    json_name: "currentSyncCommittee"

  field :current_sync_committee_branch, 3,
    repeated: true,
    type: :bytes,
    json_name: "currentSyncCommitteeBranch",
    deprecated: false
end

defmodule Ethereum.Eth.V1alpha1.LightClientUpdateDeneb do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.13.0"

  field :attested_header, 1,
    type: Ethereum.Eth.V1alpha1.LightClientHeaderDeneb,
    json_name: "attestedHeader"

  field :next_sync_committee, 2,
    type: Ethereum.Eth.V1alpha1.SyncCommittee,
    json_name: "nextSyncCommittee"

  field :next_sync_committee_branch, 3,
    repeated: true,
    type: :bytes,
    json_name: "nextSyncCommitteeBranch",
    deprecated: false

  field :finalized_header, 4,
    type: Ethereum.Eth.V1alpha1.LightClientHeaderDeneb,
    json_name: "finalizedHeader"

  field :finality_branch, 5,
    repeated: true,
    type: :bytes,
    json_name: "finalityBranch",
    deprecated: false

  field :sync_aggregate, 6, type: Ethereum.Eth.V1alpha1.SyncAggregate, json_name: "syncAggregate"
  field :signature_slot, 7, type: :uint64, json_name: "signatureSlot", deprecated: false
end

defmodule Ethereum.Eth.V1alpha1.LightClientFinalityUpdateDeneb do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.13.0"

  field :attested_header, 1,
    type: Ethereum.Eth.V1alpha1.LightClientHeaderDeneb,
    json_name: "attestedHeader"

  field :finalized_header, 2,
    type: Ethereum.Eth.V1alpha1.LightClientHeaderDeneb,
    json_name: "finalizedHeader"

  field :finality_branch, 3,
    repeated: true,
    type: :bytes,
    json_name: "finalityBranch",
    deprecated: false

  field :sync_aggregate, 4, type: Ethereum.Eth.V1alpha1.SyncAggregate, json_name: "syncAggregate"
  field :signature_slot, 5, type: :uint64, json_name: "signatureSlot", deprecated: false
end

defmodule Ethereum.Eth.V1alpha1.LightClientOptimisticUpdateDeneb do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.13.0"

  field :attested_header, 1,
    type: Ethereum.Eth.V1alpha1.LightClientHeaderDeneb,
    json_name: "attestedHeader"

  field :sync_aggregate, 2, type: Ethereum.Eth.V1alpha1.SyncAggregate, json_name: "syncAggregate"
  field :signature_slot, 3, type: :uint64, json_name: "signatureSlot", deprecated: false
end

defmodule Ethereum.Eth.V1alpha1.LightClientHeaderDeneb do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.13.0"

  field :beacon, 1, type: Ethereum.Eth.V1alpha1.BeaconBlockHeader
  field :execution, 2, type: Ethereum.Engine.V1.ExecutionPayloadHeaderDeneb

  field :execution_branch, 3,
    repeated: true,
    type: :bytes,
    json_name: "executionBranch",
    deprecated: false
end

defmodule Ethereum.Eth.V1alpha1.LightClientBootstrapElectra do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.13.0"

  field :header, 1, type: Ethereum.Eth.V1alpha1.LightClientHeaderDeneb

  field :current_sync_committee, 2,
    type: Ethereum.Eth.V1alpha1.SyncCommittee,
    json_name: "currentSyncCommittee"

  field :current_sync_committee_branch, 3,
    repeated: true,
    type: :bytes,
    json_name: "currentSyncCommitteeBranch",
    deprecated: false
end

defmodule Ethereum.Eth.V1alpha1.LightClientUpdateElectra do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.13.0"

  field :attested_header, 1,
    type: Ethereum.Eth.V1alpha1.LightClientHeaderDeneb,
    json_name: "attestedHeader"

  field :next_sync_committee, 2,
    type: Ethereum.Eth.V1alpha1.SyncCommittee,
    json_name: "nextSyncCommittee"

  field :next_sync_committee_branch, 3,
    repeated: true,
    type: :bytes,
    json_name: "nextSyncCommitteeBranch",
    deprecated: false

  field :finalized_header, 4,
    type: Ethereum.Eth.V1alpha1.LightClientHeaderDeneb,
    json_name: "finalizedHeader"

  field :finality_branch, 5,
    repeated: true,
    type: :bytes,
    json_name: "finalityBranch",
    deprecated: false

  field :sync_aggregate, 6, type: Ethereum.Eth.V1alpha1.SyncAggregate, json_name: "syncAggregate"
  field :signature_slot, 7, type: :uint64, json_name: "signatureSlot", deprecated: false
end

defmodule Ethereum.Eth.V1alpha1.LightClientFinalityUpdateElectra do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.13.0"

  field :attested_header, 1,
    type: Ethereum.Eth.V1alpha1.LightClientHeaderDeneb,
    json_name: "attestedHeader"

  field :finalized_header, 2,
    type: Ethereum.Eth.V1alpha1.LightClientHeaderDeneb,
    json_name: "finalizedHeader"

  field :finality_branch, 3,
    repeated: true,
    type: :bytes,
    json_name: "finalityBranch",
    deprecated: false

  field :sync_aggregate, 4, type: Ethereum.Eth.V1alpha1.SyncAggregate, json_name: "syncAggregate"
  field :signature_slot, 5, type: :uint64, json_name: "signatureSlot", deprecated: false
end