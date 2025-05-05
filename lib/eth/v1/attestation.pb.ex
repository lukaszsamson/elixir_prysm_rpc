defmodule Ethereum.Eth.V1.Attestation do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.13.0"

  field :aggregation_bits, 1, type: :bytes, json_name: "aggregationBits", deprecated: false
  field :data, 2, type: Ethereum.Eth.V1.AttestationData
  field :signature, 3, type: :bytes, deprecated: false
end

defmodule Ethereum.Eth.V1.AggregateAttestationAndProof do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.13.0"

  field :aggregator_index, 1, type: :uint64, json_name: "aggregatorIndex", deprecated: false
  field :aggregate, 3, type: Ethereum.Eth.V1.Attestation
  field :selection_proof, 2, type: :bytes, json_name: "selectionProof", deprecated: false
end

defmodule Ethereum.Eth.V1.SignedAggregateAttestationAndProof do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.13.0"

  field :message, 1, type: Ethereum.Eth.V1.AggregateAttestationAndProof
  field :signature, 2, type: :bytes, deprecated: false
end

defmodule Ethereum.Eth.V1.AttestationData do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.13.0"

  field :slot, 1, type: :uint64, deprecated: false
  field :index, 2, type: :uint64, deprecated: false
  field :beacon_block_root, 3, type: :bytes, json_name: "beaconBlockRoot", deprecated: false
  field :source, 4, type: Ethereum.Eth.V1.Checkpoint
  field :target, 5, type: Ethereum.Eth.V1.Checkpoint
end

defmodule Ethereum.Eth.V1.Checkpoint do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.13.0"

  field :epoch, 1, type: :uint64, deprecated: false
  field :root, 2, type: :bytes, deprecated: false
end