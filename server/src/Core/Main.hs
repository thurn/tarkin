module Core.Main (main, two) where

import Core.Http (sendRequest)
import Core.Examples as E

two :: Int
two = 2

main :: IO ()
main = sendRequest $ E.createGameObject E.empty