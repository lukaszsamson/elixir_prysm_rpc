defmodule Ethereum.Eth.V1alpha1.ETH1ChainData do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :current_eth1_data, 1,
    type: Ethereum.Eth.V1alpha1.LatestETH1Data,
    json_name: "currentEth1Data"

  field :chainstart_data, 2,
    type: Ethereum.Eth.V1alpha1.ChainStartData,
    json_name: "chainstartData"

  field :beacon_state, 3, type: Ethereum.Eth.V1alpha1.BeaconState, json_name: "beaconState"
  field :trie, 4, type: Ethereum.Eth.V1alpha1.SparseMerkleTrie

  field :deposit_containers, 5,
    repeated: true,
    type: Ethereum.Eth.V1alpha1.DepositContainer,
    json_name: "depositContainers"

  field :deposit_snapshot, 6,
    type: Ethereum.Eth.V1alpha1.DepositSnapshot,
    json_name: "depositSnapshot"
end

defmodule Ethereum.Eth.V1alpha1.DepositSnapshot do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :finalized, 1, repeated: true, type: :bytes
  field :deposit_root, 2, type: :bytes, json_name: "depositRoot"
  field :deposit_count, 3, type: :uint64, json_name: "depositCount"
  field :execution_hash, 4, type: :bytes, json_name: "executionHash"
  field :execution_depth, 5, type: :uint64, json_name: "executionDepth"
end

defmodule Ethereum.Eth.V1alpha1.LatestETH1Data do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :block_height, 2, type: :uint64, json_name: "blockHeight"
  field :block_time, 3, type: :uint64, json_name: "blockTime"
  field :block_hash, 4, type: :bytes, json_name: "blockHash"
  field :last_requested_block, 5, type: :uint64, json_name: "lastRequestedBlock"
end

defmodule Ethereum.Eth.V1alpha1.ChainStartData do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :chainstarted, 1, type: :bool
  field :genesis_time, 2, type: :uint64, json_name: "genesisTime"
  field :genesis_block, 3, type: :uint64, json_name: "genesisBlock"
  field :eth1_data, 4, type: Ethereum.Eth.V1alpha1.Eth1Data, json_name: "eth1Data"

  field :chainstart_deposits, 5,
    repeated: true,
    type: Ethereum.Eth.V1alpha1.Deposit,
    json_name: "chainstartDeposits"
end

defmodule Ethereum.Eth.V1alpha1.SparseMerkleTrie do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :depth, 1, type: :uint64
  field :layers, 2, repeated: true, type: Ethereum.Eth.V1alpha1.TrieLayer
  field :original_items, 3, repeated: true, type: :bytes, json_name: "originalItems"
end

defmodule Ethereum.Eth.V1alpha1.TrieLayer do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :layer, 1, repeated: true, type: :bytes
end

defmodule Ethereum.Eth.V1alpha1.DepositContainer do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :index, 1, type: :int64
  field :eth1_block_height, 2, type: :uint64, json_name: "eth1BlockHeight"
  field :deposit, 3, type: Ethereum.Eth.V1alpha1.Deposit
  field :deposit_root, 4, type: :bytes, json_name: "depositRoot"
end