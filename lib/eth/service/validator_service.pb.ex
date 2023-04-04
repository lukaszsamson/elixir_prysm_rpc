defmodule Ethereum.Eth.Service.BeaconValidator.Service do
  @moduledoc false
  use GRPC.Service,
    name: "ethereum.eth.service.BeaconValidator",
    protoc_gen_elixir_version: "0.11.0"

  rpc :GetAttesterDuties,
      Ethereum.Eth.V1.AttesterDutiesRequest,
      Ethereum.Eth.V1.AttesterDutiesResponse

  rpc :GetProposerDuties,
      Ethereum.Eth.V1.ProposerDutiesRequest,
      Ethereum.Eth.V1.ProposerDutiesResponse

  rpc :GetSyncCommitteeDuties,
      Ethereum.Eth.V2.SyncCommitteeDutiesRequest,
      Ethereum.Eth.V2.SyncCommitteeDutiesResponse

  rpc :ProduceBlockV2, Ethereum.Eth.V1.ProduceBlockRequest, Ethereum.Eth.V2.ProduceBlockResponseV2

  rpc :ProduceBlockV2SSZ, Ethereum.Eth.V1.ProduceBlockRequest, Ethereum.Eth.V2.SSZContainer

  rpc :ProduceBlindedBlock,
      Ethereum.Eth.V1.ProduceBlockRequest,
      Ethereum.Eth.V2.ProduceBlindedBlockResponse

  rpc :ProduceBlindedBlockSSZ, Ethereum.Eth.V1.ProduceBlockRequest, Ethereum.Eth.V2.SSZContainer

  rpc :PrepareBeaconProposer, Ethereum.Eth.V1.PrepareBeaconProposerRequest, Google.Protobuf.Empty

  rpc :SubmitValidatorRegistration,
      Ethereum.Eth.V1.SubmitValidatorRegistrationsRequest,
      Google.Protobuf.Empty

  rpc :ProduceAttestationData,
      Ethereum.Eth.V1.ProduceAttestationDataRequest,
      Ethereum.Eth.V1.ProduceAttestationDataResponse

  rpc :GetAggregateAttestation,
      Ethereum.Eth.V1.AggregateAttestationRequest,
      Ethereum.Eth.V1.AggregateAttestationResponse

  rpc :SubmitAggregateAndProofs,
      Ethereum.Eth.V1.SubmitAggregateAndProofsRequest,
      Google.Protobuf.Empty

  rpc :SubmitBeaconCommitteeSubscription,
      Ethereum.Eth.V1.SubmitBeaconCommitteeSubscriptionsRequest,
      Google.Protobuf.Empty

  rpc :SubmitSyncCommitteeSubscription,
      Ethereum.Eth.V2.SubmitSyncCommitteeSubscriptionsRequest,
      Google.Protobuf.Empty

  rpc :ProduceSyncCommitteeContribution,
      Ethereum.Eth.V2.ProduceSyncCommitteeContributionRequest,
      Ethereum.Eth.V2.ProduceSyncCommitteeContributionResponse

  rpc :SubmitContributionAndProofs,
      Ethereum.Eth.V2.SubmitContributionAndProofsRequest,
      Google.Protobuf.Empty

  rpc :GetLiveness, Ethereum.Eth.V2.GetLivenessRequest, Ethereum.Eth.V2.GetLivenessResponse
end

defmodule Ethereum.Eth.Service.BeaconValidator.Stub do
  @moduledoc false
  use GRPC.Stub, service: Ethereum.Eth.Service.BeaconValidator.Service
end