using System;
using UnityEngine;
using WebSocketSharp;
using System.Collections.Generic;

namespace Tarkin
{
  public class WebsocketService : MonoBehaviour
  {
    private WebSocket _websocket;
    private IEnumerator<WaitForSeconds> _autoReconnect;
    private bool _connectionClosed;

    void Start()
    {
      _websocket = CreateWebSocket();
      _websocket.Connect();
      _autoReconnect = AutoReconnect();
      StartCoroutine(_autoReconnect);
    }

    private WebSocket CreateWebSocket()
    {
      var websocket = new WebSocket("ws://localhost:46696");
      websocket.OnOpen += OnOpen;
      websocket.OnError += OnError;
      websocket.OnClose += OnClosed;
      websocket.OnMessage += OnMessageReceived;

      // To get log output:
      //websocket.Log.Level = LogLevel.Trace;
      //websocket.Log.Output = (logData, message) =>
      //{
      //  Debug.Log("[websocket-sharp] " + logData);
      //};

      return websocket;
    }

    private IEnumerator<WaitForSeconds> AutoReconnect()
    {
      while (true)
      {
        yield return new WaitForSeconds(1.0f);
        if (_connectionClosed && (_websocket.ReadyState == WebSocketState.Closed))
        {
          _websocket = CreateWebSocket();
          _websocket.Connect();
        }
      }
    }

    private void OnOpen(object sender, EventArgs args)
    {
      Debug.Log("Websocket Connected");
      _connectionClosed = false;
    }

    private void OnError(object sender, ErrorEventArgs args)
    {
      Debug.LogError("Unity WebSocketError. Message: " + args.Message + " Exception: " + args.Exception);
    }

    private void OnClosed(object sender, CloseEventArgs args)
    {
      _connectionClosed = true;
    }

    private void OnMessageReceived(object sender, MessageEventArgs messageArgs)
    {
      Debug.Log("Got Message: " + messageArgs.Data);
    }
  }
}
