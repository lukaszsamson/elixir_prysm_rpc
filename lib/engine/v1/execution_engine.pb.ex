defmodule Ethereum.Engine.V1.PayloadStatus.Status do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :UNKNOWN, 0
  field :VALID, 1
  field :INVALID, 2
  field :SYNCING, 3
  field :ACCEPTED, 4
  field :INVALID_BLOCK_HASH, 5
end

defmodule Ethereum.Engine.V1.ExecutionPayload do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :parent_hash, 1, type: :bytes, json_name: "parentHash", deprecated: false
  field :fee_recipient, 2, type: :bytes, json_name: "feeRecipient", deprecated: false
  field :state_root, 3, type: :bytes, json_name: "stateRoot", deprecated: false
  field :receipts_root, 4, type: :bytes, json_name: "receiptsRoot", deprecated: false
  field :logs_bloom, 5, type: :bytes, json_name: "logsBloom", deprecated: false
  field :prev_randao, 6, type: :bytes, json_name: "prevRandao", deprecated: false
  field :block_number, 7, type: :uint64, json_name: "blockNumber"
  field :gas_limit, 8, type: :uint64, json_name: "gasLimit"
  field :gas_used, 9, type: :uint64, json_name: "gasUsed"
  field :timestamp, 10, type: :uint64
  field :extra_data, 11, type: :bytes, json_name: "extraData", deprecated: false
  field :base_fee_per_gas, 12, type: :bytes, json_name: "baseFeePerGas", deprecated: false
  field :block_hash, 13, type: :bytes, json_name: "blockHash", deprecated: false
  field :transactions, 14, repeated: true, type: :bytes, deprecated: false
end

defmodule Ethereum.Engine.V1.ExecutionPayloadBodyV1 do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :transactions, 1, repeated: true, type: :bytes
  field :withdrawals, 2, repeated: true, type: Ethereum.Engine.V1.Withdrawal
end

defmodule Ethereum.Engine.V1.ExecutionPayloadCapella do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :parent_hash, 1, type: :bytes, json_name: "parentHash", deprecated: false
  field :fee_recipient, 2, type: :bytes, json_name: "feeRecipient", deprecated: false
  field :state_root, 3, type: :bytes, json_name: "stateRoot", deprecated: false
  field :receipts_root, 4, type: :bytes, json_name: "receiptsRoot", deprecated: false
  field :logs_bloom, 5, type: :bytes, json_name: "logsBloom", deprecated: false
  field :prev_randao, 6, type: :bytes, json_name: "prevRandao", deprecated: false
  field :block_number, 7, type: :uint64, json_name: "blockNumber"
  field :gas_limit, 8, type: :uint64, json_name: "gasLimit"
  field :gas_used, 9, type: :uint64, json_name: "gasUsed"
  field :timestamp, 10, type: :uint64
  field :extra_data, 11, type: :bytes, json_name: "extraData", deprecated: false
  field :base_fee_per_gas, 12, type: :bytes, json_name: "baseFeePerGas", deprecated: false
  field :block_hash, 13, type: :bytes, json_name: "blockHash", deprecated: false
  field :transactions, 14, repeated: true, type: :bytes, deprecated: false
  field :withdrawals, 15, repeated: true, type: Ethereum.Engine.V1.Withdrawal, deprecated: false
end

defmodule Ethereum.Engine.V1.ExecutionPayloadCapellaWithValue do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :payload, 1, type: Ethereum.Engine.V1.ExecutionPayloadCapella
  field :value, 2, type: :bytes
end

defmodule Ethereum.Engine.V1.ExecutionPayloadHeader do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :parent_hash, 1, type: :bytes, json_name: "parentHash", deprecated: false
  field :fee_recipient, 2, type: :bytes, json_name: "feeRecipient", deprecated: false
  field :state_root, 3, type: :bytes, json_name: "stateRoot", deprecated: false
  field :receipts_root, 4, type: :bytes, json_name: "receiptsRoot", deprecated: false
  field :logs_bloom, 5, type: :bytes, json_name: "logsBloom", deprecated: false
  field :prev_randao, 6, type: :bytes, json_name: "prevRandao", deprecated: false
  field :block_number, 7, type: :uint64, json_name: "blockNumber"
  field :gas_limit, 8, type: :uint64, json_name: "gasLimit"
  field :gas_used, 9, type: :uint64, json_name: "gasUsed"
  field :timestamp, 10, type: :uint64
  field :extra_data, 11, type: :bytes, json_name: "extraData", deprecated: false
  field :base_fee_per_gas, 12, type: :bytes, json_name: "baseFeePerGas", deprecated: false
  field :block_hash, 13, type: :bytes, json_name: "blockHash", deprecated: false
  field :transactions_root, 14, type: :bytes, json_name: "transactionsRoot", deprecated: false
end

defmodule Ethereum.Engine.V1.ExecutionPayloadHeaderCapella do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :parent_hash, 1, type: :bytes, json_name: "parentHash", deprecated: false
  field :fee_recipient, 2, type: :bytes, json_name: "feeRecipient", deprecated: false
  field :state_root, 3, type: :bytes, json_name: "stateRoot", deprecated: false
  field :receipts_root, 4, type: :bytes, json_name: "receiptsRoot", deprecated: false
  field :logs_bloom, 5, type: :bytes, json_name: "logsBloom", deprecated: false
  field :prev_randao, 6, type: :bytes, json_name: "prevRandao", deprecated: false
  field :block_number, 7, type: :uint64, json_name: "blockNumber"
  field :gas_limit, 8, type: :uint64, json_name: "gasLimit"
  field :gas_used, 9, type: :uint64, json_name: "gasUsed"
  field :timestamp, 10, type: :uint64
  field :extra_data, 11, type: :bytes, json_name: "extraData", deprecated: false
  field :base_fee_per_gas, 12, type: :bytes, json_name: "baseFeePerGas", deprecated: false
  field :block_hash, 13, type: :bytes, json_name: "blockHash", deprecated: false
  field :transactions_root, 14, type: :bytes, json_name: "transactionsRoot", deprecated: false
  field :withdrawals_root, 15, type: :bytes, json_name: "withdrawalsRoot", deprecated: false
end

defmodule Ethereum.Engine.V1.TransitionConfiguration do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :terminal_total_difficulty, 1, type: :string, json_name: "terminalTotalDifficulty"
  field :terminal_block_hash, 2, type: :bytes, json_name: "terminalBlockHash"
  field :terminal_block_number, 3, type: :bytes, json_name: "terminalBlockNumber"
end

defmodule Ethereum.Engine.V1.PayloadAttributes do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :timestamp, 1, type: :uint64
  field :prev_randao, 2, type: :bytes, json_name: "prevRandao", deprecated: false

  field :suggested_fee_recipient, 3,
    type: :bytes,
    json_name: "suggestedFeeRecipient",
    deprecated: false
end

defmodule Ethereum.Engine.V1.PayloadAttributesV2 do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :timestamp, 1, type: :uint64
  field :prev_randao, 2, type: :bytes, json_name: "prevRandao", deprecated: false

  field :suggested_fee_recipient, 3,
    type: :bytes,
    json_name: "suggestedFeeRecipient",
    deprecated: false

  field :withdrawals, 4, repeated: true, type: Ethereum.Engine.V1.Withdrawal, deprecated: false
end

defmodule Ethereum.Engine.V1.PayloadStatus do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :status, 1, type: Ethereum.Engine.V1.PayloadStatus.Status, enum: true
  field :latest_valid_hash, 2, type: :bytes, json_name: "latestValidHash", deprecated: false
  field :validation_error, 3, type: :string, json_name: "validationError"
end

defmodule Ethereum.Engine.V1.ForkchoiceState do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :head_block_hash, 1, type: :bytes, json_name: "headBlockHash", deprecated: false
  field :safe_block_hash, 2, type: :bytes, json_name: "safeBlockHash", deprecated: false
  field :finalized_block_hash, 3, type: :bytes, json_name: "finalizedBlockHash", deprecated: false
end

defmodule Ethereum.Engine.V1.Withdrawal do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :index, 1, type: :uint64
  field :validator_index, 2, type: :uint64, json_name: "validatorIndex", deprecated: false
  field :address, 3, type: :bytes, deprecated: false
  field :amount, 4, type: :uint64
end

defmodule Ethereum.Engine.V1.BlobsBundle do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :block_hash, 1, type: :bytes, json_name: "blockHash", deprecated: false

  field :kzg_commitments, 2,
    repeated: true,
    type: :bytes,
    json_name: "kzgCommitments",
    deprecated: false

  field :blobs, 3, repeated: true, type: Ethereum.Engine.V1.Blob, deprecated: false
  field :aggregated_proof, 4, type: :bytes, json_name: "aggregatedProof", deprecated: false
end

defmodule Ethereum.Engine.V1.Blob do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :data, 1, type: :bytes, deprecated: false
end