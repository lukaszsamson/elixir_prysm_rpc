defmodule Ethereum.Eth.Service.ImportedKeystoreStatus.Status do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :IMPORTED, 0
  field :DUPLICATE, 1
  field :ERROR, 2
end

defmodule Ethereum.Eth.Service.DeletedKeystoreStatus.Status do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :DELETED, 0
  field :NOT_FOUND, 1
  field :NOT_ACTIVE, 2
  field :ERROR, 3
end

defmodule Ethereum.Eth.Service.ImportedRemoteKeysStatus.Status do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :UNKNOWN, 0
  field :IMPORTED, 1
  field :DUPLICATE, 2
  field :ERROR, 3
end

defmodule Ethereum.Eth.Service.DeletedRemoteKeysStatus.Status do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :NOT_FOUND, 0
  field :DELETED, 1
  field :ERROR, 3
end

defmodule Ethereum.Eth.Service.ListKeystoresResponse.Keystore do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :validating_pubkey, 1, type: :bytes, json_name: "validatingPubkey"
  field :derivation_path, 2, type: :string, json_name: "derivationPath"
end

defmodule Ethereum.Eth.Service.ListKeystoresResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :data, 1, repeated: true, type: Ethereum.Eth.Service.ListKeystoresResponse.Keystore
end

defmodule Ethereum.Eth.Service.ImportKeystoresRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :keystores, 1, repeated: true, type: :string
  field :passwords, 2, repeated: true, type: :string
  field :slashing_protection, 3, type: :string, json_name: "slashingProtection"
end

defmodule Ethereum.Eth.Service.ImportKeystoresResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :data, 1, repeated: true, type: Ethereum.Eth.Service.ImportedKeystoreStatus
end

defmodule Ethereum.Eth.Service.DeleteKeystoresRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :pubkeys, 1, repeated: true, type: :bytes
end

defmodule Ethereum.Eth.Service.DeleteKeystoresResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :data, 1, repeated: true, type: Ethereum.Eth.Service.DeletedKeystoreStatus
  field :slashing_protection, 2, type: :string, json_name: "slashingProtection"
end

defmodule Ethereum.Eth.Service.ImportedKeystoreStatus do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :status, 1, type: Ethereum.Eth.Service.ImportedKeystoreStatus.Status, enum: true
  field :message, 2, type: :string
end

defmodule Ethereum.Eth.Service.DeletedKeystoreStatus do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :status, 1, type: Ethereum.Eth.Service.DeletedKeystoreStatus.Status, enum: true
  field :message, 2, type: :string
end

defmodule Ethereum.Eth.Service.ListRemoteKeysResponse.Keystore do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :pubkey, 1, type: :bytes
  field :url, 2, type: :string
  field :readonly, 3, type: :bool
end

defmodule Ethereum.Eth.Service.ListRemoteKeysResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :data, 1, repeated: true, type: Ethereum.Eth.Service.ListRemoteKeysResponse.Keystore
end

defmodule Ethereum.Eth.Service.ImportRemoteKeysRequest.Keystore do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :pubkey, 1, type: :bytes
  field :url, 2, type: :string
end

defmodule Ethereum.Eth.Service.ImportRemoteKeysRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :remote_keys, 1,
    repeated: true,
    type: Ethereum.Eth.Service.ImportRemoteKeysRequest.Keystore,
    json_name: "remoteKeys"
end

defmodule Ethereum.Eth.Service.ImportRemoteKeysResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :data, 1, repeated: true, type: Ethereum.Eth.Service.ImportedRemoteKeysStatus
end

defmodule Ethereum.Eth.Service.DeleteRemoteKeysRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :pubkeys, 1, repeated: true, type: :bytes
end

defmodule Ethereum.Eth.Service.DeleteRemoteKeysResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :data, 1, repeated: true, type: Ethereum.Eth.Service.DeletedRemoteKeysStatus
end

defmodule Ethereum.Eth.Service.ImportedRemoteKeysStatus do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :status, 1, type: Ethereum.Eth.Service.ImportedRemoteKeysStatus.Status, enum: true
  field :message, 2, type: :string
end

defmodule Ethereum.Eth.Service.DeletedRemoteKeysStatus do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :status, 1, type: Ethereum.Eth.Service.DeletedRemoteKeysStatus.Status, enum: true
  field :message, 2, type: :string
end

defmodule Ethereum.Eth.Service.PubkeyRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :pubkey, 1, type: :bytes
end

defmodule Ethereum.Eth.Service.GetFeeRecipientByPubkeyResponse.FeeRecipient do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :pubkey, 1, type: :bytes
  field :ethaddress, 2, type: :bytes
end

defmodule Ethereum.Eth.Service.GetFeeRecipientByPubkeyResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :data, 1, type: Ethereum.Eth.Service.GetFeeRecipientByPubkeyResponse.FeeRecipient
end

defmodule Ethereum.Eth.Service.SetFeeRecipientByPubkeyRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :pubkey, 1, type: :bytes
  field :ethaddress, 2, type: :bytes
end

defmodule Ethereum.Eth.Service.GetGasLimitResponse.GasLimit do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :pubkey, 1, type: :bytes
  field :gas_limit, 2, type: :uint64, json_name: "gasLimit"
end

defmodule Ethereum.Eth.Service.GetGasLimitResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :data, 1, type: Ethereum.Eth.Service.GetGasLimitResponse.GasLimit
end

defmodule Ethereum.Eth.Service.SetGasLimitRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :pubkey, 1, type: :bytes
  field :gas_limit, 2, type: :uint64, json_name: "gasLimit"
end

defmodule Ethereum.Eth.Service.DeleteGasLimitRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :pubkey, 1, type: :bytes
end

defmodule Ethereum.Eth.Service.KeyManagement.Service do
  @moduledoc false
  use GRPC.Service,
    name: "ethereum.eth.service.KeyManagement",
    protoc_gen_elixir_version: "0.11.0"

  rpc :ListKeystores, Google.Protobuf.Empty, Ethereum.Eth.Service.ListKeystoresResponse

  rpc :ImportKeystores,
      Ethereum.Eth.Service.ImportKeystoresRequest,
      Ethereum.Eth.Service.ImportKeystoresResponse

  rpc :DeleteKeystores,
      Ethereum.Eth.Service.DeleteKeystoresRequest,
      Ethereum.Eth.Service.DeleteKeystoresResponse

  rpc :ListRemoteKeys, Google.Protobuf.Empty, Ethereum.Eth.Service.ListRemoteKeysResponse

  rpc :ImportRemoteKeys,
      Ethereum.Eth.Service.ImportRemoteKeysRequest,
      Ethereum.Eth.Service.ImportRemoteKeysResponse

  rpc :DeleteRemoteKeys,
      Ethereum.Eth.Service.DeleteRemoteKeysRequest,
      Ethereum.Eth.Service.DeleteRemoteKeysResponse

  rpc :ListFeeRecipientByPubkey,
      Ethereum.Eth.Service.PubkeyRequest,
      Ethereum.Eth.Service.GetFeeRecipientByPubkeyResponse

  rpc :SetFeeRecipientByPubkey,
      Ethereum.Eth.Service.SetFeeRecipientByPubkeyRequest,
      Google.Protobuf.Empty

  rpc :DeleteFeeRecipientByPubkey, Ethereum.Eth.Service.PubkeyRequest, Google.Protobuf.Empty

  rpc :GetGasLimit, Ethereum.Eth.Service.PubkeyRequest, Ethereum.Eth.Service.GetGasLimitResponse

  rpc :SetGasLimit, Ethereum.Eth.Service.SetGasLimitRequest, Google.Protobuf.Empty

  rpc :DeleteGasLimit, Ethereum.Eth.Service.DeleteGasLimitRequest, Google.Protobuf.Empty
end

defmodule Ethereum.Eth.Service.KeyManagement.Stub do
  @moduledoc false
  use GRPC.Stub, service: Ethereum.Eth.Service.KeyManagement.Service
end