defmodule Ethereum.Eth.V1.BeaconState do
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

  field :previous_epoch_attestations, 7001,
    repeated: true,
    type: Ethereum.Eth.V1.PendingAttestation,
    json_name: "previousEpochAttestations",
    deprecated: false

  field :current_epoch_attestations, 7002,
    repeated: true,
    type: Ethereum.Eth.V1.PendingAttestation,
    json_name: "currentEpochAttestations",
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
end

defmodule Ethereum.Eth.V1.PendingAttestation do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :aggregation_bits, 1, type: :bytes, json_name: "aggregationBits", deprecated: false
  field :data, 2, type: Ethereum.Eth.V1.AttestationData
  field :inclusion_delay, 3, type: :uint64, json_name: "inclusionDelay", deprecated: false
  field :proposer_index, 4, type: :uint64, json_name: "proposerIndex", deprecated: false
end

defmodule Ethereum.Eth.V1.Committee do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :index, 1, type: :uint64, deprecated: false
  field :slot, 2, type: :uint64, deprecated: false
  field :validators, 3, repeated: true, type: :uint64, deprecated: false
end

defmodule Ethereum.Eth.V1.Fork do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :previous_version, 1, type: :bytes, json_name: "previousVersion", deprecated: false
  field :current_version, 2, type: :bytes, json_name: "currentVersion", deprecated: false
  field :epoch, 3, type: :uint64, deprecated: false
end

defmodule Ethereum.Eth.V1.ForkChoiceHeadsResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :data, 1, repeated: true, type: Ethereum.Eth.V1.ForkChoiceHead
end

defmodule Ethereum.Eth.V1.ForkChoiceHead do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :root, 1, type: :bytes, deprecated: false
  field :slot, 2, type: :uint64, deprecated: false
end

defmodule Ethereum.Eth.V1.BeaconStateResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :data, 1, type: Ethereum.Eth.V1.BeaconState
end