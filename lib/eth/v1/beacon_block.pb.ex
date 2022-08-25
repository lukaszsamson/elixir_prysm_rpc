defmodule Ethereum.Eth.V1.BeaconBlock do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :slot, 1, type: :uint64, deprecated: false
  field :proposer_index, 2, type: :uint64, json_name: "proposerIndex", deprecated: false
  field :parent_root, 3, type: :bytes, json_name: "parentRoot", deprecated: false
  field :state_root, 4, type: :bytes, json_name: "stateRoot", deprecated: false
  field :body, 5, type: Ethereum.Eth.V1.BeaconBlockBody
end

defmodule Ethereum.Eth.V1.SignedBeaconBlock do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :block, 1, type: Ethereum.Eth.V1.BeaconBlock
  field :signature, 2, type: :bytes, deprecated: false
end

defmodule Ethereum.Eth.V1.BeaconBlockBody do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :randao_reveal, 1, type: :bytes, json_name: "randaoReveal", deprecated: false
  field :eth1_data, 2, type: Ethereum.Eth.V1.Eth1Data, json_name: "eth1Data"
  field :graffiti, 3, type: :bytes, deprecated: false

  field :proposer_slashings, 4,
    repeated: true,
    type: Ethereum.Eth.V1.ProposerSlashing,
    json_name: "proposerSlashings",
    deprecated: false

  field :attester_slashings, 5,
    repeated: true,
    type: Ethereum.Eth.V1.AttesterSlashing,
    json_name: "attesterSlashings",
    deprecated: false

  field :attestations, 6, repeated: true, type: Ethereum.Eth.V1.Attestation, deprecated: false
  field :deposits, 7, repeated: true, type: Ethereum.Eth.V1.Deposit, deprecated: false

  field :voluntary_exits, 8,
    repeated: true,
    type: Ethereum.Eth.V1.SignedVoluntaryExit,
    json_name: "voluntaryExits",
    deprecated: false
end

defmodule Ethereum.Eth.V1.ProposerSlashing do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :signed_header_1, 2,
    type: Ethereum.Eth.V1.SignedBeaconBlockHeader,
    json_name: "signedHeader1"

  field :signed_header_2, 3,
    type: Ethereum.Eth.V1.SignedBeaconBlockHeader,
    json_name: "signedHeader2"
end

defmodule Ethereum.Eth.V1.AttesterSlashing do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :attestation_1, 1, type: Ethereum.Eth.V1.IndexedAttestation, json_name: "attestation1"
  field :attestation_2, 2, type: Ethereum.Eth.V1.IndexedAttestation, json_name: "attestation2"
end

defmodule Ethereum.Eth.V1.Deposit.Data do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :pubkey, 1, type: :bytes, deprecated: false

  field :withdrawal_credentials, 2,
    type: :bytes,
    json_name: "withdrawalCredentials",
    deprecated: false

  field :amount, 3, type: :uint64
  field :signature, 4, type: :bytes, deprecated: false
end

defmodule Ethereum.Eth.V1.Deposit do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :proof, 1, repeated: true, type: :bytes, deprecated: false
  field :data, 2, type: Ethereum.Eth.V1.Deposit.Data
end

defmodule Ethereum.Eth.V1.VoluntaryExit do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :epoch, 1, type: :uint64, deprecated: false
  field :validator_index, 2, type: :uint64, json_name: "validatorIndex", deprecated: false
end

defmodule Ethereum.Eth.V1.SignedVoluntaryExit do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :message, 1, type: Ethereum.Eth.V1.VoluntaryExit
  field :signature, 2, type: :bytes, deprecated: false
end

defmodule Ethereum.Eth.V1.Eth1Data do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :deposit_root, 1, type: :bytes, json_name: "depositRoot", deprecated: false
  field :deposit_count, 2, type: :uint64, json_name: "depositCount"
  field :block_hash, 3, type: :bytes, json_name: "blockHash", deprecated: false
end

defmodule Ethereum.Eth.V1.BeaconBlockHeader do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :slot, 1, type: :uint64, deprecated: false
  field :proposer_index, 2, type: :uint64, json_name: "proposerIndex", deprecated: false
  field :parent_root, 3, type: :bytes, json_name: "parentRoot", deprecated: false
  field :state_root, 4, type: :bytes, json_name: "stateRoot", deprecated: false
  field :body_root, 5, type: :bytes, json_name: "bodyRoot", deprecated: false
end

defmodule Ethereum.Eth.V1.SignedBeaconBlockHeader do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :message, 1, type: Ethereum.Eth.V1.BeaconBlockHeader
  field :signature, 2, type: :bytes, deprecated: false
end

defmodule Ethereum.Eth.V1.IndexedAttestation do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :attesting_indices, 1,
    repeated: true,
    type: :uint64,
    json_name: "attestingIndices",
    deprecated: false

  field :data, 2, type: Ethereum.Eth.V1.AttestationData
  field :signature, 3, type: :bytes, deprecated: false
end

defmodule Ethereum.Eth.V1.SyncAggregate do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :sync_committee_bits, 1, type: :bytes, json_name: "syncCommitteeBits", deprecated: false

  field :sync_committee_signature, 2,
    type: :bytes,
    json_name: "syncCommitteeSignature",
    deprecated: false
end