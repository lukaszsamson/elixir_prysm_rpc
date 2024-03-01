defmodule Ethereum.Eth.V1alpha1.LoggingLevelRequest.Level do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :INFO, 0
  field :DEBUG, 1
  field :TRACE, 2
end

defmodule Ethereum.Eth.V1alpha1.InclusionSlotRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :id, 1, type: :uint64
  field :slot, 2, type: :uint64, deprecated: false
end

defmodule Ethereum.Eth.V1alpha1.InclusionSlotResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :slot, 2, type: :uint64, deprecated: false
end

defmodule Ethereum.Eth.V1alpha1.BeaconStateRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  oneof :query_filter, 0

  field :slot, 1, type: :uint64, oneof: 0, deprecated: false
  field :block_root, 2, type: :bytes, json_name: "blockRoot", oneof: 0
end

defmodule Ethereum.Eth.V1alpha1.BlockRequestByRoot do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :block_root, 1, type: :bytes, json_name: "blockRoot"
end

defmodule Ethereum.Eth.V1alpha1.SSZResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :encoded, 1, type: :bytes
end

defmodule Ethereum.Eth.V1alpha1.LoggingLevelRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :level, 1, type: Ethereum.Eth.V1alpha1.LoggingLevelRequest.Level, enum: true
end

defmodule Ethereum.Eth.V1alpha1.DebugPeerResponses do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :responses, 1, repeated: true, type: Ethereum.Eth.V1alpha1.DebugPeerResponse
end

defmodule Ethereum.Eth.V1alpha1.DebugPeerResponse.PeerInfo do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :metadataV0, 1, type: Ethereum.Eth.V1alpha1.MetaDataV0
  field :metadataV1, 2, type: Ethereum.Eth.V1alpha1.MetaDataV1
  field :protocols, 3, repeated: true, type: :string
  field :fault_count, 4, type: :uint64, json_name: "faultCount"
  field :protocol_version, 5, type: :string, json_name: "protocolVersion"
  field :agent_version, 6, type: :string, json_name: "agentVersion"
  field :peer_latency, 7, type: :uint64, json_name: "peerLatency"
end

defmodule Ethereum.Eth.V1alpha1.DebugPeerResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :listening_addresses, 1, repeated: true, type: :string, json_name: "listeningAddresses"
  field :direction, 2, type: Ethereum.Eth.V1alpha1.PeerDirection, enum: true

  field :connection_state, 3,
    type: Ethereum.Eth.V1alpha1.ConnectionState,
    json_name: "connectionState",
    enum: true

  field :peer_id, 4, type: :string, json_name: "peerId"
  field :enr, 5, type: :string

  field :peer_info, 6,
    type: Ethereum.Eth.V1alpha1.DebugPeerResponse.PeerInfo,
    json_name: "peerInfo"

  field :peer_status, 7, type: Ethereum.Eth.V1alpha1.Status, json_name: "peerStatus"
  field :last_updated, 8, type: :uint64, json_name: "lastUpdated"
  field :score_info, 9, type: Ethereum.Eth.V1alpha1.ScoreInfo, json_name: "scoreInfo"
end

defmodule Ethereum.Eth.V1alpha1.ScoreInfo.TopicScoresEntry do
  @moduledoc false
  use Protobuf, map: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Ethereum.Eth.V1alpha1.TopicScoreSnapshot
end

defmodule Ethereum.Eth.V1alpha1.ScoreInfo do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :overall_score, 1, type: :float, json_name: "overallScore"
  field :processed_blocks, 2, type: :uint64, json_name: "processedBlocks"
  field :block_provider_score, 3, type: :float, json_name: "blockProviderScore"

  field :topic_scores, 4,
    repeated: true,
    type: Ethereum.Eth.V1alpha1.ScoreInfo.TopicScoresEntry,
    json_name: "topicScores",
    map: true

  field :gossip_score, 5, type: :float, json_name: "gossipScore"
  field :behaviour_penalty, 6, type: :float, json_name: "behaviourPenalty"
  field :validation_error, 7, type: :string, json_name: "validationError"
end

defmodule Ethereum.Eth.V1alpha1.TopicScoreSnapshot do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :time_in_mesh, 1, type: :uint64, json_name: "timeInMesh"
  field :first_message_deliveries, 2, type: :float, json_name: "firstMessageDeliveries"
  field :mesh_message_deliveries, 3, type: :float, json_name: "meshMessageDeliveries"
  field :invalid_message_deliveries, 4, type: :float, json_name: "invalidMessageDeliveries"
end

defmodule Ethereum.Eth.V1alpha1.Debug.Service do
  @moduledoc false
  use GRPC.Service, name: "ethereum.eth.v1alpha1.Debug", protoc_gen_elixir_version: "0.11.0"

  rpc :GetBeaconState, Ethereum.Eth.V1alpha1.BeaconStateRequest, Ethereum.Eth.V1alpha1.SSZResponse

  rpc :GetBlock, Ethereum.Eth.V1alpha1.BlockRequestByRoot, Ethereum.Eth.V1alpha1.SSZResponse

  rpc :SetLoggingLevel, Ethereum.Eth.V1alpha1.LoggingLevelRequest, Google.Protobuf.Empty

  rpc :ListPeers, Google.Protobuf.Empty, Ethereum.Eth.V1alpha1.DebugPeerResponses

  rpc :GetPeer, Ethereum.Eth.V1alpha1.PeerRequest, Ethereum.Eth.V1alpha1.DebugPeerResponse
end

defmodule Ethereum.Eth.V1alpha1.Debug.Stub do
  @moduledoc false
  use GRPC.Stub, service: Ethereum.Eth.V1alpha1.Debug.Service
end