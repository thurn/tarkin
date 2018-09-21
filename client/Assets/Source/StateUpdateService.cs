using UnityEngine;
using Tarkin.Data;
using System.Threading.Tasks;
using System.Collections.Generic;

namespace Tarkin
{
  public class StateUpdateService : MonoBehaviour
  {
    Task<TaskResult> _runningStateUpdate;
    Queue<UpdateStateRequest> _updateQueue;
    AssetService _assetService;
    SystemCommandService _systemCommandService;
    GameObjectService _gameObjectService;

    public void Awake()
    {
      _updateQueue = new Queue<UpdateStateRequest>();
      _assetService = new AssetService();
      _systemCommandService = new SystemCommandService();
      var objects = GetComponent<SceneObjects>();
      _gameObjectService = new GameObjectService(objects.GameObjects, _assetService);
    }

    public void EnqueueStateUpdate(UpdateStateRequest request)
    {
      _updateQueue.Enqueue(request);
    }

    void Update()
    {
      if (_updateQueue.Count != 0 && _runningStateUpdate == null)
      {
        _runningStateUpdate = HandleStateUpdateAsync(_updateQueue.Dequeue());
      }
      else if (_runningStateUpdate != null && _runningStateUpdate.IsCompleted)
      {
        if (_runningStateUpdate.Result.Failed)
        {
          Debug.Log("Error: State Update Failed.\n" + _runningStateUpdate.Result.Message);
        }
        _runningStateUpdate = null;
      }
    }

    async Task<TaskResult> HandleStateUpdateAsync(UpdateStateRequest request)
    {
      foreach (var command in request.SystemCommands)
      {
        var commandResult = await _systemCommandService.RunCommand(command);
        if (commandResult.Failed)
        {
          return commandResult;
        }
      }

      if (request.LoadAssets.Count != 0)
      {
        var result = await _assetService.LoadAssets(request.LoadAssets);
        if (result.Failed)
        {
          return result;
        }
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

      return TaskResult.Success();
    }
  }
}