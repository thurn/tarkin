{-# LANGUAGE OverloadedStrings #-}

module Examples where

import qualified Proto.Data as P
import qualified Proto.Data_Fields as P
import Data.ProtoLens (defMessage)
import Control.Lens.Operators

systemCommand :: P.SystemCommandRequest -> P.UpdateStateRequest
systemCommand x = defMessage & P.systemCommands .~ [x]

createGameObject :: P.CreateGameObjectRequest -> P.UpdateStateRequest
createGameObject x = defMessage & P.createGameObjects .~ [x]

updateGameObject :: P.UpdateGameObjectRequest -> P.UpdateStateRequest
updateGameObject x = defMessage & P.updateGameObjects .~ [x]

destroyGameObject :: P.DestroyGameObjectRequest -> P.UpdateStateRequest
destroyGameObject x = defMessage & P.destroyGameObjects .~ [x]

empty :: P.CreateGameObjectRequest
empty = defMessage
    & P.newObjectId .~ 100
    & P.name .~ "Empty"