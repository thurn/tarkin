using UnityEngine;
using Unosquare.Labs.EmbedIO;
using Unosquare.Labs.EmbedIO.Modules;
using Unosquare.Labs.EmbedIO.Constants;
using System.Threading.Tasks;
using Tarkin.Data;

namespace Tarkin
{
  [RequireComponent(typeof(StateUpdateService))]
  public class HttpService : MonoBehaviour
  {
    StateUpdateService _stateUpdateService;
    WebServer _server;

    void OnEnable()
    {
      _stateUpdateService = GetComponent<StateUpdateService>();
      _server = new WebServer("http://localhost:46697/");
      _server.RegisterModule(new WebApiModule());
      _server.Module<WebApiModule>().RegisterController((context) =>
      {
        return new UpdateController(context, _stateUpdateService);
      });
      Debug.Log("Starting HTTP Server...");
      _server.RunAsync().ContinueWith(t => Debug.Log("HTTP ERROR: " + t.Exception),
                                      TaskContinuationOptions.OnlyOnFaulted);
    }

    void OnDisable()
    {
      _server.Dispose();
      _server = null;
    }
  }

  public class UpdateController : WebApiController
  {
    StateUpdateService _stateUpdateService;

    public UpdateController(IHttpContext context, StateUpdateService stateUpdateService) : base(context)
    {
      _stateUpdateService = stateUpdateService;
    }

    [WebApiHandler(HttpVerbs.Post, "/")]
    public bool UpdateState(int id)
    {
      var decoded = UpdateStateRequest.Parser.ParseFrom(Request.InputStream);
      Debug.Log("Got USR: " + decoded);
      _stateUpdateService.EnqueueStateUpdate(decoded);
      return true;
    }
  }
}
