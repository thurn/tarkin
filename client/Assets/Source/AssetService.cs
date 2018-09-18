using System.Collections.Generic;
using System.Threading.Tasks;
using Tarkin.Data;
using UnityEngine;

namespace Tarkin
{
  public class AssetService
  {
    public async Task<Result> LoadAssets(IList<LoadAssetRequest> loadAssets)
    {
      return Result.Success;
    }

    public GameObject GetPrefab(ZPrefab prefab)
    {
      return null;
    }

    public Sprite GetSprite(ZSprite sprite)
    {
      return null;
    }

    public Material GetMaterial(ZMaterial material)
    {
      return null;
    }

    public Font GetFont(ZFont font)
    {
      return null;
    }
  }
}
