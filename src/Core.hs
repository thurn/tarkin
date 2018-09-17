{-# LANGUAGE OverloadedStrings #-}

module Core (run, two) where

import Proto.Person as P
import Proto.Person_Fields as P
import Data.ProtoLens (defMessage, showMessage)
import Lens.Micro
import Web.Scotty (scotty, get, param, html)
import Data.Monoid (mconcat)

person :: P.Person
person =
  defMessage
      & P.name      .~ "Fintan"
      & P.age       .~ 24
      & P.addresses .~ [address]
  where
    address :: P.Address
    address =
      defMessage
          & P.street  .~ "Yolo street"
          & P.zipCode .~ "D8"

two = 2

run :: IO ()
run = scotty 46696 $ get "/:word" $ do
    beam <- param "word"
    html $ mconcat ["<h1>Scotty, ", beam, " me up!</h1>"]

-- run :: IO ()
-- run = do
--   putStrLn . showMessage $ person
