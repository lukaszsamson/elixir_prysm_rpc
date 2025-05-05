defmodule Ethereum.Eth.V1.EventHead do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.13.0"

  field :slot, 1, type: :uint64, deprecated: false
  field :block, 2, type: :bytes, deprecated: false
  field :state, 3, type: :bytes, deprecated: false
  field :epoch_transition, 4, type: :bool, json_name: "epochTransition"

  field :previous_duty_dependent_root, 5,
    type: :bytes,
    json_name: "previousDutyDependentRoot",
    deprecated: false

  field :current_duty_dependent_root, 6,
    type: :bytes,
    json_name: "currentDutyDependentRoot",
    deprecated: false

  field :execution_optimistic, 7, type: :bool, json_name: "executionOptimistic"
end

defmodule Ethereum.Eth.V1.EventBlock do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.13.0"

  field :slot, 1, type: :uint64, deprecated: false
  field :block, 2, type: :bytes, deprecated: false
  field :execution_optimistic, 3, type: :bool, json_name: "executionOptimistic"
end

defmodule Ethereum.Eth.V1.EventChainReorg do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.13.0"

  field :slot, 1, type: :uint64, deprecated: false
  field :depth, 2, type: :uint64
  field :old_head_block, 3, type: :bytes, json_name: "oldHeadBlock", deprecated: false
  field :new_head_block, 4, type: :bytes, json_name: "newHeadBlock", deprecated: false
  field :old_head_state, 5, type: :bytes, json_name: "oldHeadState", deprecated: false
  field :new_head_state, 6, type: :bytes, json_name: "newHeadState", deprecated: false
  field :epoch, 7, type: :uint64, deprecated: false
  field :execution_optimistic, 8, type: :bool, json_name: "executionOptimistic"
end

defmodule Ethereum.Eth.V1.EventFinalizedCheckpoint do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.13.0"

  field :block, 1, type: :bytes, deprecated: false
  field :state, 2, type: :bytes, deprecated: false
  field :epoch, 3, type: :uint64, deprecated: false
  field :execution_optimistic, 4, type: :bool, json_name: "executionOptimistic"
end