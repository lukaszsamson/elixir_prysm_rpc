defmodule Ethereum.Eth.V1alpha1.BlindedBlobSidecars do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :sidecars, 1,
    repeated: true,
    type: Ethereum.Eth.V1alpha1.BlindedBlobSidecar,
    deprecated: false
end

defmodule Ethereum.Eth.V1alpha1.BlindedBlobSidecar do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :block_root, 1, type: :bytes, json_name: "blockRoot", deprecated: false
  field :index, 2, type: :uint64
  field :slot, 3, type: :uint64, deprecated: false
  field :block_parent_root, 4, type: :bytes, json_name: "blockParentRoot", deprecated: false
  field :proposer_index, 5, type: :uint64, json_name: "proposerIndex", deprecated: false
  field :blob_root, 6, type: :bytes, json_name: "blobRoot", deprecated: false
  field :kzg_commitment, 7, type: :bytes, json_name: "kzgCommitment", deprecated: false
  field :kzg_proof, 8, type: :bytes, json_name: "kzgProof", deprecated: false
end

defmodule Ethereum.Eth.V1alpha1.SignedBlindedBlobSidecar do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :message, 1, type: Ethereum.Eth.V1alpha1.BlindedBlobSidecar
  field :signature, 2, type: :bytes, deprecated: false
end

defmodule Ethereum.Eth.V1alpha1.BlobIdentifier do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :block_root, 1, type: :bytes, json_name: "blockRoot", deprecated: false
  field :index, 2, type: :uint64
end