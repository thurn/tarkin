module Core (main, two) where

import Http (sendRequest)
import Examples as E

two :: Int
two = 2

main :: IO ()
main = sendRequest $ E.createGameObject E.empty