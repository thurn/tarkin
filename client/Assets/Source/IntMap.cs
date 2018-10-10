using System;
using System.Collections.Generic;

namespace Tarkin
{
  /** Simple write-once map from uint to T which is efficient if integers are used sequentially. */
  public class IntMap<T> where T : class
  {
    readonly List<T> _objects;

    public IntMap()
    {
      _objects = new List<T>();
    }

    public IntMap(int capacity)
    {
      _objects = new List<T>(capacity);
    }

    public IntMap(IEnumerable<T> initialContents)
    {
      _objects = new List<T>(initialContents);
    }

    public void Remove(uint index)
    {
      _objects[(int)index] = null;
    }

    public T this[uint index]
    {
      get
      {
        int key = (int)index;
        if (key >= _objects.Count || _objects[key] == null)
        {
          throw new InvalidOperationException("Attempted to access GameObject at illegal key " + key);
        }
        return _objects[key];
      }
      set
      {
        int key = (int)index;
        if (value == null)
        {
          throw new ArgumentNullException("Attempted to set a null value for key " + key);
        }

        if (key == _objects.Count)
        {
          _objects.Add(value);
        }
        else if (key < _objects.Count)
        {
          if (_objects[key] != null)
          {
            throw new InvalidOperationException("Attempted to overwrite object at key " + key);
          }
          _objects[key] = value;
        }
        else
        {
          for (int i = _objects.Count; i < key; ++i)
          {
            _objects.Add(null);
          }
          _objects.Add(value);
        }
      }
    }
  }
}
