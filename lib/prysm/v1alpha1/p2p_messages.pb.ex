defmodule Ethereum.Eth.V1alpha1.Status do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.13.0"

  field :fork_digest, 1, type: :bytes, json_name: "forkDigest", deprecated: false
  field :finalized_root, 2, type: :bytes, json_name: "finalizedRoot", deprecated: false
  field :finalized_epoch, 3, type: :uint64, json_name: "finalizedEpoch", deprecated: false
  field :head_root, 4, type: :bytes, json_name: "headRoot", deprecated: false
  field :head_slot, 5, type: :uint64, json_name: "headSlot", deprecated: false
end

defmodule Ethereum.Eth.V1alpha1.BeaconBlocksByRangeRequest do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.13.0"

  field :start_slot, 1, type: :uint64, json_name: "startSlot", deprecated: false
  field :count, 2, type: :uint64
  field :step, 3, type: :uint64
end

defmodule Ethereum.Eth.V1alpha1.ENRForkID do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.13.0"

  field :current_fork_digest, 1, type: :bytes, json_name: "currentForkDigest", deprecated: false
  field :next_fork_version, 2, type: :bytes, json_name: "nextForkVersion", deprecated: false
  field :next_fork_epoch, 3, type: :uint64, json_name: "nextForkEpoch", deprecated: false
end

defmodule Ethereum.Eth.V1alpha1.MetaDataV0 do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.13.0"

  field :seq_number, 1, type: :uint64, json_name: "seqNumber"
  field :attnets, 2, type: :bytes, deprecated: false
end

defmodule Ethereum.Eth.V1alpha1.MetaDataV1 do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.13.0"

  field :seq_number, 1, type: :uint64, json_name: "seqNumber"
  field :attnets, 2, type: :bytes, deprecated: false
  field :syncnets, 3, type: :bytes, deprecated: false
end

defmodule Ethereum.Eth.V1alpha1.MetaDataV2 do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.13.0"

  field :seq_number, 1, type: :uint64, json_name: "seqNumber"
  field :attnets, 2, type: :bytes, deprecated: false
  field :syncnets, 3, type: :bytes, deprecated: false
  field :custody_subnet_count, 4, type: :uint64, json_name: "custodySubnetCount"
end

defmodule Ethereum.Eth.V1alpha1.BlobSidecarsByRangeRequest do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.13.0"

  field :start_slot, 1, type: :uint64, json_name: "startSlot", deprecated: false
  field :count, 2, type: :uint64
end

defmodule Ethereum.Eth.V1alpha1.DataColumnSidecarsByRangeRequest do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.13.0"

  field :start_slot, 1, type: :uint64, json_name: "startSlot", deprecated: false
  field :count, 2, type: :uint64
  field :columns, 3, repeated: true, type: :uint64, deprecated: false
end