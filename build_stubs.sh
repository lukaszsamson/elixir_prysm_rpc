#!/bin/sh
set -e

PROTOC_ARGS="--elixir_out=plugins=grpc:./lib/ \
  -I. \
  -I./googleapis \
  -I./prysm"

protoc $PROTOC_ARGS --proto_path=prysm/proto prysm/v1alpha1/web_api.proto
protoc $PROTOC_ARGS --proto_path=prysm/proto prysm/v1alpha1/validator.proto
protoc $PROTOC_ARGS --proto_path=prysm/proto prysm/v1alpha1/beacon_chain.proto
protoc $PROTOC_ARGS --proto_path=prysm/proto prysm/v1alpha1/node.proto
