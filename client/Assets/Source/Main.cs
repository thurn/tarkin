using UnityEngine;
using UnityEngine.Networking;
using Google.Protobuf;
using Tarkin.Data;
using System.Collections;
using System;

namespace Tarkin.Main
{
  public class Main : MonoBehaviour
  {
    public IEnumerator Start()
    {
      var startTick = Environment.TickCount;
      var request = new Request
      {
        FirstName = "Thomas",
        FirstNumber = 14
      };

      using (var webRequest = new UnityWebRequest("http://localhost:46696", UnityWebRequest.kHttpVerbPOST))
      {
        var uploadHandler = new UploadHandlerRaw(request.ToByteArray())
        {
          contentType = "application/octet-stream"
        };
        webRequest.uploadHandler = uploadHandler;

        var downloadHandler = new DownloadHandlerBuffer();
        webRequest.downloadHandler = downloadHandler;

        yield return webRequest.SendWebRequest();

        var response = Response.Parser.ParseFrom(downloadHandler.data);
        var totalTime = Environment.TickCount - startTick;
        Debug.Log("Got response: " + response.LastName + " " + response.OtherNumber + " in " + totalTime + "ms");
      }
    }
  }
}

