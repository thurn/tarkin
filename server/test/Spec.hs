module Main where

import Core (two)

main :: IO ()
main = putStrLn $ "Value of two is: " ++ (show two)
