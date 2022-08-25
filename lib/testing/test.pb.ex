defmodule Testing.Person.PhoneType do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :MOBILE, 0
  field :HOME, 1
  field :WORK, 2
end

defmodule Testing.TestMessage do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :foo, 1, type: :string
  field :bar, 2, type: :string, deprecated: false
end

defmodule Testing.TestNestedMessage do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :fuzz, 1, type: :string
  field :msg, 2, type: Testing.TestMessage
end

defmodule Testing.Puzzle do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :challenge, 1, type: :string
  field :answer, 2, type: :string
end

defmodule Testing.Person.PhoneNumber do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :number, 1, type: :string
  field :type, 2, type: Testing.Person.PhoneType, enum: true
end

defmodule Testing.Person do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string
  field :id, 2, type: :int32
  field :email, 3, type: :string
  field :phones, 4, repeated: true, type: Testing.Person.PhoneNumber
  field :last_updated, 5, type: Google.Protobuf.Timestamp, json_name: "lastUpdated"
end

defmodule Testing.AddressBook do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :people, 1, repeated: true, type: Testing.Person
end

defmodule Testing.TestSimpleMessage do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :foo, 1, type: :bytes
  field :bar, 2, type: :uint64
end

defmodule Testing.PbExtension do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  extend Google.Protobuf.FieldOptions, :ssz_size, 60001,
    optional: true,
    type: :string,
    json_name: "sszSize"

  extend Google.Protobuf.FieldOptions, :spec_name, 60003,
    optional: true,
    type: :string,
    json_name: "specName"
end