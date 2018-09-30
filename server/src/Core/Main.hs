module Core.Main (main) where

import Proto.Data as P
import Proto.Data_Fields as P
import Data.ProtoLens (defMessage)

import Core.Http (sendRequest)
import Core.Examples as E

main = sendRequest $ E.createGameObject E.empty