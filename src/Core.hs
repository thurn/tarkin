{-# LANGUAGE OverloadedStrings #-}

module Core (run, two) where

import Data.ProtoLens (defMessage, showMessage, encodeMessage)
import Lens.Micro
import Web.Scotty (scotty, get, param, html)
import Data.Monoid (mconcat)
import Proto.Data as D
import Proto.Data_Fields as D
import Data.ByteString as ByteString

request :: D.Request
request =
  defMessage
    & D.firstNumber .~ 42
    & D.firstName .~ "Hello"

response :: D.Response
response =
  defMessage
    & D.otherNumber .~ 117
    & D.lastName .~ "World"

run :: IO ()
run = ByteString.putStr (encodeMessage response)

-- person :: P.Person
-- person =
--   defMessage
--       & P.name      .~ "Fintan"
--       & P.age       .~ 24
--       & P.addresses .~ [address]
--   where
--     address :: P.Address
--     address =
--       defMessage
--           & P.street  .~ "Yolo street"
--           & P.zipCode .~ "D8"

two = 2

-- run :: IO ()
-- run = scotty 46696 $ get "/:word" $ do
--     beam <- param "word"
--     html $ mconcat ["<h1>Scotty, ", beam, " me up!</h1>"]

-- run :: IO ()
-- run = putStrLn . showMessage $ person
