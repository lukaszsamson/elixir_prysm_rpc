defmodule Testing.PbExtension do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.13.0"

  extend Google.Protobuf.FieldOptions, :ssz_size, 60001,
    optional: true,
    type: :string,
    json_name: "sszSize"

  extend Google.Protobuf.FieldOptions, :spec_name, 60003,
    optional: true,
    type: :string,
    json_name: "specName"
end