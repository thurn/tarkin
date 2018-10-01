module Main where

import Core.Main (two)

main :: IO ()
main = putStrLn $ "Value of two is: " ++ (show two)
