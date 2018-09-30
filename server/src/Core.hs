module Core (main, two) where

import Data.ProtoLens (defMessage, encodeMessage)
import Data.ProtoLens.Encoding (decodeMessageOrDie, encodeMessage)
import Data.Text.Lazy (pack)
import Control.Lens.Operators
import Control.Monad (forever)
import Data.ByteString.Lazy (toStrict, fromStrict)
import Data.ByteString (ByteString)
import Control.Concurrent (MVar, newMVar, swapMVar)
import Control.Exception (catch)
import qualified Proto.Data as D
import qualified Proto.Data_Fields as D
import qualified Network.WebSockets as WS

two = 2

port :: Int
port = 46696

address :: String
address = "127.0.0.1"

type ServerState = Maybe WS.Connection

handleMessage :: WS.DataMessage -> IO ()
handleMessage message = do
  putStrLn $ "Got message: " ++ (show message)

handleConnection :: MVar ServerState -> WS.Connection -> IO ()
handleConnection state connection = do
  putStrLn "Got connection"
  swapMVar state $ Just connection
  WS.sendTextData connection $ pack "Hello, world"
  catch (forever receive) onException
  where
    receive :: IO ()
    receive = do
          message <- WS.receiveDataMessage connection
          handleMessage message
    onException :: WS.ConnectionException -> IO ()
    onException WS.ConnectionClosed = putStrLn "Client disconnected"
    onException exception = putStrLn $ "ERROR: " ++ (show exception)

application :: MVar ServerState -> WS.ServerApp
application state pending = do
  connection <- WS.acceptRequest pending
  WS.forkPingThread connection 1
  handleConnection state connection

main :: IO ()
main = do
  putStrLn $ "Listening on " ++ address ++ ":" ++ show port
  state <- newMVar Nothing
  WS.runServer address port $ application state