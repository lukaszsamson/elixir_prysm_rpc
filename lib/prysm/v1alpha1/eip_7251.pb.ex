defmodule Ethereum.Eth.V1alpha1.PendingDeposit do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.13.0"

  field :public_key, 1, type: :bytes, json_name: "publicKey", deprecated: false

  field :withdrawal_credentials, 2,
    type: :bytes,
    json_name: "withdrawalCredentials",
    deprecated: false

  field :amount, 3, type: :uint64
  field :signature, 4, type: :bytes, deprecated: false
  field :slot, 5, type: :uint64, deprecated: false
end

defmodule Ethereum.Eth.V1alpha1.PendingPartialWithdrawal do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.13.0"

  field :index, 1, type: :uint64, deprecated: false
  field :amount, 2, type: :uint64
  field :withdrawable_epoch, 3, type: :uint64, json_name: "withdrawableEpoch", deprecated: false
end

defmodule Ethereum.Eth.V1alpha1.PendingConsolidation do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.13.0"

  field :source_index, 1, type: :uint64, json_name: "sourceIndex", deprecated: false
  field :target_index, 2, type: :uint64, json_name: "targetIndex", deprecated: false
end