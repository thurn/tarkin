using UnityEngine;
using UnityEngine.UI;
using Tarkin.Data;
using Google.Protobuf;

namespace Tarkin
{
  public class TestMessages : MonoBehaviour
  {
    public TextAsset[] Examples;
    public Canvas Canvas;
    public GameObject ExamplePanelPrefab;
    public GameObject ExampleButtonPrefab;
    public StateUpdateService StateUpdateService;
    public GameObject TestPrefab;
    JsonParser _parser;

    void Start()
    {
      Instantiate(TestPrefab);
      Instantiate(TestPrefab);
      Instantiate(TestPrefab);
      _parser = new JsonParser(new JsonParser.Settings(128));
      var panel = Instantiate(ExamplePanelPrefab, Canvas.transform);
      foreach (var example in Examples)
      {
        var button = Instantiate(ExampleButtonPrefab, panel.transform);
        button.GetComponentInChildren<Text>().text = example.name;
        button.GetComponentInChildren<Button>().onClick.AddListener(() =>
        {
          var request = _parser.Parse<UpdateStateRequest>(example.text);
          StateUpdateService.EnqueueStateUpdate(request);
        });
      }
    }
  }
}

