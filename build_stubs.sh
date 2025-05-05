#!/bin/sh
set -e

PROTOC_ARGS="--elixir_out=plugins=grpc:./lib/ \
  -I. \
  -I./googleapis \
  -I./grpc-gateway \
  -I./prysm"

# find prysm/proto -name "*.proto"

protoc $PROTOC_ARGS --proto_path=prysm/proto dbval/dbval.proto
protoc $PROTOC_ARGS --proto_path=prysm/proto testing/test.proto
protoc $PROTOC_ARGS --proto_path=prysm/proto eth/v1/attestation.proto
protoc $PROTOC_ARGS --proto_path=prysm/proto eth/v1/events.proto
protoc $PROTOC_ARGS --proto_path=prysm/proto eth/v1/node.proto
protoc $PROTOC_ARGS --proto_path=prysm/proto eth/v1/beacon_block.proto
protoc $PROTOC_ARGS --proto_path=prysm/proto eth/v1/beacon_chain.proto
protoc $PROTOC_ARGS --proto_path=prysm/proto eth/v1/validator.proto
protoc $PROTOC_ARGS --proto_path=prysm/proto eth/ext/options.proto
protoc $PROTOC_ARGS --proto_path=prysm/proto engine/v1/electra.proto
protoc $PROTOC_ARGS --proto_path=prysm/proto engine/v1/execution_engine.proto
protoc $PROTOC_ARGS --proto_path=prysm/proto prysm/v1alpha1/eip_7251.proto
protoc $PROTOC_ARGS --proto_path=prysm/proto prysm/v1alpha1/attestation.proto
protoc $PROTOC_ARGS --proto_path=prysm/proto prysm/v1alpha1/blobs.proto
protoc $PROTOC_ARGS --proto_path=prysm/proto prysm/v1alpha1/finalized_block_root_container.proto
protoc $PROTOC_ARGS --proto_path=prysm/proto prysm/v1alpha1/validator-client/keymanager.proto
protoc $PROTOC_ARGS --proto_path=prysm/proto prysm/v1alpha1/slasher.proto
protoc $PROTOC_ARGS --proto_path=prysm/proto prysm/v1alpha1/powchain.proto
protoc $PROTOC_ARGS --proto_path=prysm/proto prysm/v1alpha1/debug.proto
protoc $PROTOC_ARGS --proto_path=prysm/proto prysm/v1alpha1/node.proto
protoc $PROTOC_ARGS --proto_path=prysm/proto prysm/v1alpha1/withdrawals.proto
protoc $PROTOC_ARGS --proto_path=prysm/proto prysm/v1alpha1/health.proto
protoc $PROTOC_ARGS --proto_path=prysm/proto prysm/v1alpha1/beacon_block.proto
protoc $PROTOC_ARGS --proto_path=prysm/proto prysm/v1alpha1/light_client.proto
protoc $PROTOC_ARGS --proto_path=prysm/proto prysm/v1alpha1/data_columns.proto
protoc $PROTOC_ARGS --proto_path=prysm/proto prysm/v1alpha1/sync_committee.proto
protoc $PROTOC_ARGS --proto_path=prysm/proto prysm/v1alpha1/beacon_state.proto
protoc $PROTOC_ARGS --proto_path=prysm/proto prysm/v1alpha1/beacon_chain.proto
protoc $PROTOC_ARGS --proto_path=prysm/proto prysm/v1alpha1/validator.proto
protoc $PROTOC_ARGS --proto_path=prysm/proto prysm/v1alpha1/p2p_messages.proto
