using UnityEngine;
using UnityEditor;
using System.IO;
using System.Text.RegularExpressions;
using System.Collections.Generic;

namespace Tarkin
{
  [CustomEditor(typeof(CodeGenerator))]
  public class SceneObjectsEditor : Editor
  {
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

        if (codeGenerator.ModuleName == null)
        {
          Debug.LogError("Error: ModuleName not specified");
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

        var path = Path.GetFullPath(codeGenerator.ConstantsPath);
        Debug.Log("Updating " + path);
        using (var stream = new StreamWriter(path))
        {
          stream.WriteLine("module " + codeGenerator.ModuleName + " where\n");
          for (var i = 0; i < gameObjects.Length; ++i)
          {
            var objectName = Regex.Replace(gameObjects[i].name, @"\W+", "");
            stream.WriteLine(objectName[0].ToString().ToLower() + objectName.Substring(1) + " = " + i);
          }
          stream.WriteLine("nextFreeId = " + gameObjects.Length);
        }
      }

      DrawDefaultInspector();
    }

    private List<T> FindAssets<T>(string searchString,
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

        Debug.Log("Path: " + path);
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
  }
}