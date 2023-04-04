defmodule Ethereum.Eth.V2.BlockRequestV2 do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :block_id, 1, type: :bytes, json_name: "blockId"
end

defmodule Ethereum.Eth.V2.BlockResponseV2 do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :version, 1, type: Ethereum.Eth.V2.Version, enum: true
  field :data, 2, type: Ethereum.Eth.V2.SignedBeaconBlockContainer
  field :execution_optimistic, 3, type: :bool, json_name: "executionOptimistic"
  field :finalized, 4, type: :bool
end

defmodule Ethereum.Eth.V2.BlindedBlockResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :version, 1, type: Ethereum.Eth.V2.Version, enum: true
  field :data, 2, type: Ethereum.Eth.V2.SignedBlindedBeaconBlockContainer
  field :execution_optimistic, 3, type: :bool, json_name: "executionOptimistic"
  field :finalized, 4, type: :bool
end

defmodule Ethereum.Eth.V2.BeaconBlockContainerV2 do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  oneof :block, 0

  field :phase0_block, 1, type: Ethereum.Eth.V1.BeaconBlock, json_name: "phase0Block", oneof: 0

  field :altair_block, 2,
    type: Ethereum.Eth.V2.BeaconBlockAltair,
    json_name: "altairBlock",
    oneof: 0

  field :bellatrix_block, 3,
    type: Ethereum.Eth.V2.BeaconBlockBellatrix,
    json_name: "bellatrixBlock",
    oneof: 0

  field :capella_block, 4,
    type: Ethereum.Eth.V2.BeaconBlockCapella,
    json_name: "capellaBlock",
    oneof: 0
end

defmodule Ethereum.Eth.V2.SignedBeaconBlockContainer do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  oneof :message, 0

  field :phase0_block, 1, type: Ethereum.Eth.V1.BeaconBlock, json_name: "phase0Block", oneof: 0

  field :altair_block, 2,
    type: Ethereum.Eth.V2.BeaconBlockAltair,
    json_name: "altairBlock",
    oneof: 0

  field :bellatrix_block, 3,
    type: Ethereum.Eth.V2.BeaconBlockBellatrix,
    json_name: "bellatrixBlock",
    oneof: 0

  field :capella_block, 4,
    type: Ethereum.Eth.V2.BeaconBlockCapella,
    json_name: "capellaBlock",
    oneof: 0

  field :signature, 5, type: :bytes, deprecated: false
end

defmodule Ethereum.Eth.V2.BlindedBeaconBlockContainer do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  oneof :block, 0

  field :phase0_block, 1, type: Ethereum.Eth.V1.BeaconBlock, json_name: "phase0Block", oneof: 0

  field :altair_block, 2,
    type: Ethereum.Eth.V2.BeaconBlockAltair,
    json_name: "altairBlock",
    oneof: 0

  field :bellatrix_block, 3,
    type: Ethereum.Eth.V2.BlindedBeaconBlockBellatrix,
    json_name: "bellatrixBlock",
    oneof: 0

  field :capella_block, 4,
    type: Ethereum.Eth.V2.BlindedBeaconBlockCapella,
    json_name: "capellaBlock",
    oneof: 0
end

defmodule Ethereum.Eth.V2.SignedBlindedBeaconBlockContainer do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  oneof :message, 0

  field :phase0_block, 1, type: Ethereum.Eth.V1.BeaconBlock, json_name: "phase0Block", oneof: 0

  field :altair_block, 2,
    type: Ethereum.Eth.V2.BeaconBlockAltair,
    json_name: "altairBlock",
    oneof: 0

  field :bellatrix_block, 3,
    type: Ethereum.Eth.V2.BlindedBeaconBlockBellatrix,
    json_name: "bellatrixBlock",
    oneof: 0

  field :capella_block, 4,
    type: Ethereum.Eth.V2.BlindedBeaconBlockCapella,
    json_name: "capellaBlock",
    oneof: 0

  field :signature, 5, type: :bytes, deprecated: false
end

defmodule Ethereum.Eth.V2.SignedBeaconBlockBellatrix do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :message, 1, type: Ethereum.Eth.V2.BeaconBlockBellatrix
  field :signature, 2, type: :bytes, deprecated: false
end

defmodule Ethereum.Eth.V2.SignedBeaconBlockCapella do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :message, 1, type: Ethereum.Eth.V2.BeaconBlockCapella
  field :signature, 2, type: :bytes, deprecated: false
end

defmodule Ethereum.Eth.V2.SignedBlindedBeaconBlockBellatrix do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :message, 1, type: Ethereum.Eth.V2.BlindedBeaconBlockBellatrix
  field :signature, 2, type: :bytes, deprecated: false
end

defmodule Ethereum.Eth.V2.SignedBlindedBeaconBlockCapella do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :message, 1, type: Ethereum.Eth.V2.BlindedBeaconBlockCapella
  field :signature, 2, type: :bytes, deprecated: false
end

defmodule Ethereum.Eth.V2.SignedBeaconBlockAltair do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :message, 1, type: Ethereum.Eth.V2.BeaconBlockAltair
  field :signature, 2, type: :bytes, deprecated: false
end

defmodule Ethereum.Eth.V2.BeaconBlockBellatrix do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :slot, 1, type: :uint64, deprecated: false
  field :proposer_index, 2, type: :uint64, json_name: "proposerIndex", deprecated: false
  field :parent_root, 3, type: :bytes, json_name: "parentRoot", deprecated: false
  field :state_root, 4, type: :bytes, json_name: "stateRoot", deprecated: false
  field :body, 5, type: Ethereum.Eth.V2.BeaconBlockBodyBellatrix
end

defmodule Ethereum.Eth.V2.BlindedBeaconBlockBellatrix do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :slot, 1, type: :uint64, deprecated: false
  field :proposer_index, 2, type: :uint64, json_name: "proposerIndex", deprecated: false
  field :parent_root, 3, type: :bytes, json_name: "parentRoot", deprecated: false
  field :state_root, 4, type: :bytes, json_name: "stateRoot", deprecated: false
  field :body, 5, type: Ethereum.Eth.V2.BlindedBeaconBlockBodyBellatrix
end

defmodule Ethereum.Eth.V2.BeaconBlockCapella do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :slot, 1, type: :uint64, deprecated: false
  field :proposer_index, 2, type: :uint64, json_name: "proposerIndex", deprecated: false
  field :parent_root, 3, type: :bytes, json_name: "parentRoot", deprecated: false
  field :state_root, 4, type: :bytes, json_name: "stateRoot", deprecated: false
  field :body, 5, type: Ethereum.Eth.V2.BeaconBlockBodyCapella
end

defmodule Ethereum.Eth.V2.BlindedBeaconBlockCapella do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :slot, 1, type: :uint64, deprecated: false
  field :proposer_index, 2, type: :uint64, json_name: "proposerIndex", deprecated: false
  field :parent_root, 3, type: :bytes, json_name: "parentRoot", deprecated: false
  field :state_root, 4, type: :bytes, json_name: "stateRoot", deprecated: false
  field :body, 5, type: Ethereum.Eth.V2.BlindedBeaconBlockBodyCapella
end

defmodule Ethereum.Eth.V2.BeaconBlockAltair do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :slot, 1, type: :uint64, deprecated: false
  field :proposer_index, 2, type: :uint64, json_name: "proposerIndex", deprecated: false
  field :parent_root, 3, type: :bytes, json_name: "parentRoot", deprecated: false
  field :state_root, 4, type: :bytes, json_name: "stateRoot", deprecated: false
  field :body, 5, type: Ethereum.Eth.V2.BeaconBlockBodyAltair
end

defmodule Ethereum.Eth.V2.BeaconBlockBodyBellatrix do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :randao_reveal, 1, type: :bytes, json_name: "randaoReveal", deprecated: false
  field :eth1_data, 2, type: Ethereum.Eth.V1.Eth1Data, json_name: "eth1Data"
  field :graffiti, 3, type: :bytes, deprecated: false

  field :proposer_slashings, 4,
    repeated: true,
    type: Ethereum.Eth.V1.ProposerSlashing,
    json_name: "proposerSlashings",
    deprecated: false

  field :attester_slashings, 5,
    repeated: true,
    type: Ethereum.Eth.V1.AttesterSlashing,
    json_name: "attesterSlashings",
    deprecated: false

  field :attestations, 6, repeated: true, type: Ethereum.Eth.V1.Attestation, deprecated: false
  field :deposits, 7, repeated: true, type: Ethereum.Eth.V1.Deposit, deprecated: false

  field :voluntary_exits, 8,
    repeated: true,
    type: Ethereum.Eth.V1.SignedVoluntaryExit,
    json_name: "voluntaryExits",
    deprecated: false

  field :sync_aggregate, 9, type: Ethereum.Eth.V1.SyncAggregate, json_name: "syncAggregate"

  field :execution_payload, 10,
    type: Ethereum.Engine.V1.ExecutionPayload,
    json_name: "executionPayload"
end

defmodule Ethereum.Eth.V2.BlindedBeaconBlockBodyBellatrix do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :randao_reveal, 1, type: :bytes, json_name: "randaoReveal", deprecated: false
  field :eth1_data, 2, type: Ethereum.Eth.V1.Eth1Data, json_name: "eth1Data"
  field :graffiti, 3, type: :bytes, deprecated: false

  field :proposer_slashings, 4,
    repeated: true,
    type: Ethereum.Eth.V1.ProposerSlashing,
    json_name: "proposerSlashings",
    deprecated: false

  field :attester_slashings, 5,
    repeated: true,
    type: Ethereum.Eth.V1.AttesterSlashing,
    json_name: "attesterSlashings",
    deprecated: false

  field :attestations, 6, repeated: true, type: Ethereum.Eth.V1.Attestation, deprecated: false
  field :deposits, 7, repeated: true, type: Ethereum.Eth.V1.Deposit, deprecated: false

  field :voluntary_exits, 8,
    repeated: true,
    type: Ethereum.Eth.V1.SignedVoluntaryExit,
    json_name: "voluntaryExits",
    deprecated: false

  field :sync_aggregate, 9, type: Ethereum.Eth.V1.SyncAggregate, json_name: "syncAggregate"

  field :execution_payload_header, 10,
    type: Ethereum.Engine.V1.ExecutionPayloadHeader,
    json_name: "executionPayloadHeader"
end

defmodule Ethereum.Eth.V2.BeaconBlockBodyCapella do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :randao_reveal, 1, type: :bytes, json_name: "randaoReveal", deprecated: false
  field :eth1_data, 2, type: Ethereum.Eth.V1.Eth1Data, json_name: "eth1Data"
  field :graffiti, 3, type: :bytes, deprecated: false

  field :proposer_slashings, 4,
    repeated: true,
    type: Ethereum.Eth.V1.ProposerSlashing,
    json_name: "proposerSlashings",
    deprecated: false

  field :attester_slashings, 5,
    repeated: true,
    type: Ethereum.Eth.V1.AttesterSlashing,
    json_name: "attesterSlashings",
    deprecated: false

  field :attestations, 6, repeated: true, type: Ethereum.Eth.V1.Attestation, deprecated: false
  field :deposits, 7, repeated: true, type: Ethereum.Eth.V1.Deposit, deprecated: false

  field :voluntary_exits, 8,
    repeated: true,
    type: Ethereum.Eth.V1.SignedVoluntaryExit,
    json_name: "voluntaryExits",
    deprecated: false

  field :sync_aggregate, 9, type: Ethereum.Eth.V1.SyncAggregate, json_name: "syncAggregate"

  field :execution_payload, 10,
    type: Ethereum.Engine.V1.ExecutionPayloadCapella,
    json_name: "executionPayload"

  field :bls_to_execution_changes, 11,
    repeated: true,
    type: Ethereum.Eth.V2.SignedBLSToExecutionChange,
    json_name: "blsToExecutionChanges",
    deprecated: false
end

defmodule Ethereum.Eth.V2.BlindedBeaconBlockBodyCapella do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :randao_reveal, 1, type: :bytes, json_name: "randaoReveal", deprecated: false
  field :eth1_data, 2, type: Ethereum.Eth.V1.Eth1Data, json_name: "eth1Data"
  field :graffiti, 3, type: :bytes, deprecated: false

  field :proposer_slashings, 4,
    repeated: true,
    type: Ethereum.Eth.V1.ProposerSlashing,
    json_name: "proposerSlashings",
    deprecated: false

  field :attester_slashings, 5,
    repeated: true,
    type: Ethereum.Eth.V1.AttesterSlashing,
    json_name: "attesterSlashings",
    deprecated: false

  field :attestations, 6, repeated: true, type: Ethereum.Eth.V1.Attestation, deprecated: false
  field :deposits, 7, repeated: true, type: Ethereum.Eth.V1.Deposit, deprecated: false

  field :voluntary_exits, 8,
    repeated: true,
    type: Ethereum.Eth.V1.SignedVoluntaryExit,
    json_name: "voluntaryExits",
    deprecated: false

  field :sync_aggregate, 9, type: Ethereum.Eth.V1.SyncAggregate, json_name: "syncAggregate"

  field :execution_payload_header, 10,
    type: Ethereum.Engine.V1.ExecutionPayloadHeaderCapella,
    json_name: "executionPayloadHeader"

  field :bls_to_execution_changes, 11,
    repeated: true,
    type: Ethereum.Eth.V2.SignedBLSToExecutionChange,
    json_name: "blsToExecutionChanges",
    deprecated: false
end

defmodule Ethereum.Eth.V2.BeaconBlockBodyAltair do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :randao_reveal, 1, type: :bytes, json_name: "randaoReveal", deprecated: false
  field :eth1_data, 2, type: Ethereum.Eth.V1.Eth1Data, json_name: "eth1Data"
  field :graffiti, 3, type: :bytes, deprecated: false

  field :proposer_slashings, 4,
    repeated: true,
    type: Ethereum.Eth.V1.ProposerSlashing,
    json_name: "proposerSlashings",
    deprecated: false

  field :attester_slashings, 5,
    repeated: true,
    type: Ethereum.Eth.V1.AttesterSlashing,
    json_name: "attesterSlashings",
    deprecated: false

  field :attestations, 6, repeated: true, type: Ethereum.Eth.V1.Attestation, deprecated: false
  field :deposits, 7, repeated: true, type: Ethereum.Eth.V1.Deposit, deprecated: false

  field :voluntary_exits, 8,
    repeated: true,
    type: Ethereum.Eth.V1.SignedVoluntaryExit,
    json_name: "voluntaryExits",
    deprecated: false

  field :sync_aggregate, 9, type: Ethereum.Eth.V1.SyncAggregate, json_name: "syncAggregate"
end