defmodule Ethereum.Eth.V2.BeaconState do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :genesis_time, 1001, type: :uint64, json_name: "genesisTime"

  field :genesis_validators_root, 1002,
    type: :bytes,
    json_name: "genesisValidatorsRoot",
    deprecated: false

  field :slot, 1003, type: :uint64, deprecated: false
  field :fork, 1004, type: Ethereum.Eth.V1.Fork

  field :latest_block_header, 2001,
    type: Ethereum.Eth.V1.BeaconBlockHeader,
    json_name: "latestBlockHeader"

  field :block_roots, 2002,
    repeated: true,
    type: :bytes,
    json_name: "blockRoots",
    deprecated: false

  field :state_roots, 2003,
    repeated: true,
    type: :bytes,
    json_name: "stateRoots",
    deprecated: false

  field :historical_roots, 2004,
    repeated: true,
    type: :bytes,
    json_name: "historicalRoots",
    deprecated: false

  field :eth1_data, 3001, type: Ethereum.Eth.V1.Eth1Data, json_name: "eth1Data"

  field :eth1_data_votes, 3002,
    repeated: true,
    type: Ethereum.Eth.V1.Eth1Data,
    json_name: "eth1DataVotes",
    deprecated: false

  field :eth1_deposit_index, 3003, type: :uint64, json_name: "eth1DepositIndex"
  field :validators, 4001, repeated: true, type: Ethereum.Eth.V1.Validator, deprecated: false
  field :balances, 4002, repeated: true, type: :uint64, deprecated: false

  field :randao_mixes, 5001,
    repeated: true,
    type: :bytes,
    json_name: "randaoMixes",
    deprecated: false

  field :slashings, 6001, repeated: true, type: :uint64, deprecated: false

  field :previous_epoch_participation, 7001,
    type: :bytes,
    json_name: "previousEpochParticipation",
    deprecated: false

  field :current_epoch_participation, 7002,
    type: :bytes,
    json_name: "currentEpochParticipation",
    deprecated: false

  field :justification_bits, 8001, type: :bytes, json_name: "justificationBits", deprecated: false

  field :previous_justified_checkpoint, 8002,
    type: Ethereum.Eth.V1.Checkpoint,
    json_name: "previousJustifiedCheckpoint"

  field :current_justified_checkpoint, 8003,
    type: Ethereum.Eth.V1.Checkpoint,
    json_name: "currentJustifiedCheckpoint"

  field :finalized_checkpoint, 8004,
    type: Ethereum.Eth.V1.Checkpoint,
    json_name: "finalizedCheckpoint"

  field :inactivity_scores, 9001,
    repeated: true,
    type: :uint64,
    json_name: "inactivityScores",
    deprecated: false

  field :current_sync_committee, 9002,
    type: Ethereum.Eth.V2.SyncCommittee,
    json_name: "currentSyncCommittee"

  field :next_sync_committee, 9003,
    type: Ethereum.Eth.V2.SyncCommittee,
    json_name: "nextSyncCommittee"
end

defmodule Ethereum.Eth.V2.BeaconStateBellatrix do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :genesis_time, 1001, type: :uint64, json_name: "genesisTime"

  field :genesis_validators_root, 1002,
    type: :bytes,
    json_name: "genesisValidatorsRoot",
    deprecated: false

  field :slot, 1003, type: :uint64, deprecated: false
  field :fork, 1004, type: Ethereum.Eth.V1.Fork

  field :latest_block_header, 2001,
    type: Ethereum.Eth.V1.BeaconBlockHeader,
    json_name: "latestBlockHeader"

  field :block_roots, 2002,
    repeated: true,
    type: :bytes,
    json_name: "blockRoots",
    deprecated: false

  field :state_roots, 2003,
    repeated: true,
    type: :bytes,
    json_name: "stateRoots",
    deprecated: false

  field :historical_roots, 2004,
    repeated: true,
    type: :bytes,
    json_name: "historicalRoots",
    deprecated: false

  field :eth1_data, 3001, type: Ethereum.Eth.V1.Eth1Data, json_name: "eth1Data"

  field :eth1_data_votes, 3002,
    repeated: true,
    type: Ethereum.Eth.V1.Eth1Data,
    json_name: "eth1DataVotes",
    deprecated: false

  field :eth1_deposit_index, 3003, type: :uint64, json_name: "eth1DepositIndex"
  field :validators, 4001, repeated: true, type: Ethereum.Eth.V1.Validator, deprecated: false
  field :balances, 4002, repeated: true, type: :uint64, deprecated: false

  field :randao_mixes, 5001,
    repeated: true,
    type: :bytes,
    json_name: "randaoMixes",
    deprecated: false

  field :slashings, 6001, repeated: true, type: :uint64, deprecated: false

  field :previous_epoch_participation, 7001,
    type: :bytes,
    json_name: "previousEpochParticipation",
    deprecated: false

  field :current_epoch_participation, 7002,
    type: :bytes,
    json_name: "currentEpochParticipation",
    deprecated: false

  field :justification_bits, 8001, type: :bytes, json_name: "justificationBits", deprecated: false

  field :previous_justified_checkpoint, 8002,
    type: Ethereum.Eth.V1.Checkpoint,
    json_name: "previousJustifiedCheckpoint"

  field :current_justified_checkpoint, 8003,
    type: Ethereum.Eth.V1.Checkpoint,
    json_name: "currentJustifiedCheckpoint"

  field :finalized_checkpoint, 8004,
    type: Ethereum.Eth.V1.Checkpoint,
    json_name: "finalizedCheckpoint"

  field :inactivity_scores, 9001,
    repeated: true,
    type: :uint64,
    json_name: "inactivityScores",
    deprecated: false

  field :current_sync_committee, 9002,
    type: Ethereum.Eth.V2.SyncCommittee,
    json_name: "currentSyncCommittee"

  field :next_sync_committee, 9003,
    type: Ethereum.Eth.V2.SyncCommittee,
    json_name: "nextSyncCommittee"

  field :latest_execution_payload_header, 10001,
    type: Ethereum.Engine.V1.ExecutionPayloadHeader,
    json_name: "latestExecutionPayloadHeader"
end

defmodule Ethereum.Eth.V2.BeaconStateCapella do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :genesis_time, 1001, type: :uint64, json_name: "genesisTime"

  field :genesis_validators_root, 1002,
    type: :bytes,
    json_name: "genesisValidatorsRoot",
    deprecated: false

  field :slot, 1003, type: :uint64, deprecated: false
  field :fork, 1004, type: Ethereum.Eth.V1.Fork

  field :latest_block_header, 2001,
    type: Ethereum.Eth.V1.BeaconBlockHeader,
    json_name: "latestBlockHeader"

  field :block_roots, 2002,
    repeated: true,
    type: :bytes,
    json_name: "blockRoots",
    deprecated: false

  field :state_roots, 2003,
    repeated: true,
    type: :bytes,
    json_name: "stateRoots",
    deprecated: false

  field :historical_roots, 2004,
    repeated: true,
    type: :bytes,
    json_name: "historicalRoots",
    deprecated: false

  field :eth1_data, 3001, type: Ethereum.Eth.V1.Eth1Data, json_name: "eth1Data"

  field :eth1_data_votes, 3002,
    repeated: true,
    type: Ethereum.Eth.V1.Eth1Data,
    json_name: "eth1DataVotes",
    deprecated: false

  field :eth1_deposit_index, 3003, type: :uint64, json_name: "eth1DepositIndex"
  field :validators, 4001, repeated: true, type: Ethereum.Eth.V1.Validator, deprecated: false
  field :balances, 4002, repeated: true, type: :uint64, deprecated: false

  field :randao_mixes, 5001,
    repeated: true,
    type: :bytes,
    json_name: "randaoMixes",
    deprecated: false

  field :slashings, 6001, repeated: true, type: :uint64, deprecated: false

  field :previous_epoch_participation, 7001,
    type: :bytes,
    json_name: "previousEpochParticipation",
    deprecated: false

  field :current_epoch_participation, 7002,
    type: :bytes,
    json_name: "currentEpochParticipation",
    deprecated: false

  field :justification_bits, 8001, type: :bytes, json_name: "justificationBits", deprecated: false

  field :previous_justified_checkpoint, 8002,
    type: Ethereum.Eth.V1.Checkpoint,
    json_name: "previousJustifiedCheckpoint"

  field :current_justified_checkpoint, 8003,
    type: Ethereum.Eth.V1.Checkpoint,
    json_name: "currentJustifiedCheckpoint"

  field :finalized_checkpoint, 8004,
    type: Ethereum.Eth.V1.Checkpoint,
    json_name: "finalizedCheckpoint"

  field :inactivity_scores, 9001,
    repeated: true,
    type: :uint64,
    json_name: "inactivityScores",
    deprecated: false

  field :current_sync_committee, 9002,
    type: Ethereum.Eth.V2.SyncCommittee,
    json_name: "currentSyncCommittee"

  field :next_sync_committee, 9003,
    type: Ethereum.Eth.V2.SyncCommittee,
    json_name: "nextSyncCommittee"

  field :latest_execution_payload_header, 10001,
    type: Ethereum.Engine.V1.ExecutionPayloadHeaderCapella,
    json_name: "latestExecutionPayloadHeader"

  field :next_withdrawal_index, 11001, type: :uint64, json_name: "nextWithdrawalIndex"

  field :next_withdrawal_validator_index, 11002,
    type: :uint64,
    json_name: "nextWithdrawalValidatorIndex",
    deprecated: false

  field :historical_summaries, 11003,
    repeated: true,
    type: Ethereum.Eth.V2.HistoricalSummary,
    json_name: "historicalSummaries",
    deprecated: false
end

defmodule Ethereum.Eth.V2.BeaconStateDeneb do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :genesis_time, 1001, type: :uint64, json_name: "genesisTime"

  field :genesis_validators_root, 1002,
    type: :bytes,
    json_name: "genesisValidatorsRoot",
    deprecated: false

  field :slot, 1003, type: :uint64, deprecated: false
  field :fork, 1004, type: Ethereum.Eth.V1.Fork

  field :latest_block_header, 2001,
    type: Ethereum.Eth.V1.BeaconBlockHeader,
    json_name: "latestBlockHeader"

  field :block_roots, 2002,
    repeated: true,
    type: :bytes,
    json_name: "blockRoots",
    deprecated: false

  field :state_roots, 2003,
    repeated: true,
    type: :bytes,
    json_name: "stateRoots",
    deprecated: false

  field :historical_roots, 2004,
    repeated: true,
    type: :bytes,
    json_name: "historicalRoots",
    deprecated: false

  field :eth1_data, 3001, type: Ethereum.Eth.V1.Eth1Data, json_name: "eth1Data"

  field :eth1_data_votes, 3002,
    repeated: true,
    type: Ethereum.Eth.V1.Eth1Data,
    json_name: "eth1DataVotes",
    deprecated: false

  field :eth1_deposit_index, 3003, type: :uint64, json_name: "eth1DepositIndex"
  field :validators, 4001, repeated: true, type: Ethereum.Eth.V1.Validator, deprecated: false
  field :balances, 4002, repeated: true, type: :uint64, deprecated: false

  field :randao_mixes, 5001,
    repeated: true,
    type: :bytes,
    json_name: "randaoMixes",
    deprecated: false

  field :slashings, 6001, repeated: true, type: :uint64, deprecated: false

  field :previous_epoch_participation, 7001,
    type: :bytes,
    json_name: "previousEpochParticipation",
    deprecated: false

  field :current_epoch_participation, 7002,
    type: :bytes,
    json_name: "currentEpochParticipation",
    deprecated: false

  field :justification_bits, 8001, type: :bytes, json_name: "justificationBits", deprecated: false

  field :previous_justified_checkpoint, 8002,
    type: Ethereum.Eth.V1.Checkpoint,
    json_name: "previousJustifiedCheckpoint"

  field :current_justified_checkpoint, 8003,
    type: Ethereum.Eth.V1.Checkpoint,
    json_name: "currentJustifiedCheckpoint"

  field :finalized_checkpoint, 8004,
    type: Ethereum.Eth.V1.Checkpoint,
    json_name: "finalizedCheckpoint"

  field :inactivity_scores, 9001,
    repeated: true,
    type: :uint64,
    json_name: "inactivityScores",
    deprecated: false

  field :current_sync_committee, 9002,
    type: Ethereum.Eth.V2.SyncCommittee,
    json_name: "currentSyncCommittee"

  field :next_sync_committee, 9003,
    type: Ethereum.Eth.V2.SyncCommittee,
    json_name: "nextSyncCommittee"

  field :latest_execution_payload_header, 10001,
    type: Ethereum.Engine.V1.ExecutionPayloadHeaderDeneb,
    json_name: "latestExecutionPayloadHeader"

  field :next_withdrawal_index, 11001, type: :uint64, json_name: "nextWithdrawalIndex"

  field :next_withdrawal_validator_index, 11002,
    type: :uint64,
    json_name: "nextWithdrawalValidatorIndex",
    deprecated: false

  field :historical_summaries, 11003,
    repeated: true,
    type: Ethereum.Eth.V2.HistoricalSummary,
    json_name: "historicalSummaries",
    deprecated: false
end

defmodule Ethereum.Eth.V2.HistoricalSummary do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :block_summary_root, 1, type: :bytes, json_name: "blockSummaryRoot", deprecated: false
  field :state_summary_root, 2, type: :bytes, json_name: "stateSummaryRoot", deprecated: false
end

defmodule Ethereum.Eth.V2.BeaconStateSSZResponseV2 do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :version, 1, type: Ethereum.Eth.V2.Version, enum: true
  field :data, 2, type: :bytes
end

defmodule Ethereum.Eth.V2.ForkChoiceHeadsResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :data, 1, repeated: true, type: Ethereum.Eth.V2.ForkChoiceHead
end

defmodule Ethereum.Eth.V2.ForkChoiceHead do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :root, 1, type: :bytes, deprecated: false
  field :slot, 2, type: :uint64, deprecated: false
  field :execution_optimistic, 3, type: :bool, json_name: "executionOptimistic"
end