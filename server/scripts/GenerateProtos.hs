#!/usr/bin/env stack
-- stack script --resolver nightly-2018-09-16

module GenerateProtos where

import Data.ProtoLens.Setup

main =
  do
    generateProtos "." "src" ["google/protobuf/wrappers.proto"]
    generateProtos "../proto" "src" ["../proto/data.proto"]
