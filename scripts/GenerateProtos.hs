#!/usr/bin/env stack
-- stack script --resolver nightly-2018-09-16

module GenerateProtos where

import Data.ProtoLens.Setup

main = generateProtos "proto" "src" ["proto/person.proto"]
