#!/bin/sh
set -e

PROTOC_ARGS="--elixir_out=plugins=grpc:./lib/ \
  -I. \
  -I./googleapis \
  -I./grpc-gateway \
  -I./prysm"

# find prysm/proto -name "*.proto"

protoc $PROTOC_ARGS --proto_path=prysm/proto testing/test.proto
protoc $PROTOC_ARGS --proto_path=prysm/proto eth/v1/attestation.proto
protoc $PROTOC_ARGS --proto_path=prysm/proto eth/v1/events.proto
protoc $PROTOC_ARGS --proto_path=prysm/proto eth/v1/node.proto
protoc $PROTOC_ARGS --proto_path=prysm/proto eth/v1/beacon_block.proto
protoc $PROTOC_ARGS --proto_path=prysm/proto eth/v1/beacon_state.proto
protoc $PROTOC_ARGS --proto_path=prysm/proto eth/v1/beacon_chain.proto
protoc $PROTOC_ARGS --proto_path=prysm/proto eth/v1/validator.proto
protoc $PROTOC_ARGS --proto_path=prysm/proto eth/ext/options.proto
protoc $PROTOC_ARGS --proto_path=prysm/proto eth/v2/withdrawals.proto
protoc $PROTOC_ARGS --proto_path=prysm/proto eth/v2/beacon_block.proto
protoc $PROTOC_ARGS --proto_path=prysm/proto eth/v2/sync_committee.proto
protoc $PROTOC_ARGS --proto_path=prysm/proto eth/v2/ssz.proto
protoc $PROTOC_ARGS --proto_path=prysm/proto eth/v2/beacon_state.proto
protoc $PROTOC_ARGS --proto_path=prysm/proto eth/v2/beacon_chain.proto
protoc $PROTOC_ARGS --proto_path=prysm/proto eth/v2/validator.proto
protoc $PROTOC_ARGS --proto_path=prysm/proto eth/v2/version.proto
protoc $PROTOC_ARGS --proto_path=prysm/proto eth/service/beacon_chain_service.proto
protoc $PROTOC_ARGS --proto_path=prysm/proto eth/service/key_management.proto
protoc $PROTOC_ARGS --proto_path=prysm/proto eth/service/node_service.proto
protoc $PROTOC_ARGS --proto_path=prysm/proto eth/service/validator_service.proto
protoc $PROTOC_ARGS --proto_path=prysm/proto eth/service/events_service.proto
protoc $PROTOC_ARGS --proto_path=prysm/proto eth/service/beacon_debug_service.proto
protoc $PROTOC_ARGS --proto_path=prysm/proto engine/v1/execution_engine.proto
protoc $PROTOC_ARGS --proto_path=prysm/proto prysm/v1alpha1/attestation.proto
protoc $PROTOC_ARGS --proto_path=prysm/proto prysm/v1alpha1/finalized_block_root_container.proto
protoc $PROTOC_ARGS --proto_path=prysm/proto prysm/v1alpha1/validator-client/keymanager.proto
protoc $PROTOC_ARGS --proto_path=prysm/proto prysm/v1alpha1/validator-client/web_api.proto
protoc $PROTOC_ARGS --proto_path=prysm/proto prysm/v1alpha1/slasher.proto
protoc $PROTOC_ARGS --proto_path=prysm/proto prysm/v1alpha1/powchain.proto
protoc $PROTOC_ARGS --proto_path=prysm/proto prysm/v1alpha1/debug.proto
protoc $PROTOC_ARGS --proto_path=prysm/proto prysm/v1alpha1/node.proto
protoc $PROTOC_ARGS --proto_path=prysm/proto prysm/v1alpha1/withdrawals.proto
protoc $PROTOC_ARGS --proto_path=prysm/proto prysm/v1alpha1/health.proto
protoc $PROTOC_ARGS --proto_path=prysm/proto prysm/v1alpha1/beacon_block.proto
protoc $PROTOC_ARGS --proto_path=prysm/proto prysm/v1alpha1/sync_committee.proto
protoc $PROTOC_ARGS --proto_path=prysm/proto prysm/v1alpha1/beacon_state.proto
protoc $PROTOC_ARGS --proto_path=prysm/proto prysm/v1alpha1/beacon_chain.proto
protoc $PROTOC_ARGS --proto_path=prysm/proto prysm/v1alpha1/validator.proto
protoc $PROTOC_ARGS --proto_path=prysm/proto prysm/v1alpha1/p2p_messages.proto
# prysm/v1alpha1/swagger.proto:25:72: Error while parsing option value for "openapiv2_swagger": Non-repeated field "description" is specified multiple times.
# protoc $PROTOC_ARGS --proto_path=prysm/proto prysm/v1alpha1/swagger.proto
