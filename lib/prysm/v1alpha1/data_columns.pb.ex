defmodule Ethereum.Eth.V1alpha1.DataColumnSidecar do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.13.0"

  field :column_index, 1, type: :uint64, json_name: "columnIndex"
  field :data_column, 2, repeated: true, type: :bytes, json_name: "dataColumn", deprecated: false

  field :kzg_commitments, 3,
    repeated: true,
    type: :bytes,
    json_name: "kzgCommitments",
    deprecated: false

  field :kzg_proof, 4, repeated: true, type: :bytes, json_name: "kzgProof", deprecated: false

  field :signed_block_header, 5,
    type: Ethereum.Eth.V1alpha1.SignedBeaconBlockHeader,
    json_name: "signedBlockHeader"

  field :kzg_commitments_inclusion_proof, 6,
    repeated: true,
    type: :bytes,
    json_name: "kzgCommitmentsInclusionProof",
    deprecated: false
end

defmodule Ethereum.Eth.V1alpha1.DataColumnIdentifier do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.13.0"

  field :block_root, 1, type: :bytes, json_name: "blockRoot", deprecated: false
  field :column_index, 2, type: :uint64, json_name: "columnIndex"
end