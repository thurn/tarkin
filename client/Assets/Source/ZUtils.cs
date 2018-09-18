using UnityEngine;
using Tarkin.Data;

namespace Tarkin
{
  public static class ZUtils
  {
    public static Vector2 Vector2(ZVector2 input)
    {
      return new Vector2(input.X, input.Y);
    }

    public static Vector3 Vector3(ZVector3 input)
    {
      return new Vector3(input.X, input.Y, input.Z);
    }

    public static Color Color(ZColor color)
    {
      return new Color(color.R, color.G, color.B, color.A);
    }
  }
}
