defmodule Ethereum.Validator.Accounts.V2.KeymanagerKind do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :DERIVED, 0
  field :IMPORTED, 1
  field :REMOTE, 2
  field :WEB3SIGNER, 3
end
defmodule Ethereum.Validator.Accounts.V2.CreateWalletRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :keymanager, 1, type: Ethereum.Validator.Accounts.V2.KeymanagerKind, enum: true
  field :wallet_password, 2, type: :string, json_name: "walletPassword"
  field :mnemonic, 3, type: :string
  field :num_accounts, 4, type: :uint64, json_name: "numAccounts"
  field :remote_addr, 5, type: :string, json_name: "remoteAddr"
  field :remote_crt_path, 6, type: :string, json_name: "remoteCrtPath"
  field :remote_key_path, 7, type: :string, json_name: "remoteKeyPath"
  field :remote_ca_crt_path, 8, type: :string, json_name: "remoteCaCrtPath"
end
defmodule Ethereum.Validator.Accounts.V2.CreateWalletResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :wallet, 1, type: Ethereum.Validator.Accounts.V2.WalletResponse
end
defmodule Ethereum.Validator.Accounts.V2.EditWalletConfigRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :remote_addr, 1, type: :string, json_name: "remoteAddr"
  field :remote_crt_path, 2, type: :string, json_name: "remoteCrtPath"
  field :remote_key_path, 3, type: :string, json_name: "remoteKeyPath"
  field :remote_ca_crt_path, 4, type: :string, json_name: "remoteCaCrtPath"
end
defmodule Ethereum.Validator.Accounts.V2.GenerateMnemonicResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :mnemonic, 1, type: :string
end
defmodule Ethereum.Validator.Accounts.V2.WalletResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :wallet_path, 1, type: :string, json_name: "walletPath"

  field :keymanager_kind, 2,
    type: Ethereum.Validator.Accounts.V2.KeymanagerKind,
    json_name: "keymanagerKind",
    enum: true
end
defmodule Ethereum.Validator.Accounts.V2.RecoverWalletRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :mnemonic, 1, type: :string
  field :num_accounts, 2, type: :uint64, json_name: "numAccounts"
  field :wallet_password, 3, type: :string, json_name: "walletPassword"
  field :language, 4, type: :string
  field :mnemonic25th_word, 5, type: :string, json_name: "mnemonic25thWord"
end
defmodule Ethereum.Validator.Accounts.V2.ValidateKeystoresRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :keystores, 1, repeated: true, type: :string
  field :keystores_password, 2, type: :string, json_name: "keystoresPassword"
end
defmodule Ethereum.Validator.Accounts.V2.ListAccountsRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :get_deposit_tx_data, 1, type: :bool, json_name: "getDepositTxData"
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :all, 4, type: :bool
end
defmodule Ethereum.Validator.Accounts.V2.ListAccountsResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :accounts, 1, repeated: true, type: Ethereum.Validator.Accounts.V2.Account
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :total_size, 3, type: :int32, json_name: "totalSize"
end
defmodule Ethereum.Validator.Accounts.V2.Account do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :validating_public_key, 1, type: :bytes, json_name: "validatingPublicKey"
  field :account_name, 2, type: :string, json_name: "accountName"
  field :deposit_tx_data, 3, type: :bytes, json_name: "depositTxData"
  field :derivation_path, 4, type: :string, json_name: "derivationPath"
end
defmodule Ethereum.Validator.Accounts.V2.AccountRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :public_keys, 1, repeated: true, type: :bytes, json_name: "publicKeys"
  field :indices, 2, repeated: true, type: :uint64
end
defmodule Ethereum.Validator.Accounts.V2.NodeConnectionResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :beacon_node_endpoint, 1, type: :string, json_name: "beaconNodeEndpoint"
  field :connected, 2, type: :bool
  field :syncing, 3, type: :bool
  field :genesis_time, 4, type: :uint64, json_name: "genesisTime"
  field :deposit_contract_address, 5, type: :bytes, json_name: "depositContractAddress"
end
defmodule Ethereum.Validator.Accounts.V2.LogsEndpointResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :validator_logs_endpoint, 1, type: :string, json_name: "validatorLogsEndpoint"
  field :beacon_logs_endpoint, 2, type: :string, json_name: "beaconLogsEndpoint"
end
defmodule Ethereum.Validator.Accounts.V2.VersionResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :beacon, 1, type: :string
  field :validator, 2, type: :string
end
defmodule Ethereum.Validator.Accounts.V2.HasWalletResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :wallet_exists, 1, type: :bool, json_name: "walletExists"
end
defmodule Ethereum.Validator.Accounts.V2.ImportAccountsRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :keystores_imported, 1, repeated: true, type: :string, json_name: "keystoresImported"
  field :keystores_password, 2, type: :string, json_name: "keystoresPassword"
end
defmodule Ethereum.Validator.Accounts.V2.ImportAccountsResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :imported_public_keys, 1, repeated: true, type: :bytes, json_name: "importedPublicKeys"
end
defmodule Ethereum.Validator.Accounts.V2.InitializeAuthRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :token, 1, type: :string
end
defmodule Ethereum.Validator.Accounts.V2.InitializeAuthResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :has_signed_up, 1, type: :bool, json_name: "hasSignedUp"
  field :has_wallet, 2, type: :bool, json_name: "hasWallet"
end
defmodule Ethereum.Validator.Accounts.V2.BeaconStatusResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :beacon_node_endpoint, 1, type: :string, json_name: "beaconNodeEndpoint"
  field :connected, 2, type: :bool
  field :syncing, 3, type: :bool
  field :genesis_time, 4, type: :uint64, json_name: "genesisTime"
  field :deposit_contract_address, 5, type: :bytes, json_name: "depositContractAddress"
  field :chain_head, 6, type: Ethereum.Eth.V1alpha1.ChainHead, json_name: "chainHead"
end
defmodule Ethereum.Validator.Accounts.V2.VoluntaryExitRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :public_keys, 1, repeated: true, type: :bytes, json_name: "publicKeys"
end
defmodule Ethereum.Validator.Accounts.V2.VoluntaryExitResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :exited_keys, 1, repeated: true, type: :bytes, json_name: "exitedKeys"
end
defmodule Ethereum.Validator.Accounts.V2.BackupAccountsRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :public_keys, 1, repeated: true, type: :bytes, json_name: "publicKeys"
  field :backup_password, 2, type: :string, json_name: "backupPassword"
end
defmodule Ethereum.Validator.Accounts.V2.BackupAccountsResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :zip_file, 1, type: :bytes, json_name: "zipFile"
end
defmodule Ethereum.Validator.Accounts.V2.DeleteAccountsRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :public_keys_to_delete, 1, repeated: true, type: :bytes, json_name: "publicKeysToDelete"
end
defmodule Ethereum.Validator.Accounts.V2.DeleteAccountsResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :deleted_keys, 1, repeated: true, type: :bytes, json_name: "deletedKeys"
end
defmodule Ethereum.Validator.Accounts.V2.ExportSlashingProtectionResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :file, 1, type: :string
end
defmodule Ethereum.Validator.Accounts.V2.ImportSlashingProtectionRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :slashing_protection_json, 1, type: :string, json_name: "slashingProtectionJson"
end
defmodule Ethereum.Validator.Accounts.V2.Wallet.Service do
  @moduledoc false
  use GRPC.Service,
    name: "ethereum.validator.accounts.v2.Wallet",
    protoc_gen_elixir_version: "0.10.0"

  rpc :CreateWallet,
      Ethereum.Validator.Accounts.V2.CreateWalletRequest,
      Ethereum.Validator.Accounts.V2.CreateWalletResponse

  rpc :WalletConfig, Google.Protobuf.Empty, Ethereum.Validator.Accounts.V2.WalletResponse

  rpc :ImportAccounts,
      Ethereum.Validator.Accounts.V2.ImportAccountsRequest,
      Ethereum.Validator.Accounts.V2.ImportAccountsResponse

  rpc :ValidateKeystores,
      Ethereum.Validator.Accounts.V2.ValidateKeystoresRequest,
      Google.Protobuf.Empty

  rpc :RecoverWallet,
      Ethereum.Validator.Accounts.V2.RecoverWalletRequest,
      Ethereum.Validator.Accounts.V2.CreateWalletResponse
end

defmodule Ethereum.Validator.Accounts.V2.Wallet.Stub do
  @moduledoc false
  use GRPC.Stub, service: Ethereum.Validator.Accounts.V2.Wallet.Service
end
defmodule Ethereum.Validator.Accounts.V2.Accounts.Service do
  @moduledoc false
  use GRPC.Service,
    name: "ethereum.validator.accounts.v2.Accounts",
    protoc_gen_elixir_version: "0.10.0"

  rpc :ListAccounts,
      Ethereum.Validator.Accounts.V2.ListAccountsRequest,
      Ethereum.Validator.Accounts.V2.ListAccountsResponse

  rpc :BackupAccounts,
      Ethereum.Validator.Accounts.V2.BackupAccountsRequest,
      Ethereum.Validator.Accounts.V2.BackupAccountsResponse

  rpc :DeleteAccounts,
      Ethereum.Validator.Accounts.V2.DeleteAccountsRequest,
      Ethereum.Validator.Accounts.V2.DeleteAccountsResponse

  rpc :VoluntaryExit,
      Ethereum.Validator.Accounts.V2.VoluntaryExitRequest,
      Ethereum.Validator.Accounts.V2.VoluntaryExitResponse
end

defmodule Ethereum.Validator.Accounts.V2.Accounts.Stub do
  @moduledoc false
  use GRPC.Stub, service: Ethereum.Validator.Accounts.V2.Accounts.Service
end
defmodule Ethereum.Validator.Accounts.V2.Beacon.Service do
  @moduledoc false
  use GRPC.Service,
    name: "ethereum.validator.accounts.v2.Beacon",
    protoc_gen_elixir_version: "0.10.0"

  rpc :GetBeaconStatus, Google.Protobuf.Empty, Ethereum.Validator.Accounts.V2.BeaconStatusResponse

  rpc :GetValidatorParticipation,
      Ethereum.Eth.V1alpha1.GetValidatorParticipationRequest,
      Ethereum.Eth.V1alpha1.ValidatorParticipationResponse

  rpc :GetValidatorPerformance,
      Ethereum.Eth.V1alpha1.ValidatorPerformanceRequest,
      Ethereum.Eth.V1alpha1.ValidatorPerformanceResponse

  rpc :GetValidators,
      Ethereum.Eth.V1alpha1.ListValidatorsRequest,
      Ethereum.Eth.V1alpha1.Validators

  rpc :GetValidatorBalances,
      Ethereum.Eth.V1alpha1.ListValidatorBalancesRequest,
      Ethereum.Eth.V1alpha1.ValidatorBalances

  rpc :GetValidatorQueue, Google.Protobuf.Empty, Ethereum.Eth.V1alpha1.ValidatorQueue

  rpc :GetPeers, Google.Protobuf.Empty, Ethereum.Eth.V1alpha1.Peers
end

defmodule Ethereum.Validator.Accounts.V2.Beacon.Stub do
  @moduledoc false
  use GRPC.Stub, service: Ethereum.Validator.Accounts.V2.Beacon.Service
end
defmodule Ethereum.Validator.Accounts.V2.SlashingProtection.Service do
  @moduledoc false
  use GRPC.Service,
    name: "ethereum.validator.accounts.v2.SlashingProtection",
    protoc_gen_elixir_version: "0.10.0"

  rpc :ExportSlashingProtection,
      Google.Protobuf.Empty,
      Ethereum.Validator.Accounts.V2.ExportSlashingProtectionResponse

  rpc :ImportSlashingProtection,
      Ethereum.Validator.Accounts.V2.ImportSlashingProtectionRequest,
      Google.Protobuf.Empty
end

defmodule Ethereum.Validator.Accounts.V2.SlashingProtection.Stub do
  @moduledoc false
  use GRPC.Stub, service: Ethereum.Validator.Accounts.V2.SlashingProtection.Service
end
defmodule Ethereum.Validator.Accounts.V2.Health.Service do
  @moduledoc false
  use GRPC.Service,
    name: "ethereum.validator.accounts.v2.Health",
    protoc_gen_elixir_version: "0.10.0"

  rpc :GetBeaconNodeConnection,
      Google.Protobuf.Empty,
      Ethereum.Validator.Accounts.V2.NodeConnectionResponse

  rpc :GetLogsEndpoints,
      Google.Protobuf.Empty,
      Ethereum.Validator.Accounts.V2.LogsEndpointResponse

  rpc :GetVersion, Google.Protobuf.Empty, Ethereum.Validator.Accounts.V2.VersionResponse

  rpc :StreamBeaconLogs, Google.Protobuf.Empty, stream(Ethereum.Eth.V1alpha1.LogsResponse)

  rpc :StreamValidatorLogs, Google.Protobuf.Empty, stream(Ethereum.Eth.V1alpha1.LogsResponse)
end

defmodule Ethereum.Validator.Accounts.V2.Health.Stub do
  @moduledoc false
  use GRPC.Stub, service: Ethereum.Validator.Accounts.V2.Health.Service
end
defmodule Ethereum.Validator.Accounts.V2.Auth.Service do
  @moduledoc false
  use GRPC.Service,
    name: "ethereum.validator.accounts.v2.Auth",
    protoc_gen_elixir_version: "0.10.0"

  rpc :Initialize, Google.Protobuf.Empty, Ethereum.Validator.Accounts.V2.InitializeAuthResponse
end

defmodule Ethereum.Validator.Accounts.V2.Auth.Stub do
  @moduledoc false
  use GRPC.Stub, service: Ethereum.Validator.Accounts.V2.Auth.Service
end
