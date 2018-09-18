using UnityEngine;
using Tarkin.Data;
using System.Threading.Tasks;

namespace Tarkin
{
  public class StateUpdateService : MonoBehaviour
  {
    public enum UpdateResult
    {
      Success,
      Failure
    }

    readonly AssetService _assetService;
    readonly SystemCommandService _systemCommandService;
    readonly GameObjectService _gameObjectService;

    public StateUpdateService()
    {
      _assetService = new AssetService();
      _systemCommandService = new SystemCommandService();
      _gameObjectService = new GameObjectService(_assetService);
    }

    public async Task<Result> HandleStateUpdate(UpdateStateRequest request)
    {
      foreach (var command in request.Commands)
      {
        var updateResult = await _systemCommandService.RunCommand(command);
        if (updateResult == Result.Failure)
        {
          return Result.Failure;
        }
      }

      var result = await _assetService.LoadAssets(request.LoadAssets);
      if (result == Result.Failure)
      {
        return Result.Failure;
      }

      foreach (var createGameObject in request.CreateGameObjects)
      {
        _gameObjectService.CreateGameObject(createGameObject);
      }

      foreach (var updateGameObject in request.UpdateGameObjects)
      {
        _gameObjectService.UpdateGameObject(updateGameObject);
      }

      foreach (var destroyGameObject in request.DestroyGameObjects)
      {
        _gameObjectService.DestroyGameObject(destroyGameObject);
      }

      return Result.Success;
    }
  }
}