defmodule Ethereum.Eth.V1.GenesisResponse.Genesis do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :genesis_time, 1, type: Google.Protobuf.Timestamp, json_name: "genesisTime"

  field :genesis_validators_root, 2,
    type: :bytes,
    json_name: "genesisValidatorsRoot",
    deprecated: false

  field :genesis_fork_version, 3, type: :bytes, json_name: "genesisForkVersion", deprecated: false
end

defmodule Ethereum.Eth.V1.GenesisResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :data, 1, type: Ethereum.Eth.V1.GenesisResponse.Genesis
end

defmodule Ethereum.Eth.V1.StateRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :state_id, 1, type: :bytes, json_name: "stateId"
end

defmodule Ethereum.Eth.V1.StateRootResponse.StateRoot do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :root, 1, type: :bytes, deprecated: false
end

defmodule Ethereum.Eth.V1.StateRootResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :data, 1, type: Ethereum.Eth.V1.StateRootResponse.StateRoot
  field :execution_optimistic, 2, type: :bool, json_name: "executionOptimistic"
end

defmodule Ethereum.Eth.V1.StateForkResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :data, 1, type: Ethereum.Eth.V1.Fork
  field :execution_optimistic, 2, type: :bool, json_name: "executionOptimistic"
end

defmodule Ethereum.Eth.V1.StateFinalityCheckpointResponse.StateFinalityCheckpoint do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :previous_justified, 1, type: Ethereum.Eth.V1.Checkpoint, json_name: "previousJustified"
  field :current_justified, 2, type: Ethereum.Eth.V1.Checkpoint, json_name: "currentJustified"
  field :finalized, 3, type: Ethereum.Eth.V1.Checkpoint
end

defmodule Ethereum.Eth.V1.StateFinalityCheckpointResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :data, 1, type: Ethereum.Eth.V1.StateFinalityCheckpointResponse.StateFinalityCheckpoint
  field :execution_optimistic, 2, type: :bool, json_name: "executionOptimistic"
end

defmodule Ethereum.Eth.V1.StateValidatorsRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :state_id, 1, type: :bytes, json_name: "stateId"
  field :id, 2, repeated: true, type: :bytes
  field :status, 3, repeated: true, type: Ethereum.Eth.V1.ValidatorStatus, enum: true
end

defmodule Ethereum.Eth.V1.ValidatorBalancesRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :state_id, 1, type: :bytes, json_name: "stateId"
  field :id, 2, repeated: true, type: :bytes
end

defmodule Ethereum.Eth.V1.StateValidatorsResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :data, 1, repeated: true, type: Ethereum.Eth.V1.ValidatorContainer
  field :execution_optimistic, 2, type: :bool, json_name: "executionOptimistic"
end

defmodule Ethereum.Eth.V1.ValidatorBalancesResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :data, 1, repeated: true, type: Ethereum.Eth.V1.ValidatorBalance
  field :execution_optimistic, 2, type: :bool, json_name: "executionOptimistic"
end

defmodule Ethereum.Eth.V1.ValidatorBalance do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :index, 1, type: :uint64, deprecated: false
  field :balance, 2, type: :uint64
end

defmodule Ethereum.Eth.V1.StateValidatorRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :state_id, 1, type: :bytes, json_name: "stateId"
  field :validator_id, 2, type: :bytes, json_name: "validatorId"
end

defmodule Ethereum.Eth.V1.StateValidatorResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :data, 1, type: Ethereum.Eth.V1.ValidatorContainer
  field :execution_optimistic, 2, type: :bool, json_name: "executionOptimistic"
end

defmodule Ethereum.Eth.V1.StateCommitteesRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :state_id, 1, type: :bytes, json_name: "stateId"
  field :epoch, 2, proto3_optional: true, type: :uint64, deprecated: false
  field :index, 3, proto3_optional: true, type: :uint64, deprecated: false
  field :slot, 4, proto3_optional: true, type: :uint64, deprecated: false
end

defmodule Ethereum.Eth.V1.StateCommitteesResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :data, 1, repeated: true, type: Ethereum.Eth.V1.Committee
  field :execution_optimistic, 2, type: :bool, json_name: "executionOptimistic"
end

defmodule Ethereum.Eth.V1.BlockAttestationsResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :data, 1, repeated: true, type: Ethereum.Eth.V1.Attestation
  field :execution_optimistic, 2, type: :bool, json_name: "executionOptimistic"
end

defmodule Ethereum.Eth.V1.BlockRootContainer do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :root, 1, type: :bytes, deprecated: false
end

defmodule Ethereum.Eth.V1.BlockRootResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :data, 1, type: Ethereum.Eth.V1.BlockRootContainer
  field :execution_optimistic, 2, type: :bool, json_name: "executionOptimistic"
end

defmodule Ethereum.Eth.V1.BlockHeadersRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :slot, 1, proto3_optional: true, type: :uint64, deprecated: false

  field :parent_root, 2,
    proto3_optional: true,
    type: :bytes,
    json_name: "parentRoot",
    deprecated: false
end

defmodule Ethereum.Eth.V1.BlockHeadersResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :data, 1, repeated: true, type: Ethereum.Eth.V1.BlockHeaderContainer
  field :execution_optimistic, 2, type: :bool, json_name: "executionOptimistic"
end

defmodule Ethereum.Eth.V1.BlockRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :block_id, 1, type: :bytes, json_name: "blockId"
end

defmodule Ethereum.Eth.V1.BlockHeaderResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :data, 1, type: Ethereum.Eth.V1.BlockHeaderContainer
  field :execution_optimistic, 2, type: :bool, json_name: "executionOptimistic"
end

defmodule Ethereum.Eth.V1.BlockHeaderContainer do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :root, 1, type: :bytes, deprecated: false
  field :canonical, 2, type: :bool
  field :header, 3, type: Ethereum.Eth.V1.BeaconBlockHeaderContainer
end

defmodule Ethereum.Eth.V1.BeaconBlockHeaderContainer do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :message, 1, type: Ethereum.Eth.V1.BeaconBlockHeader
  field :signature, 2, type: :bytes, deprecated: false
end

defmodule Ethereum.Eth.V1.BlockResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :data, 1, type: Ethereum.Eth.V1.BeaconBlockContainer
end

defmodule Ethereum.Eth.V1.BlockSSZResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :data, 1, type: :bytes
end

defmodule Ethereum.Eth.V1.BeaconBlockContainer do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :message, 1, type: Ethereum.Eth.V1.BeaconBlock
  field :signature, 2, type: :bytes, deprecated: false
end

defmodule Ethereum.Eth.V1.AttestationsPoolRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :slot, 1, proto3_optional: true, type: :uint64, deprecated: false

  field :committee_index, 2,
    proto3_optional: true,
    type: :uint64,
    json_name: "committeeIndex",
    deprecated: false
end

defmodule Ethereum.Eth.V1.SubmitAttestationsRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :data, 1, repeated: true, type: Ethereum.Eth.V1.Attestation
end

defmodule Ethereum.Eth.V1.AttestationsPoolResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :data, 1, repeated: true, type: Ethereum.Eth.V1.Attestation
end

defmodule Ethereum.Eth.V1.AttesterSlashingsPoolResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :data, 1, repeated: true, type: Ethereum.Eth.V1.AttesterSlashing
end

defmodule Ethereum.Eth.V1.ProposerSlashingPoolResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :data, 1, repeated: true, type: Ethereum.Eth.V1.ProposerSlashing
end

defmodule Ethereum.Eth.V1.VoluntaryExitsPoolResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :data, 1, repeated: true, type: Ethereum.Eth.V1.SignedVoluntaryExit
end

defmodule Ethereum.Eth.V1.ForkScheduleResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :data, 1, repeated: true, type: Ethereum.Eth.V1.Fork
end

defmodule Ethereum.Eth.V1.SpecResponse.DataEntry do
  @moduledoc false
  use Protobuf, map: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Ethereum.Eth.V1.SpecResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :data, 1, repeated: true, type: Ethereum.Eth.V1.SpecResponse.DataEntry, map: true
end

defmodule Ethereum.Eth.V1.DepositContractResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :data, 1, type: Ethereum.Eth.V1.DepositContract
end

defmodule Ethereum.Eth.V1.DepositContract do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :chain_id, 1, type: :uint64, json_name: "chainId"
  field :address, 2, type: :string
end

defmodule Ethereum.Eth.V1.WeakSubjectivityResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :data, 1, type: Ethereum.Eth.V1.WeakSubjectivityData
end

defmodule Ethereum.Eth.V1.WeakSubjectivityData do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :ws_checkpoint, 1, type: Ethereum.Eth.V1.Checkpoint, json_name: "wsCheckpoint"
  field :state_root, 2, type: :bytes, json_name: "stateRoot"
end