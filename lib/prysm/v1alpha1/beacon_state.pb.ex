defmodule Ethereum.Eth.V1alpha1.BeaconState do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :genesis_time, 1001, type: :uint64, json_name: "genesisTime"

  field :genesis_validators_root, 1002,
    type: :bytes,
    json_name: "genesisValidatorsRoot",
    deprecated: false

  field :slot, 1003, type: :uint64, deprecated: false
  field :fork, 1004, type: Ethereum.Eth.V1alpha1.Fork

  field :latest_block_header, 2001,
    type: Ethereum.Eth.V1alpha1.BeaconBlockHeader,
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

  field :eth1_data, 3001, type: Ethereum.Eth.V1alpha1.Eth1Data, json_name: "eth1Data"

  field :eth1_data_votes, 3002,
    repeated: true,
    type: Ethereum.Eth.V1alpha1.Eth1Data,
    json_name: "eth1DataVotes",
    deprecated: false

  field :eth1_deposit_index, 3003, type: :uint64, json_name: "eth1DepositIndex"

  field :validators, 4001,
    repeated: true,
    type: Ethereum.Eth.V1alpha1.Validator,
    deprecated: false

  field :balances, 4002, repeated: true, type: :uint64, deprecated: false

  field :randao_mixes, 5001,
    repeated: true,
    type: :bytes,
    json_name: "randaoMixes",
    deprecated: false

  field :slashings, 6001, repeated: true, type: :uint64, deprecated: false

  field :previous_epoch_attestations, 7001,
    repeated: true,
    type: Ethereum.Eth.V1alpha1.PendingAttestation,
    json_name: "previousEpochAttestations",
    deprecated: false

  field :current_epoch_attestations, 7002,
    repeated: true,
    type: Ethereum.Eth.V1alpha1.PendingAttestation,
    json_name: "currentEpochAttestations",
    deprecated: false

  field :justification_bits, 8001, type: :bytes, json_name: "justificationBits", deprecated: false

  field :previous_justified_checkpoint, 8002,
    type: Ethereum.Eth.V1alpha1.Checkpoint,
    json_name: "previousJustifiedCheckpoint"

  field :current_justified_checkpoint, 8003,
    type: Ethereum.Eth.V1alpha1.Checkpoint,
    json_name: "currentJustifiedCheckpoint"

  field :finalized_checkpoint, 8004,
    type: Ethereum.Eth.V1alpha1.Checkpoint,
    json_name: "finalizedCheckpoint"
end

defmodule Ethereum.Eth.V1alpha1.BeaconStateAltair do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :genesis_time, 1001, type: :uint64, json_name: "genesisTime"

  field :genesis_validators_root, 1002,
    type: :bytes,
    json_name: "genesisValidatorsRoot",
    deprecated: false

  field :slot, 1003, type: :uint64, deprecated: false
  field :fork, 1004, type: Ethereum.Eth.V1alpha1.Fork

  field :latest_block_header, 2001,
    type: Ethereum.Eth.V1alpha1.BeaconBlockHeader,
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

  field :eth1_data, 3001, type: Ethereum.Eth.V1alpha1.Eth1Data, json_name: "eth1Data"

  field :eth1_data_votes, 3002,
    repeated: true,
    type: Ethereum.Eth.V1alpha1.Eth1Data,
    json_name: "eth1DataVotes",
    deprecated: false

  field :eth1_deposit_index, 3003, type: :uint64, json_name: "eth1DepositIndex"

  field :validators, 4001,
    repeated: true,
    type: Ethereum.Eth.V1alpha1.Validator,
    deprecated: false

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
    type: Ethereum.Eth.V1alpha1.Checkpoint,
    json_name: "previousJustifiedCheckpoint"

  field :current_justified_checkpoint, 8003,
    type: Ethereum.Eth.V1alpha1.Checkpoint,
    json_name: "currentJustifiedCheckpoint"

  field :finalized_checkpoint, 8004,
    type: Ethereum.Eth.V1alpha1.Checkpoint,
    json_name: "finalizedCheckpoint"

  field :inactivity_scores, 9001,
    repeated: true,
    type: :uint64,
    json_name: "inactivityScores",
    deprecated: false

  field :current_sync_committee, 9002,
    type: Ethereum.Eth.V1alpha1.SyncCommittee,
    json_name: "currentSyncCommittee"

  field :next_sync_committee, 9003,
    type: Ethereum.Eth.V1alpha1.SyncCommittee,
    json_name: "nextSyncCommittee"
end

defmodule Ethereum.Eth.V1alpha1.Fork do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :previous_version, 1, type: :bytes, json_name: "previousVersion", deprecated: false
  field :current_version, 2, type: :bytes, json_name: "currentVersion", deprecated: false
  field :epoch, 3, type: :uint64, deprecated: false
end

defmodule Ethereum.Eth.V1alpha1.PendingAttestation do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :aggregation_bits, 1, type: :bytes, json_name: "aggregationBits", deprecated: false
  field :data, 2, type: Ethereum.Eth.V1alpha1.AttestationData
  field :inclusion_delay, 3, type: :uint64, json_name: "inclusionDelay", deprecated: false
  field :proposer_index, 4, type: :uint64, json_name: "proposerIndex", deprecated: false
end

defmodule Ethereum.Eth.V1alpha1.HistoricalBatch do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :block_roots, 1, repeated: true, type: :bytes, json_name: "blockRoots", deprecated: false
  field :state_roots, 2, repeated: true, type: :bytes, json_name: "stateRoots", deprecated: false
end

defmodule Ethereum.Eth.V1alpha1.StateSummary do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :slot, 1, type: :uint64, deprecated: false
  field :root, 2, type: :bytes
end

defmodule Ethereum.Eth.V1alpha1.SigningData do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :object_root, 1, type: :bytes, json_name: "objectRoot", deprecated: false
  field :domain, 2, type: :bytes, deprecated: false
end

defmodule Ethereum.Eth.V1alpha1.ForkData do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :current_version, 4, type: :bytes, json_name: "currentVersion", deprecated: false

  field :genesis_validators_root, 2,
    type: :bytes,
    json_name: "genesisValidatorsRoot",
    deprecated: false
end

defmodule Ethereum.Eth.V1alpha1.CheckPtInfo do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :seed, 1, type: :bytes
  field :genesis_root, 2, type: :bytes, json_name: "genesisRoot"
  field :active_indices, 3, repeated: true, type: :uint64, json_name: "activeIndices"
  field :pub_keys, 4, repeated: true, type: :bytes, json_name: "pubKeys"
  field :fork, 5, type: Ethereum.Eth.V1alpha1.Fork
end

defmodule Ethereum.Eth.V1alpha1.DepositMessage do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :public_key, 1, type: :bytes, json_name: "publicKey", deprecated: false

  field :withdrawal_credentials, 2,
    type: :bytes,
    json_name: "withdrawalCredentials",
    deprecated: false

  field :amount, 3, type: :uint64
end

defmodule Ethereum.Eth.V1alpha1.SyncCommittee do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :pubkeys, 1, repeated: true, type: :bytes, deprecated: false
  field :aggregate_pubkey, 2, type: :bytes, json_name: "aggregatePubkey", deprecated: false
end

defmodule Ethereum.Eth.V1alpha1.SyncAggregatorSelectionData do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :slot, 1, type: :uint64, deprecated: false
  field :subcommittee_index, 2, type: :uint64, json_name: "subcommitteeIndex"
end

defmodule Ethereum.Eth.V1alpha1.BeaconStateBellatrix do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :genesis_time, 1001, type: :uint64, json_name: "genesisTime"

  field :genesis_validators_root, 1002,
    type: :bytes,
    json_name: "genesisValidatorsRoot",
    deprecated: false

  field :slot, 1003, type: :uint64, deprecated: false
  field :fork, 1004, type: Ethereum.Eth.V1alpha1.Fork

  field :latest_block_header, 2001,
    type: Ethereum.Eth.V1alpha1.BeaconBlockHeader,
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

  field :eth1_data, 3001, type: Ethereum.Eth.V1alpha1.Eth1Data, json_name: "eth1Data"

  field :eth1_data_votes, 3002,
    repeated: true,
    type: Ethereum.Eth.V1alpha1.Eth1Data,
    json_name: "eth1DataVotes",
    deprecated: false

  field :eth1_deposit_index, 3003, type: :uint64, json_name: "eth1DepositIndex"

  field :validators, 4001,
    repeated: true,
    type: Ethereum.Eth.V1alpha1.Validator,
    deprecated: false

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
    type: Ethereum.Eth.V1alpha1.Checkpoint,
    json_name: "previousJustifiedCheckpoint"

  field :current_justified_checkpoint, 8003,
    type: Ethereum.Eth.V1alpha1.Checkpoint,
    json_name: "currentJustifiedCheckpoint"

  field :finalized_checkpoint, 8004,
    type: Ethereum.Eth.V1alpha1.Checkpoint,
    json_name: "finalizedCheckpoint"

  field :inactivity_scores, 9001,
    repeated: true,
    type: :uint64,
    json_name: "inactivityScores",
    deprecated: false

  field :current_sync_committee, 9002,
    type: Ethereum.Eth.V1alpha1.SyncCommittee,
    json_name: "currentSyncCommittee"

  field :next_sync_committee, 9003,
    type: Ethereum.Eth.V1alpha1.SyncCommittee,
    json_name: "nextSyncCommittee"

  field :latest_execution_payload_header, 10001,
    type: Ethereum.Engine.V1.ExecutionPayloadHeader,
    json_name: "latestExecutionPayloadHeader"
end

defmodule Ethereum.Eth.V1alpha1.BeaconStateCapella do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :genesis_time, 1001, type: :uint64, json_name: "genesisTime"

  field :genesis_validators_root, 1002,
    type: :bytes,
    json_name: "genesisValidatorsRoot",
    deprecated: false

  field :slot, 1003, type: :uint64, deprecated: false
  field :fork, 1004, type: Ethereum.Eth.V1alpha1.Fork

  field :latest_block_header, 2001,
    type: Ethereum.Eth.V1alpha1.BeaconBlockHeader,
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

  field :eth1_data, 3001, type: Ethereum.Eth.V1alpha1.Eth1Data, json_name: "eth1Data"

  field :eth1_data_votes, 3002,
    repeated: true,
    type: Ethereum.Eth.V1alpha1.Eth1Data,
    json_name: "eth1DataVotes",
    deprecated: false

  field :eth1_deposit_index, 3003, type: :uint64, json_name: "eth1DepositIndex"

  field :validators, 4001,
    repeated: true,
    type: Ethereum.Eth.V1alpha1.Validator,
    deprecated: false

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
    type: Ethereum.Eth.V1alpha1.Checkpoint,
    json_name: "previousJustifiedCheckpoint"

  field :current_justified_checkpoint, 8003,
    type: Ethereum.Eth.V1alpha1.Checkpoint,
    json_name: "currentJustifiedCheckpoint"

  field :finalized_checkpoint, 8004,
    type: Ethereum.Eth.V1alpha1.Checkpoint,
    json_name: "finalizedCheckpoint"

  field :inactivity_scores, 9001,
    repeated: true,
    type: :uint64,
    json_name: "inactivityScores",
    deprecated: false

  field :current_sync_committee, 9002,
    type: Ethereum.Eth.V1alpha1.SyncCommittee,
    json_name: "currentSyncCommittee"

  field :next_sync_committee, 9003,
    type: Ethereum.Eth.V1alpha1.SyncCommittee,
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
    type: Ethereum.Eth.V1alpha1.HistoricalSummary,
    json_name: "historicalSummaries",
    deprecated: false
end

defmodule Ethereum.Eth.V1alpha1.BeaconStateDeneb do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :genesis_time, 1001, type: :uint64, json_name: "genesisTime"

  field :genesis_validators_root, 1002,
    type: :bytes,
    json_name: "genesisValidatorsRoot",
    deprecated: false

  field :slot, 1003, type: :uint64, deprecated: false
  field :fork, 1004, type: Ethereum.Eth.V1alpha1.Fork

  field :latest_block_header, 2001,
    type: Ethereum.Eth.V1alpha1.BeaconBlockHeader,
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

  field :eth1_data, 3001, type: Ethereum.Eth.V1alpha1.Eth1Data, json_name: "eth1Data"

  field :eth1_data_votes, 3002,
    repeated: true,
    type: Ethereum.Eth.V1alpha1.Eth1Data,
    json_name: "eth1DataVotes",
    deprecated: false

  field :eth1_deposit_index, 3003, type: :uint64, json_name: "eth1DepositIndex"

  field :validators, 4001,
    repeated: true,
    type: Ethereum.Eth.V1alpha1.Validator,
    deprecated: false

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
    type: Ethereum.Eth.V1alpha1.Checkpoint,
    json_name: "previousJustifiedCheckpoint"

  field :current_justified_checkpoint, 8003,
    type: Ethereum.Eth.V1alpha1.Checkpoint,
    json_name: "currentJustifiedCheckpoint"

  field :finalized_checkpoint, 8004,
    type: Ethereum.Eth.V1alpha1.Checkpoint,
    json_name: "finalizedCheckpoint"

  field :inactivity_scores, 9001,
    repeated: true,
    type: :uint64,
    json_name: "inactivityScores",
    deprecated: false

  field :current_sync_committee, 9002,
    type: Ethereum.Eth.V1alpha1.SyncCommittee,
    json_name: "currentSyncCommittee"

  field :next_sync_committee, 9003,
    type: Ethereum.Eth.V1alpha1.SyncCommittee,
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
    type: Ethereum.Eth.V1alpha1.HistoricalSummary,
    json_name: "historicalSummaries",
    deprecated: false
end

defmodule Ethereum.Eth.V1alpha1.PowBlock do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :block_hash, 1, type: :bytes, json_name: "blockHash", deprecated: false
  field :parent_hash, 2, type: :bytes, json_name: "parentHash", deprecated: false
  field :total_difficulty, 3, type: :bytes, json_name: "totalDifficulty", deprecated: false
end

defmodule Ethereum.Eth.V1alpha1.HistoricalSummary do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :block_summary_root, 1, type: :bytes, json_name: "blockSummaryRoot", deprecated: false
  field :state_summary_root, 2, type: :bytes, json_name: "stateSummaryRoot", deprecated: false
end