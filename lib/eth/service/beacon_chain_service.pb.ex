defmodule Ethereum.Eth.Service.BeaconChain.Service do
  @moduledoc false
  use GRPC.Service, name: "ethereum.eth.service.BeaconChain", protoc_gen_elixir_version: "0.11.0"

  rpc :GetGenesis, Google.Protobuf.Empty, Ethereum.Eth.V1.GenesisResponse

  rpc :GetWeakSubjectivity, Google.Protobuf.Empty, Ethereum.Eth.V1.WeakSubjectivityResponse

  rpc :GetStateRoot, Ethereum.Eth.V1.StateRequest, Ethereum.Eth.V1.StateRootResponse

  rpc :GetStateFork, Ethereum.Eth.V1.StateRequest, Ethereum.Eth.V1.StateForkResponse

  rpc :GetFinalityCheckpoints,
      Ethereum.Eth.V1.StateRequest,
      Ethereum.Eth.V1.StateFinalityCheckpointResponse

  rpc :ListValidators,
      Ethereum.Eth.V1.StateValidatorsRequest,
      Ethereum.Eth.V1.StateValidatorsResponse

  rpc :GetValidator, Ethereum.Eth.V1.StateValidatorRequest, Ethereum.Eth.V1.StateValidatorResponse

  rpc :ListValidatorBalances,
      Ethereum.Eth.V1.ValidatorBalancesRequest,
      Ethereum.Eth.V1.ValidatorBalancesResponse

  rpc :ListCommittees,
      Ethereum.Eth.V1.StateCommitteesRequest,
      Ethereum.Eth.V1.StateCommitteesResponse

  rpc :ListSyncCommittees,
      Ethereum.Eth.V2.StateSyncCommitteesRequest,
      Ethereum.Eth.V2.StateSyncCommitteesResponse

  rpc :ListBlockHeaders, Ethereum.Eth.V1.BlockHeadersRequest, Ethereum.Eth.V1.BlockHeadersResponse

  rpc :GetBlockHeader, Ethereum.Eth.V1.BlockRequest, Ethereum.Eth.V1.BlockHeaderResponse

  rpc :SubmitBlock, Ethereum.Eth.V2.SignedBeaconBlockContainerV2, Google.Protobuf.Empty

  rpc :SubmitBlockSSZ, Ethereum.Eth.V2.SSZContainer, Google.Protobuf.Empty

  rpc :SubmitBlindedBlock,
      Ethereum.Eth.V2.SignedBlindedBeaconBlockContainer,
      Google.Protobuf.Empty

  rpc :SubmitBlindedBlockSSZ, Ethereum.Eth.V2.SSZContainer, Google.Protobuf.Empty

  rpc :GetBlockRoot, Ethereum.Eth.V1.BlockRequest, Ethereum.Eth.V1.BlockRootResponse

  rpc :GetBlock, Ethereum.Eth.V1.BlockRequest, Ethereum.Eth.V1.BlockResponse

  rpc :GetBlockSSZ, Ethereum.Eth.V1.BlockRequest, Ethereum.Eth.V1.BlockSSZResponse

  rpc :GetBlockV2, Ethereum.Eth.V2.BlockRequestV2, Ethereum.Eth.V2.BlockResponseV2

  rpc :GetBlockSSZV2, Ethereum.Eth.V2.BlockRequestV2, Ethereum.Eth.V2.SSZContainer

  rpc :ListBlockAttestations,
      Ethereum.Eth.V1.BlockRequest,
      Ethereum.Eth.V1.BlockAttestationsResponse

  rpc :ListPoolAttestations,
      Ethereum.Eth.V1.AttestationsPoolRequest,
      Ethereum.Eth.V1.AttestationsPoolResponse

  rpc :SubmitAttestations, Ethereum.Eth.V1.SubmitAttestationsRequest, Google.Protobuf.Empty

  rpc :ListPoolAttesterSlashings,
      Google.Protobuf.Empty,
      Ethereum.Eth.V1.AttesterSlashingsPoolResponse

  rpc :SubmitAttesterSlashing, Ethereum.Eth.V1.AttesterSlashing, Google.Protobuf.Empty

  rpc :ListPoolProposerSlashings,
      Google.Protobuf.Empty,
      Ethereum.Eth.V1.ProposerSlashingPoolResponse

  rpc :SubmitProposerSlashing, Ethereum.Eth.V1.ProposerSlashing, Google.Protobuf.Empty

  rpc :ListPoolVoluntaryExits, Google.Protobuf.Empty, Ethereum.Eth.V1.VoluntaryExitsPoolResponse

  rpc :SubmitVoluntaryExit, Ethereum.Eth.V1.SignedVoluntaryExit, Google.Protobuf.Empty

  rpc :SubmitPoolSyncCommitteeSignatures,
      Ethereum.Eth.V2.SubmitPoolSyncCommitteeSignatures,
      Google.Protobuf.Empty

  rpc :GetForkSchedule, Google.Protobuf.Empty, Ethereum.Eth.V1.ForkScheduleResponse

  rpc :GetSpec, Google.Protobuf.Empty, Ethereum.Eth.V1.SpecResponse

  rpc :GetDepositContract, Google.Protobuf.Empty, Ethereum.Eth.V1.DepositContractResponse
end

defmodule Ethereum.Eth.Service.BeaconChain.Stub do
  @moduledoc false
  use GRPC.Stub, service: Ethereum.Eth.Service.BeaconChain.Service
end