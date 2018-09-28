{-# LANGUAGE OverloadedStrings #-}

module Core (run, two) where

import Data.ProtoLens (defMessage, encodeMessage)
import Data.ProtoLens.Encoding (decodeMessageOrDie, encodeMessage)
import Control.Lens.Operators
import Web.Scotty (scotty, post, body, raw)
import Data.ByteString.Lazy (toStrict, fromStrict)
import Data.ByteString (ByteString)
import qualified Proto.Data as D
import qualified Proto.Data_Fields as D

request :: D.Request
request =
  defMessage
    & D.firstNumber .~ 42
    & D.firstName .~ "Hello"

respond :: ByteString -> D.Response
respond req = defMessage
    & D.otherNumber .~ (requestMessage ^. D.firstNumber) + 100
    & D.lastName .~ "Hello, " <> (requestMessage ^. D.firstName)
  where
    requestMessage :: D.Request
    requestMessage = decodeMessageOrDie req

run :: IO ()
run = scotty 46696 $ post "/" $ do
  requestBody <- body
  let resp = respond (toStrict requestBody)
      encoded = encodeMessage resp
  raw (fromStrict encoded) -- TODO: Content Length?

two = 2
