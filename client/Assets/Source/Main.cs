using UnityEngine;
using Tarkin.Data;
using Google.Protobuf;

namespace Tarkin.Main
{
  public class Main : MonoBehaviour
  {
    public void Start()
    {
      var request = new Request
      {
        FirstName = "Thomas",
        FirstNumber = 14
      };
      var bytes = request.ToByteArray();
      Debug.Log("Hello " + request.FirstName);
    }
  }
}

