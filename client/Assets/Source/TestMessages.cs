using UnityEngine;
using Tarkin.Data;

public class TestMessages : MonoBehaviour
{
  void Start()
  {
    var t3d = new ZTransform
    {
      LocalPosition = new ZVector3()
      {
        X = 1,
        Y = 1,
        Z = 1
      }
    };
    Debug.Log("t3d.position " + (t3d.LocalPosition == null));
    Debug.Log("t3d.scale " + (t3d.LocalScale == null));
  }
}
