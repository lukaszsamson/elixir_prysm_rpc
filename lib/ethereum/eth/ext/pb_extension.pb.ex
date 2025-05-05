defmodule Ethereum.Eth.Ext.PbExtension do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.13.0"

  extend Google.Protobuf.FieldOptions, :cast_type, 50000,
    optional: true,
    type: :string,
    json_name: "castType"

  extend Google.Protobuf.FieldOptions, :ssz_size, 50001,
    optional: true,
    type: :string,
    json_name: "sszSize"

  extend Google.Protobuf.FieldOptions, :ssz_max, 50002,
    optional: true,
    type: :string,
    json_name: "sszMax"

  extend Google.Protobuf.FieldOptions, :spec_name, 50003,
    optional: true,
    type: :string,
    json_name: "specName"
end