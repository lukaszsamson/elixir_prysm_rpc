defmodule Ethereum.Eth.V1alpha1.KeymanagerKind do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :DERIVED | :IMPORTED | :REMOTE

  field :DERIVED, 0

  field :IMPORTED, 1

  field :REMOTE, 2
end

defmodule Ethereum.Eth.V1alpha1.CreateWalletRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          keymanager: Ethereum.Eth.V1alpha1.KeymanagerKind.t(),
          wallet_password: String.t(),
          mnemonic: String.t(),
          num_accounts: non_neg_integer,
          remote_addr: String.t(),
          remote_crt_path: String.t(),
          remote_key_path: String.t(),
          remote_ca_crt_path: String.t()
        }

  defstruct [
    :keymanager,
    :wallet_password,
    :mnemonic,
    :num_accounts,
    :remote_addr,
    :remote_crt_path,
    :remote_key_path,
    :remote_ca_crt_path
  ]

  field :keymanager, 1, type: Ethereum.Eth.V1alpha1.KeymanagerKind, enum: true
  field :wallet_password, 2, type: :string
  field :mnemonic, 3, type: :string
  field :num_accounts, 4, type: :uint64
  field :remote_addr, 5, type: :string
  field :remote_crt_path, 6, type: :string
  field :remote_key_path, 7, type: :string
  field :remote_ca_crt_path, 8, type: :string
end

defmodule Ethereum.Eth.V1alpha1.CreateWalletResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          wallet: Ethereum.Eth.V1alpha1.WalletResponse.t() | nil
        }

  defstruct [:wallet]

  field :wallet, 1, type: Ethereum.Eth.V1alpha1.WalletResponse
end

defmodule Ethereum.Eth.V1alpha1.EditWalletConfigRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          remote_addr: String.t(),
          remote_crt_path: String.t(),
          remote_key_path: String.t(),
          remote_ca_crt_path: String.t()
        }

  defstruct [:remote_addr, :remote_crt_path, :remote_key_path, :remote_ca_crt_path]

  field :remote_addr, 1, type: :string
  field :remote_crt_path, 2, type: :string
  field :remote_key_path, 3, type: :string
  field :remote_ca_crt_path, 4, type: :string
end

defmodule Ethereum.Eth.V1alpha1.GenerateMnemonicResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          mnemonic: String.t()
        }

  defstruct [:mnemonic]

  field :mnemonic, 1, type: :string
end

defmodule Ethereum.Eth.V1alpha1.WalletResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          wallet_path: String.t(),
          keymanager_kind: Ethereum.Eth.V1alpha1.KeymanagerKind.t()
        }

  defstruct [:wallet_path, :keymanager_kind]

  field :wallet_path, 1, type: :string
  field :keymanager_kind, 2, type: Ethereum.Eth.V1alpha1.KeymanagerKind, enum: true
end

defmodule Ethereum.Eth.V1alpha1.RecoverWalletRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          mnemonic: String.t(),
          num_accounts: non_neg_integer,
          wallet_password: String.t(),
          language: String.t(),
          mnemonic25th_word: String.t()
        }

  defstruct [:mnemonic, :num_accounts, :wallet_password, :language, :mnemonic25th_word]

  field :mnemonic, 1, type: :string
  field :num_accounts, 2, type: :uint64
  field :wallet_password, 3, type: :string
  field :language, 4, type: :string
  field :mnemonic25th_word, 5, type: :string
end

defmodule Ethereum.Eth.V1alpha1.ListAccountsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          get_deposit_tx_data: boolean,
          page_size: integer,
          page_token: String.t(),
          all: boolean
        }

  defstruct [:get_deposit_tx_data, :page_size, :page_token, :all]

  field :get_deposit_tx_data, 1, type: :bool
  field :page_size, 2, type: :int32
  field :page_token, 3, type: :string
  field :all, 4, type: :bool
end

defmodule Ethereum.Eth.V1alpha1.ListAccountsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          accounts: [Ethereum.Eth.V1alpha1.Account.t()],
          next_page_token: String.t(),
          total_size: integer
        }

  defstruct [:accounts, :next_page_token, :total_size]

  field :accounts, 1, repeated: true, type: Ethereum.Eth.V1alpha1.Account
  field :next_page_token, 2, type: :string
  field :total_size, 3, type: :int32
end

defmodule Ethereum.Eth.V1alpha1.Account do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          validating_public_key: binary,
          account_name: String.t(),
          deposit_tx_data: binary,
          derivation_path: String.t()
        }

  defstruct [:validating_public_key, :account_name, :deposit_tx_data, :derivation_path]

  field :validating_public_key, 1, type: :bytes
  field :account_name, 2, type: :string
  field :deposit_tx_data, 3, type: :bytes
  field :derivation_path, 4, type: :string
end

defmodule Ethereum.Eth.V1alpha1.AccountRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          public_keys: [binary],
          indices: [non_neg_integer]
        }

  defstruct [:public_keys, :indices]

  field :public_keys, 1, repeated: true, type: :bytes
  field :indices, 2, repeated: true, type: :uint64
end

defmodule Ethereum.Eth.V1alpha1.AuthRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          password: String.t(),
          password_confirmation: String.t()
        }

  defstruct [:password, :password_confirmation]

  field :password, 1, type: :string
  field :password_confirmation, 2, type: :string
end

defmodule Ethereum.Eth.V1alpha1.AuthResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          token: String.t(),
          token_expiration: non_neg_integer
        }

  defstruct [:token, :token_expiration]

  field :token, 1, type: :string
  field :token_expiration, 2, type: :uint64
end

defmodule Ethereum.Eth.V1alpha1.NodeConnectionResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          beacon_node_endpoint: String.t(),
          connected: boolean,
          syncing: boolean,
          genesis_time: non_neg_integer,
          deposit_contract_address: binary
        }

  defstruct [
    :beacon_node_endpoint,
    :connected,
    :syncing,
    :genesis_time,
    :deposit_contract_address
  ]

  field :beacon_node_endpoint, 1, type: :string
  field :connected, 2, type: :bool
  field :syncing, 3, type: :bool
  field :genesis_time, 4, type: :uint64
  field :deposit_contract_address, 5, type: :bytes
end

defmodule Ethereum.Eth.V1alpha1.LogsEndpointResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          validator_logs_endpoint: String.t(),
          beacon_logs_endpoint: String.t()
        }

  defstruct [:validator_logs_endpoint, :beacon_logs_endpoint]

  field :validator_logs_endpoint, 1, type: :string
  field :beacon_logs_endpoint, 2, type: :string
end

defmodule Ethereum.Eth.V1alpha1.VersionResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          beacon: String.t(),
          validator: String.t()
        }

  defstruct [:beacon, :validator]

  field :beacon, 1, type: :string
  field :validator, 2, type: :string
end

defmodule Ethereum.Eth.V1alpha1.ChangePasswordRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          current_password: String.t(),
          password: String.t(),
          password_confirmation: String.t()
        }

  defstruct [:current_password, :password, :password_confirmation]

  field :current_password, 1, type: :string
  field :password, 2, type: :string
  field :password_confirmation, 3, type: :string
end

defmodule Ethereum.Eth.V1alpha1.HasWalletResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          wallet_exists: boolean
        }

  defstruct [:wallet_exists]

  field :wallet_exists, 1, type: :bool
end

defmodule Ethereum.Eth.V1alpha1.ImportKeystoresRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          keystores_imported: [String.t()],
          keystores_password: String.t()
        }

  defstruct [:keystores_imported, :keystores_password]

  field :keystores_imported, 1, repeated: true, type: :string
  field :keystores_password, 2, type: :string
end

defmodule Ethereum.Eth.V1alpha1.ImportKeystoresResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          imported_public_keys: [binary]
        }

  defstruct [:imported_public_keys]

  field :imported_public_keys, 1, repeated: true, type: :bytes
end

defmodule Ethereum.Eth.V1alpha1.HasUsedWebResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          has_signed_up: boolean,
          has_wallet: boolean
        }

  defstruct [:has_signed_up, :has_wallet]

  field :has_signed_up, 1, type: :bool
  field :has_wallet, 2, type: :bool
end

defmodule Ethereum.Eth.V1alpha1.BeaconStatusResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          beacon_node_endpoint: String.t(),
          connected: boolean,
          syncing: boolean,
          genesis_time: non_neg_integer,
          deposit_contract_address: binary,
          chain_head: Ethereum.Eth.V1alpha1.ChainHead.t() | nil
        }

  defstruct [
    :beacon_node_endpoint,
    :connected,
    :syncing,
    :genesis_time,
    :deposit_contract_address,
    :chain_head
  ]

  field :beacon_node_endpoint, 1, type: :string
  field :connected, 2, type: :bool
  field :syncing, 3, type: :bool
  field :genesis_time, 4, type: :uint64
  field :deposit_contract_address, 5, type: :bytes
  field :chain_head, 6, type: Ethereum.Eth.V1alpha1.ChainHead
end

defmodule Ethereum.Eth.V1alpha1.VoluntaryExitRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          public_keys: [binary]
        }

  defstruct [:public_keys]

  field :public_keys, 1, repeated: true, type: :bytes
end

defmodule Ethereum.Eth.V1alpha1.VoluntaryExitResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          exited_keys: [binary]
        }

  defstruct [:exited_keys]

  field :exited_keys, 1, repeated: true, type: :bytes
end

defmodule Ethereum.Eth.V1alpha1.BackupAccountsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          public_keys: [binary],
          backup_password: String.t()
        }

  defstruct [:public_keys, :backup_password]

  field :public_keys, 1, repeated: true, type: :bytes
  field :backup_password, 2, type: :string
end

defmodule Ethereum.Eth.V1alpha1.BackupAccountsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          zip_file: binary
        }

  defstruct [:zip_file]

  field :zip_file, 1, type: :bytes
end

defmodule Ethereum.Eth.V1alpha1.DeleteAccountsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          public_keys_to_delete: [binary]
        }

  defstruct [:public_keys_to_delete]

  field :public_keys_to_delete, 1, repeated: true, type: :bytes
end

defmodule Ethereum.Eth.V1alpha1.DeleteAccountsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          deleted_keys: [binary]
        }

  defstruct [:deleted_keys]

  field :deleted_keys, 1, repeated: true, type: :bytes
end

defmodule Ethereum.Eth.V1alpha1.ExportSlashingProtectionResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          file: String.t()
        }

  defstruct [:file]

  field :file, 1, type: :string
end

defmodule Ethereum.Eth.V1alpha1.ImportSlashingProtectionRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          slashing_protection_json: String.t()
        }

  defstruct [:slashing_protection_json]

  field :slashing_protection_json, 1, type: :string
end

defmodule Ethereum.Eth.V1alpha1.Wallet.Service do
  @moduledoc false
  use GRPC.Service, name: "ethereum.eth.v1alpha1.Wallet"

  rpc :CreateWallet,
      Ethereum.Eth.V1alpha1.CreateWalletRequest,
      Ethereum.Eth.V1alpha1.CreateWalletResponse

  rpc :WalletConfig, Google.Protobuf.Empty, Ethereum.Eth.V1alpha1.WalletResponse

  rpc :GenerateMnemonic, Google.Protobuf.Empty, Ethereum.Eth.V1alpha1.GenerateMnemonicResponse

  rpc :ImportKeystores,
      Ethereum.Eth.V1alpha1.ImportKeystoresRequest,
      Ethereum.Eth.V1alpha1.ImportKeystoresResponse

  rpc :RecoverWallet,
      Ethereum.Eth.V1alpha1.RecoverWalletRequest,
      Ethereum.Eth.V1alpha1.CreateWalletResponse
end

defmodule Ethereum.Eth.V1alpha1.Wallet.Stub do
  @moduledoc false
  use GRPC.Stub, service: Ethereum.Eth.V1alpha1.Wallet.Service
end

defmodule Ethereum.Eth.V1alpha1.Accounts.Service do
  @moduledoc false
  use GRPC.Service, name: "ethereum.eth.v1alpha1.Accounts"

  rpc :ListAccounts,
      Ethereum.Eth.V1alpha1.ListAccountsRequest,
      Ethereum.Eth.V1alpha1.ListAccountsResponse

  rpc :BackupAccounts,
      Ethereum.Eth.V1alpha1.BackupAccountsRequest,
      Ethereum.Eth.V1alpha1.BackupAccountsResponse

  rpc :DeleteAccounts,
      Ethereum.Eth.V1alpha1.DeleteAccountsRequest,
      Ethereum.Eth.V1alpha1.DeleteAccountsResponse

  rpc :ChangePassword, Ethereum.Eth.V1alpha1.ChangePasswordRequest, Google.Protobuf.Empty

  rpc :VoluntaryExit,
      Ethereum.Eth.V1alpha1.VoluntaryExitRequest,
      Ethereum.Eth.V1alpha1.VoluntaryExitResponse
end

defmodule Ethereum.Eth.V1alpha1.Accounts.Stub do
  @moduledoc false
  use GRPC.Stub, service: Ethereum.Eth.V1alpha1.Accounts.Service
end

defmodule Ethereum.Eth.V1alpha1.Beacon.Service do
  @moduledoc false
  use GRPC.Service, name: "ethereum.eth.v1alpha1.Beacon"

  rpc :GetBeaconStatus, Google.Protobuf.Empty, Ethereum.Eth.V1alpha1.BeaconStatusResponse

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

defmodule Ethereum.Eth.V1alpha1.Beacon.Stub do
  @moduledoc false
  use GRPC.Stub, service: Ethereum.Eth.V1alpha1.Beacon.Service
end

defmodule Ethereum.Eth.V1alpha1.SlashingProtection.Service do
  @moduledoc false
  use GRPC.Service, name: "ethereum.eth.v1alpha1.SlashingProtection"

  rpc :ExportSlashingProtection,
      Google.Protobuf.Empty,
      Ethereum.Eth.V1alpha1.ExportSlashingProtectionResponse

  rpc :ImportSlashingProtection,
      Ethereum.Eth.V1alpha1.ImportSlashingProtectionRequest,
      Google.Protobuf.Empty
end

defmodule Ethereum.Eth.V1alpha1.SlashingProtection.Stub do
  @moduledoc false
  use GRPC.Stub, service: Ethereum.Eth.V1alpha1.SlashingProtection.Service
end

defmodule Ethereum.Eth.V1alpha1.ValidatorHealth.Service do
  @moduledoc false
  use GRPC.Service, name: "ethereum.eth.v1alpha1.ValidatorHealth"

  rpc :GetBeaconNodeConnection,
      Google.Protobuf.Empty,
      Ethereum.Eth.V1alpha1.NodeConnectionResponse

  rpc :GetLogsEndpoints, Google.Protobuf.Empty, Ethereum.Eth.V1alpha1.LogsEndpointResponse

  rpc :GetVersion, Google.Protobuf.Empty, Ethereum.Eth.V1alpha1.VersionResponse

  rpc :StreamBeaconLogs, Google.Protobuf.Empty, stream(Ethereum.Eth.V1alpha1.LogsResponse)

  rpc :StreamValidatorLogs, Google.Protobuf.Empty, stream(Ethereum.Eth.V1alpha1.LogsResponse)
end

defmodule Ethereum.Eth.V1alpha1.ValidatorHealth.Stub do
  @moduledoc false
  use GRPC.Stub, service: Ethereum.Eth.V1alpha1.ValidatorHealth.Service
end

defmodule Ethereum.Eth.V1alpha1.Auth.Service do
  @moduledoc false
  use GRPC.Service, name: "ethereum.eth.v1alpha1.Auth"

  rpc :HasUsedWeb, Google.Protobuf.Empty, Ethereum.Eth.V1alpha1.HasUsedWebResponse

  rpc :Login, Ethereum.Eth.V1alpha1.AuthRequest, Ethereum.Eth.V1alpha1.AuthResponse

  rpc :Signup, Ethereum.Eth.V1alpha1.AuthRequest, Ethereum.Eth.V1alpha1.AuthResponse

  rpc :Logout, Google.Protobuf.Empty, Google.Protobuf.Empty
end

defmodule Ethereum.Eth.V1alpha1.Auth.Stub do
  @moduledoc false
  use GRPC.Stub, service: Ethereum.Eth.V1alpha1.Auth.Service
end
