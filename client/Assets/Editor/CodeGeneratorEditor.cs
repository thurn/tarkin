using UnityEngine;
using UnityEditor;
using System.IO;
using System.Text.RegularExpressions;
using System.Collections.Generic;
using System.Text;

namespace Tarkin
{
  [CustomEditor(typeof(CodeGenerator))]
  public class SceneObjectsEditor : Editor
  {
    private static readonly string[] SKIP_PACKAGES = { "com.unity.package-manager-ui" };

    public override void OnInspectorGUI()
    {
      if (GUILayout.Button("Update"))
      {
        var codeGenerator = (CodeGenerator)target;
        if (codeGenerator.ConstantsPath == null)
        {
          Debug.LogError("Error: ConstantsPath not specified");
          return;
        }

        if (codeGenerator.ModulePrefix == null)
        {
          Debug.LogError("Error: ModulePrefix not specified");
          return;
        }

        var sceneObjects = codeGenerator.gameObject.GetComponent<SceneObjects>();
        var assetReferences = codeGenerator.gameObject.GetComponent<AssetReferences>();

        var gameObjects = FindObjectsOfType<GameObject>();
        sceneObjects.GameObjects = gameObjects;

        assetReferences.Prefabs = FindAssets<GameObject>("t:GameObject", mainAssetOnly: true);
        assetReferences.Sprites = FindAssets<Sprite>("t:Sprite");
        assetReferences.Materials = FindAssets<Material>("t:Material");
        assetReferences.Fonts = FindAssets<Font>("t:Font");

        GenerateSceneObjects(codeGenerator, sceneObjects);
        GenerateAssetReferences(codeGenerator, assetReferences);

        Debug.Log("Updated Generated Code.");
      }

      DrawDefaultInspector();
    }

    private static List<T> FindAssets<T>(string searchString,
      bool mainAssetOnly = false,
      string[] searchInFolders = null) where T : Object
    {
      var result = new List<T>();
      var assetHashes = searchInFolders == null ?
        AssetDatabase.FindAssets(searchString) :
        AssetDatabase.FindAssets(searchString, searchInFolders);

      var visited = new HashSet<string>();
      foreach (var hash in assetHashes)
      {
        var path = AssetDatabase.GUIDToAssetPath(hash);
        if (visited.Contains(path))
        {
          // Handle the same path being returned for multiple assets
          continue;
        }

        // Skip unity packages that have their own internal assets
        var skip = false;
        foreach (var skipPackage in SKIP_PACKAGES)
        {
          if (path.StartsWith("Packages/" + skipPackage))
          {
            skip = true;
          }
        }
        if (skip)
        {
          continue;
        }
        
        if (mainAssetOnly)
        {
          result.Add(AssetDatabase.LoadAssetAtPath<T>(path));
        }
        else
        {
          var assets = AssetDatabase.LoadAllAssetsAtPath(path);
          foreach (var asset in assets)
          {
            if (asset.GetType() == typeof(T))
            {
              result.Add((T)asset);
            }
          }
        }

        visited.Add(path);
      }
      return result;
    }

    private static void GenerateSceneObjects(CodeGenerator codeGenerator, SceneObjects sceneObjects)
    {
      var gameObjects = sceneObjects.GameObjects;
      var path = Path.GetFullPath(Path.Combine(codeGenerator.ConstantsPath, "SceneObjects.hs"));
      using (var stream = new StreamWriter(path))
      {
        stream.WriteLine("module " + codeGenerator.ModulePrefix + ".SceneObjects where\n");
        stream.WriteLine("newtype SceneObject = SceneObject Int\n");

        for (var i = 0; i < gameObjects.Length; ++i)
        {
          var name = NormalizeName(gameObjects[i].name);
          stream.WriteLine(name + " :: SceneObject");
          stream.WriteLine(name + " = SceneObject " + i + "\n");
        }

        stream.WriteLine("nextFreeId :: Int");
        stream.WriteLine("nextFreeId = " + gameObjects.Length);
      }
    }

    private static void GenerateAssetReferences(CodeGenerator codeGenerator, AssetReferences assetReferences)
    {
      var path = Path.GetFullPath(Path.Combine(codeGenerator.ConstantsPath, "Assets.hs"));
      using (var stream = new StreamWriter(path))
      {
        stream.WriteLine("module " + codeGenerator.ModulePrefix + ".Assets where\n");
        stream.WriteLine("newtype Prefab = Prefab Int");
        stream.WriteLine("newtype Sprite = Sprite Int");
        stream.WriteLine("newtype Material = Material Int");
        stream.WriteLine("newtype Font = Font Int\n");

        for (var i = 0; i < assetReferences.Prefabs.Count; ++i)
        {
          var name = NormalizeName(assetReferences.Prefabs[i].name);
          stream.WriteLine(name + " :: Prefab");
          stream.WriteLine(name + " = Prefab " + i + "\n");
        }

        for (var i = 0; i < assetReferences.Sprites.Count; ++i)
        {
          var name = NormalizeName(assetReferences.Sprites[i].name);
          stream.WriteLine(name + " :: Sprite");
          stream.WriteLine(name + " = Sprite " + i + "\n");
        }

        for (var i = 0; i < assetReferences.Materials.Count; ++i)
        {
          var name = NormalizeName(assetReferences.Materials[i].name);
          stream.WriteLine(name + " :: Material");
          stream.WriteLine(name + " = Material " + i + "\n");
        }

        for (var i = 0; i < assetReferences.Fonts.Count; ++i)
        {
          var name = NormalizeName(assetReferences.Materials[i].name);
          stream.WriteLine(name + " :: Font");
          stream.WriteLine(name + " = Font " + i + "\n");
        }
      }
    }

    private static string NormalizeName(string name)
    {
      var result = Regex.Replace(ToCamelCase(name), @"\W+", "");
      return result[0].ToString().ToLower() + result.Substring(1);
    }

    private static string ToCamelCase(string input)
    {
      StringBuilder sb = new StringBuilder();
      bool caseFlag = false;
      for (int i = 0; i < input.Length; ++i)
      {
        char c = input[i];
        if (c == '_')
        {
          caseFlag = true;
        }
        else if (caseFlag)
        {
          sb.Append(char.ToUpper(c));
          caseFlag = false;
        }
        else
        {
          sb.Append(c);
        }
      }
      return sb.ToString();
    }
  }
}