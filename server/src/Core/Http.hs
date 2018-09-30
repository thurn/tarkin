module Core.Http (sendRequest) where

import Network.HTTP.Simple (httpBS, parseRequest, setRequestBody)
import Network.HTTP.Client.Conduit (RequestBody(..))
import Proto.Data as P
import Proto.Data_Fields as P
import Data.ProtoLens.Encoding (encodeMessage)

sendRequest :: P.UpdateStateRequest -> IO ()
sendRequest updateState = do
    request <- parseRequest "POST http://localhost:46697"
    let body = RequestBodyBS $ encodeMessage updateState
    response <- httpBS $ setRequestBody body request
    putStrLn $ "Got Response: " ++ show response