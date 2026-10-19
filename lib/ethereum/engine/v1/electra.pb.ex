defmodule Ethereum.Engine.V1.WithdrawalRequest do
  @moduledoc false

  use Protobuf,
    full_name: "ethereum.engine.v1.WithdrawalRequest",
    protoc_gen_elixir_version: "0.17.1",
    syntax: :proto3

  field :source_address, 1, type: :bytes, json_name: "sourceAddress", deprecated: false
  field :validator_pubkey, 2, type: :bytes, json_name: "validatorPubkey", deprecated: false
  field :amount, 3, type: :uint64
end

defmodule Ethereum.Engine.V1.DepositRequest do
  @moduledoc false

  use Protobuf,
    full_name: "ethereum.engine.v1.DepositRequest",
    protoc_gen_elixir_version: "0.17.1",
    syntax: :proto3

  field :pubkey, 1, type: :bytes, deprecated: false

  field :withdrawal_credentials, 2,
    type: :bytes,
    json_name: "withdrawalCredentials",
    deprecated: false

  field :amount, 3, type: :uint64
  field :signature, 4, type: :bytes, deprecated: false
  field :index, 5, type: :uint64
end

defmodule Ethereum.Engine.V1.ConsolidationRequest do
  @moduledoc false

  use Protobuf,
    full_name: "ethereum.engine.v1.ConsolidationRequest",
    protoc_gen_elixir_version: "0.17.1",
    syntax: :proto3

  field :source_address, 1, type: :bytes, json_name: "sourceAddress", deprecated: false
  field :source_pubkey, 2, type: :bytes, json_name: "sourcePubkey", deprecated: false
  field :target_pubkey, 3, type: :bytes, json_name: "targetPubkey", deprecated: false
end

defmodule Ethereum.Engine.V1.ExecutionRequests do
  @moduledoc false

  use Protobuf,
    full_name: "ethereum.engine.v1.ExecutionRequests",
    protoc_gen_elixir_version: "0.17.1",
    syntax: :proto3

  field :deposits, 1, repeated: true, type: Ethereum.Engine.V1.DepositRequest, deprecated: false

  field :withdrawals, 2,
    repeated: true,
    type: Ethereum.Engine.V1.WithdrawalRequest,
    deprecated: false

  field :consolidations, 3,
    repeated: true,
    type: Ethereum.Engine.V1.ConsolidationRequest,
    deprecated: false
end

defmodule Ethereum.Engine.V1.ExecutionBundleElectra do
  @moduledoc false

  use Protobuf,
    full_name: "ethereum.engine.v1.ExecutionBundleElectra",
    protoc_gen_elixir_version: "0.17.1",
    syntax: :proto3

  field :payload, 1, type: Ethereum.Engine.V1.ExecutionPayloadDeneb
  field :value, 2, type: :bytes
  field :blobs_bundle, 3, type: Ethereum.Engine.V1.BlobsBundle, json_name: "blobsBundle"
  field :should_override_builder, 4, type: :bool, json_name: "shouldOverrideBuilder"
  field :execution_requests, 5, repeated: true, type: :bytes, json_name: "executionRequests"
end
