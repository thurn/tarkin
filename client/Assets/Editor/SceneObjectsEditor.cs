using UnityEngine;
using UnityEditor;
using System.IO;
using System.Text.RegularExpressions;

namespace Tarkin
{
  [CustomEditor(typeof(SceneObjects))]
  public class SceneObjectsEditor : Editor
  {
    public override void OnInspectorGUI()
    {
      var sceneObjects = (SceneObjects)target;

      if (GUILayout.Button("Update"))
      {

        var gameObjects = FindObjectsOfType<GameObject>();
        sceneObjects.GameObjects = gameObjects;

        if (sceneObjects.ConstantsPath == null)
        {
          Debug.LogError("Error: ConstantsPath not specified");
          return;
        }

        if (sceneObjects.ModuleName == null)
        {
          Debug.LogError("Error: ModuleName not specified");
          return;
        }

        var path = Path.GetFullPath(sceneObjects.ConstantsPath);
        Debug.Log("Updating " + path);
        using (var stream = new StreamWriter(path))
        {
          stream.WriteLine("module " + sceneObjects.ModuleName + " where\n");
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
  }
}
