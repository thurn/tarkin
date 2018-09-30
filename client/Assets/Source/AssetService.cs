using Tarkin.Data;
using UnityEngine;

namespace Tarkin
{
  public class AssetService
  {
    readonly IntMap<GameObject> _prefabs;
    readonly IntMap<Sprite> _sprites;
    readonly IntMap<Material> _materials;
    readonly IntMap<Font> _fonts;

    public AssetService(AssetReferences references)
    {
      _prefabs = new IntMap<GameObject>(references.Prefabs);
      _sprites = new IntMap<Sprite>(references.Sprites);
      _materials = new IntMap<Material>(references.Materials);
      _fonts = new IntMap<Font>(references.Fonts);
    }

    public GameObject GetPrefab(ZPrefab prefab)
    {
      return _prefabs[prefab.PrefabId];
    }

    public Sprite GetSprite(ZSprite sprite)
    {
      return _sprites[sprite.SpriteId];
    }

    public Material GetMaterial(ZMaterial material)
    {
      return _materials[material.MaterialId];
    }

    public Font GetFont(ZFont font)
    {
      return _fonts[font.FontId];
    }
  }
}
