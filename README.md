# PrysmRPC

Prysm Eth2 client gRPC stubs.

## Installation

Add this repo to mix.exs

## Stub regeneration

To regenerate stubs

0. Download/update submodules

1. Install `protoc`, e.g.
`brew install protobuf`

2. Install protoc plugin protoc-gen-elixir for Elixir.
`mix escript.install hex protobuf`

3. Make sure escripts dir is in PATH `$HOME/.mix/escripts`

4. Run `./build_stubs.sh`
