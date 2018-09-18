using UnityEngine;
using Tarkin.Data;

namespace Tarkin
{
  public class GameObjectService
  {
    readonly IntMap<GameObject> _gameObjects = new IntMap<GameObject>();
    readonly ComponentService _componentService;

    public GameObjectService(AssetService assetService)
    {
      _componentService = new ComponentService(this, assetService);
    }

    public void CreateGameObject(CreateGameObjectRequest request)
    {
      var gameObject = new GameObject(request.Name);

      if (request.ParentGameObject != null)
      {
        var parent = GetGameObject(request.ParentGameObject);
        gameObject.transform.SetParent(parent.transform, worldPositionStays: true);
      }

      foreach (var zComponent in request.Components)
      {
        _componentService.CreateOrUpdateComponent(zComponent, gameObject);
      }

      if (request.Transform != null)
      {
        UpdateTransform(request.Transform, gameObject);
      }

      _gameObjects[request.NewObjectId] = gameObject;
    }

    public void UpdateGameObject(UpdateGameObjectRequest request)
    {
      var gameObject = GetGameObject(request.GameObject);

      if (request.ParentGameObject != null)
      {
        var parent = GetGameObject(request.ParentGameObject);
        gameObject.transform.SetParent(parent.transform, worldPositionStays: true);
      }

      foreach (var zComponent in request.Components)
      {
        _componentService.CreateOrUpdateComponent(zComponent, gameObject);
      }

      if (request.Transform != null)
      {
        UpdateTransform(request.Transform, gameObject);
      }
    }

    public void DestroyGameObject(DestroyGameObjectRequest request)
    {
      var gameObject = GetGameObject(request.GameObject);
      Object.Destroy(gameObject);
      _gameObjects.Remove(request.GameObject.GameObjectId);
    }

    public GameObject GetGameObject(ZGameObject gameObject)
    {
      return _gameObjects[gameObject.GameObjectId];
    }

    static void UpdateTransform(ZTransform zTransform, GameObject gameObject)
    {
      Transform transform = null;
      switch (zTransform.TransformCase)
      {
        case ZTransform.TransformOneofCase.RectTransform:
          transform = UpdateRectTransform(zTransform.RectTransform, gameObject);
          break;
        default:
          transform = gameObject.transform;
          break;
      }

      if (zTransform.LocalPosition != null)
      {
        transform.localPosition = ZUtils.Vector3(zTransform.LocalPosition);
      }

      if (zTransform.LocalEulerAngles != null)
      {
        transform.localEulerAngles = ZUtils.Vector3(zTransform.LocalEulerAngles);
      }

      if (zTransform.LocalScale != null)
      {
        transform.localScale = ZUtils.Vector3(zTransform.LocalScale);
      }
    }

    static RectTransform UpdateRectTransform(ZRectTransform zTransform, GameObject gameObject)
    {
      RectTransform rectTransform = (RectTransform)gameObject.transform;

      if (zTransform.SizeDelta != null)
      {
        rectTransform.sizeDelta = ZUtils.Vector2(zTransform.SizeDelta);
      }

      if (zTransform.AnchorMin != null)
      {
        rectTransform.anchorMin = ZUtils.Vector2(zTransform.AnchorMin);
      }

      if (zTransform.AnchorMax != null)
      {
        rectTransform.anchorMax = ZUtils.Vector2(zTransform.AnchorMax);
      }

      if (zTransform.Pivot != null)
      {
        rectTransform.pivot = ZUtils.Vector2(zTransform.Pivot);
      }

      return rectTransform;
    }
  }
}
