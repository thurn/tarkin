using UnityEngine;
using UnityEngine.UI;
using UnityEngine.EventSystems;
using Tarkin.Data;

namespace Tarkin
{
  public class ComponentService
  {
    readonly GameObjectService _gameObjectService;
    readonly AssetService _assetService;

    public ComponentService(GameObjectService gameObjectService, AssetService assetService)
    {
      _gameObjectService = gameObjectService;
      _assetService = assetService;
    }

    public void CreateOrUpdateComponent(ZComponent zComponent, GameObject gameObject)
    {
      switch (zComponent.ComponentCase)
      {
        case ZComponent.ComponentOneofCase.Behaviour:
          CreateOrUpdateBehaviour(zComponent.Behaviour, gameObject);
          break;
        case ZComponent.ComponentOneofCase.CanvasRenderer:
          UpdateCanvasRenderer(zComponent.CanvasRenderer, gameObject);
          break;
      }
    }

    public void RemoveComponent(ZComponentType zComponentType, GameObject gameObject)
    {
      switch (zComponentType)
      {
        case ZComponentType.Canvas:
          DestroyComponent<Canvas>(gameObject);
          break;
        case ZComponentType.CanvasScaler:
          DestroyComponent<CanvasScaler>(gameObject);
          break;
        case ZComponentType.CanvasRenderer:
          DestroyComponent<CanvasRenderer>(gameObject);
          break;
        case ZComponentType.GraphicRaycaster:
          DestroyComponent<GraphicRaycaster>(gameObject);
          break;
        case ZComponentType.EventSystem:
          DestroyComponent<EventSystem>(gameObject);
          break;
        case ZComponentType.StandaloneInputModule:
          DestroyComponent<StandaloneInputModule>(gameObject);
          break;
        case ZComponentType.Image:
          DestroyComponent<Image>(gameObject);
          break;
        case ZComponentType.Button:
          DestroyComponent<Button>(gameObject);
          break;
        case ZComponentType.Text:
          DestroyComponent<Text>(gameObject);
          break;
      }
    }

    static T GetOrAddComponent<T>(GameObject gameObject) where T : Component
    {
      var component = gameObject.GetComponent<T>();
      if (component == null)
      {
        component = gameObject.AddComponent<T>();
      }
      return component;
    }

    static void DestroyComponent<T>(GameObject gameObject) where T : Component
    {
      Object.Destroy(gameObject.GetComponent<T>());
    }


    void CreateOrUpdateBehaviour(ZBehaviour zBehaviour, GameObject gameObject)
    {
      Behaviour behaviour = null;
      switch (zBehaviour.BehaviourCase)
      {
        case ZBehaviour.BehaviourOneofCase.Canvas:
          behaviour = UpdateCanvas(zBehaviour.Canvas, gameObject);
          break;
        case ZBehaviour.BehaviourOneofCase.CanvasScaler:
          behaviour = UpdateCanvasScaler(zBehaviour.CanvasScaler, gameObject);
          break;
        case ZBehaviour.BehaviourOneofCase.GraphicRaycaster:
          behaviour = UpdateGraphicRaycaster(zBehaviour.GraphicRaycaster, gameObject);
          break;
        case ZBehaviour.BehaviourOneofCase.EventSystem:
          behaviour = UpdateEventSystem(zBehaviour.EventSystem, gameObject);
          break;
        case ZBehaviour.BehaviourOneofCase.StandaloneInputModule:
          behaviour = UpdateStandaloneInputModule(zBehaviour.StandaloneInputModule, gameObject);
          break;
        case ZBehaviour.BehaviourOneofCase.Graphic:
          behaviour = UpdateGraphic(zBehaviour.Graphic, gameObject);
          break;
        case ZBehaviour.BehaviourOneofCase.Button:
          behaviour = UpdateButton(zBehaviour.Button, gameObject);
          break;
        default:
          behaviour = GetOrAddComponent<Behaviour>(gameObject);
          break;
      }

      if (behaviour != null && zBehaviour.Enabled.HasValue)
      {
        behaviour.enabled = zBehaviour.Enabled.Value;
      }
    }

    Canvas UpdateCanvas(ZCanvas zCanvas, GameObject gameObject)
    {
      Canvas canvas = GetOrAddComponent<Canvas>(gameObject);
      switch (zCanvas.RenderMode)
      {
        case ZRenderMode.ScreenSpaceOverlay:
          canvas.renderMode = RenderMode.ScreenSpaceOverlay;
          break;
        case ZRenderMode.ScreenSpaceCamera:
          canvas.renderMode = RenderMode.ScreenSpaceCamera;
          break;
        case ZRenderMode.WorldSpace:
          canvas.renderMode = RenderMode.WorldSpace;
          break;
      }

      if (zCanvas.PixelPerfect.HasValue)
      {
        canvas.pixelPerfect = zCanvas.PixelPerfect.Value;
      }

      if (zCanvas.SortingOrder.HasValue)
      {
        canvas.sortingOrder = zCanvas.SortingOrder.Value;
      }

      if (zCanvas.TargetDisplay.HasValue)
      {
        canvas.targetDisplay = zCanvas.TargetDisplay.Value;
      }

      switch (zCanvas.AdditionalShaderChannels)
      {
        case ZAdditionalCanvasShaderChannels.None:
          canvas.additionalShaderChannels = AdditionalCanvasShaderChannels.None;
          break;
        case ZAdditionalCanvasShaderChannels.TexCoord1:
          canvas.additionalShaderChannels = AdditionalCanvasShaderChannels.TexCoord1;
          break;
        case ZAdditionalCanvasShaderChannels.TexCoord2:
          canvas.additionalShaderChannels = AdditionalCanvasShaderChannels.TexCoord2;
          break;
        case ZAdditionalCanvasShaderChannels.TexCoord3:
          canvas.additionalShaderChannels = AdditionalCanvasShaderChannels.TexCoord3;
          break;
        case ZAdditionalCanvasShaderChannels.Normal:
          canvas.additionalShaderChannels = AdditionalCanvasShaderChannels.Normal;
          break;
        case ZAdditionalCanvasShaderChannels.Tangent:
          canvas.additionalShaderChannels = AdditionalCanvasShaderChannels.Tangent;
          break;
      }

      return canvas;
    }

    CanvasScaler UpdateCanvasScaler(ZCanvasScaler zCanvasScaler, GameObject gameObject)
    {
      CanvasScaler canvasScaler = GetOrAddComponent<CanvasScaler>(gameObject);
      switch (zCanvasScaler.UiScaleMode)
      {
        case ZCanvasScaler.Types.ScaleMode.ConstantPixelSize:
          canvasScaler.uiScaleMode = CanvasScaler.ScaleMode.ConstantPixelSize;
          break;
        case ZCanvasScaler.Types.ScaleMode.ScaleWithScreenSize:
          canvasScaler.uiScaleMode = CanvasScaler.ScaleMode.ScaleWithScreenSize;
          break;
        case ZCanvasScaler.Types.ScaleMode.ConstantPhysicalSize:
          canvasScaler.uiScaleMode = CanvasScaler.ScaleMode.ConstantPhysicalSize;
          break;
      }

      if (zCanvasScaler.ScaleFactor.HasValue)
      {
        canvasScaler.scaleFactor = zCanvasScaler.ScaleFactor.Value;
      }

      if (zCanvasScaler.ReferencePixelsPerUnit.HasValue)
      {
        canvasScaler.referencePixelsPerUnit = zCanvasScaler.ReferencePixelsPerUnit.Value;
      }

      if (zCanvasScaler.ReferenceResolution != null)
      {
        canvasScaler.referenceResolution = ZUtils.Vector2(zCanvasScaler.ReferenceResolution);
      }

      switch (zCanvasScaler.ScreenMatchMode)
      {
        case ZCanvasScaler.Types.ScreenMatchMode.MatchWidthOrHeight:
          canvasScaler.screenMatchMode = CanvasScaler.ScreenMatchMode.MatchWidthOrHeight;
          break;
        case ZCanvasScaler.Types.ScreenMatchMode.Expand:
          canvasScaler.screenMatchMode = CanvasScaler.ScreenMatchMode.Expand;
          break;
        case ZCanvasScaler.Types.ScreenMatchMode.Shrink:
          canvasScaler.screenMatchMode = CanvasScaler.ScreenMatchMode.Shrink;
          break;
      }

      if (zCanvasScaler.MatchWidthOrHeight.HasValue)
      {
        canvasScaler.matchWidthOrHeight = zCanvasScaler.MatchWidthOrHeight.Value;
      }

      return canvasScaler;
    }

    GraphicRaycaster UpdateGraphicRaycaster(ZGraphicRaycaster zGraphicRaycaster, GameObject gameObject)
    {
      GraphicRaycaster graphicRaycaster = GetOrAddComponent<GraphicRaycaster>(gameObject);

      if (zGraphicRaycaster.IgnoreReversedGraphics.HasValue)
      {
        graphicRaycaster.ignoreReversedGraphics = zGraphicRaycaster.IgnoreReversedGraphics.Value;
      }

      switch (zGraphicRaycaster.BlockingObjects)
      {
        case ZGraphicRaycaster.Types.BlockingObjects.None:
          graphicRaycaster.blockingObjects = GraphicRaycaster.BlockingObjects.None;
          break;
        case ZGraphicRaycaster.Types.BlockingObjects.TwoD:
          graphicRaycaster.blockingObjects = GraphicRaycaster.BlockingObjects.TwoD;
          break;
        case ZGraphicRaycaster.Types.BlockingObjects.ThreeD:
          graphicRaycaster.blockingObjects = GraphicRaycaster.BlockingObjects.ThreeD;
          break;
        case ZGraphicRaycaster.Types.BlockingObjects.All:
          graphicRaycaster.blockingObjects = GraphicRaycaster.BlockingObjects.All;
          break;
      }

      return graphicRaycaster;
    }

    CanvasRenderer UpdateCanvasRenderer(ZCanvasRenderer zCanvasRenderer, GameObject gameObject)
    {
      CanvasRenderer canvasRenderer = GetOrAddComponent<CanvasRenderer>(gameObject);

      if (zCanvasRenderer.CullTransparentMesh.HasValue)
      {
        canvasRenderer.cullTransparentMesh = zCanvasRenderer.CullTransparentMesh.Value;
      }

      return canvasRenderer;
    }

    EventSystem UpdateEventSystem(ZEventSystem zEventSystem, GameObject gameObject)
    {
      EventSystem eventSystem = GetOrAddComponent<EventSystem>(gameObject);

      if (zEventSystem.FirstSelectedGameObject != null)
      {
        eventSystem.firstSelectedGameObject = 
          _gameObjectService.GetGameObject(zEventSystem.FirstSelectedGameObject);
      }

      if (zEventSystem.SendNavigationEvents.HasValue)
      {
        eventSystem.sendNavigationEvents = zEventSystem.SendNavigationEvents.Value;
      }

      if (zEventSystem.PixelDragThreshold.HasValue)
      {
        eventSystem.pixelDragThreshold = zEventSystem.PixelDragThreshold.Value;
      }

      return eventSystem;
    }

    StandaloneInputModule UpdateStandaloneInputModule(ZStandaloneInputModule zStandaloneInputModule,
                                                      GameObject gameObject)
    {
      StandaloneInputModule standaloneInputModule = GetOrAddComponent<StandaloneInputModule>(gameObject);

      if (zStandaloneInputModule.HorizontalAxis != null)
      {
        standaloneInputModule.horizontalAxis = zStandaloneInputModule.HorizontalAxis;
      }

      if (zStandaloneInputModule.VerticalAxis != null)
      {
        standaloneInputModule.verticalAxis = zStandaloneInputModule.VerticalAxis;
      }

      if (zStandaloneInputModule.SubmitButton != null)
      {
        standaloneInputModule.submitButton = zStandaloneInputModule.SubmitButton;
      }

      if (zStandaloneInputModule.CancelButton != null)
      {
        standaloneInputModule.cancelButton = zStandaloneInputModule.CancelButton;
      }

      if (zStandaloneInputModule.InputActionsPerSecond.HasValue)
      {
        standaloneInputModule.inputActionsPerSecond = zStandaloneInputModule.InputActionsPerSecond.Value;
      }

      if (zStandaloneInputModule.RepeatDelay.HasValue)
      {
        standaloneInputModule.repeatDelay = zStandaloneInputModule.RepeatDelay.Value;
      }

      if (zStandaloneInputModule.ForceModuleActive.HasValue)
      {
        standaloneInputModule.forceModuleActive = zStandaloneInputModule.ForceModuleActive.Value;
      }

      return standaloneInputModule;
    }

    Graphic UpdateGraphic(ZGraphic zGraphic, GameObject gameObject)
    {
      Graphic graphic = null;

      switch (zGraphic.GraphicCase)
      {
        case ZGraphic.GraphicOneofCase.MaskableGraphic:
          graphic = UpdateMaskableGraphic(zGraphic.MaskableGraphic, gameObject);
          break;
        default:
          graphic = GetOrAddComponent<Graphic>(gameObject);
          break;
      }

      if (zGraphic.Color != null)
      {
        graphic.color = ZUtils.Color(zGraphic.Color);
      }

      if (zGraphic.Material != null)
      {
        graphic.material = _assetService.GetMaterial(zGraphic.Material);
      }

      if (zGraphic.RaycastTarget.HasValue)
      {
        graphic.raycastTarget = zGraphic.RaycastTarget.Value;
      }

      return graphic;
    }

    MaskableGraphic UpdateMaskableGraphic(ZMaskableGraphic zMaskableGraphic, GameObject gameObject)
    {
      MaskableGraphic maskableGraphic = null;

      switch (zMaskableGraphic.MaskableGraphicCase)
      {
        case ZMaskableGraphic.MaskableGraphicOneofCase.Image:
          maskableGraphic = UpdateImage(zMaskableGraphic.Image, gameObject);
          break;
        case ZMaskableGraphic.MaskableGraphicOneofCase.Text:
          maskableGraphic = UpdateText(zMaskableGraphic.Text, gameObject);
          break;
        default:
          maskableGraphic = GetOrAddComponent<MaskableGraphic>(gameObject);
          break;
      }

      if (zMaskableGraphic.Maskable.HasValue)
      {
        maskableGraphic.maskable = zMaskableGraphic.Maskable.Value;
      }

      return maskableGraphic;
    }

    Image UpdateImage(ZImage zImage, GameObject gameObject)
    {
      Image image = GetOrAddComponent<Image>(gameObject);

      if (zImage.Sprite != null)
      {
        image.sprite = _assetService.GetSprite(zImage.Sprite);
      }

      if (zImage.PreserveAspect.HasValue)
      {
        image.preserveAspect = zImage.PreserveAspect.Value;
      }

      if (zImage.FillCenter.HasValue)
      {
        image.preserveAspect = zImage.FillCenter.Value;
      }

      return image;
    }

    static Button UpdateButton(ZButton zButton, GameObject gameObject)
    {
      Button button = GetOrAddComponent<Button>(gameObject);

      if (zButton.Interactable.HasValue)
      {
        button.interactable = zButton.Interactable.Value;
      }

      return button;
    }

    Text UpdateText(ZText zText, GameObject gameObject)
    {
      Text text = GetOrAddComponent<Text>(gameObject);

      if (zText.Text != null)
      {
        text.text = zText.Text;
      }

      if (zText.Font != null)
      {
        text.font = _assetService.GetFont(zText.Font);
      }

      switch (zText.FontStyle)
      {
        case ZText.Types.FontStyle.Normal:
          text.fontStyle = FontStyle.Normal;
          break;
        case ZText.Types.FontStyle.Bold:
          text.fontStyle = FontStyle.Bold;
          break;
        case ZText.Types.FontStyle.Italic:
          text.fontStyle = FontStyle.Italic;
          break;
        case ZText.Types.FontStyle.BoldAndItalic:
          text.fontStyle = FontStyle.BoldAndItalic;
          break;
      }

      if (zText.FontSize.HasValue)
      {
        text.fontSize = zText.FontSize.Value;
      }

      if (zText.LineSpacing.HasValue)
      {
        text.lineSpacing = zText.LineSpacing.Value;
      }

      if (zText.SupportRichText.HasValue)
      {
        text.supportRichText = zText.SupportRichText.Value;
      }

      switch (zText.Alignment)
      {
        case ZTextAnchor.UpperLeft:
          text.alignment = TextAnchor.UpperLeft;
          break;
        case ZTextAnchor.UpperCenter:
          text.alignment = TextAnchor.UpperCenter;
          break;
        case ZTextAnchor.UpperRight:
          text.alignment = TextAnchor.UpperRight;
          break;
        case ZTextAnchor.MiddleLeft:
          text.alignment = TextAnchor.MiddleLeft;
          break;
        case ZTextAnchor.MiddleCenter:
          text.alignment = TextAnchor.MiddleCenter;
          break;
        case ZTextAnchor.MiddleRight:
          text.alignment = TextAnchor.MiddleRight;
          break;
        case ZTextAnchor.LowerLeft:
          text.alignment = TextAnchor.LowerLeft;
          break;
        case ZTextAnchor.LowerCenter:
          text.alignment = TextAnchor.LowerCenter;
          break;
        case ZTextAnchor.LowerRight:
          text.alignment = TextAnchor.LowerRight;
          break;
      }

      if (zText.AlignByGeometry.HasValue)
      {
        text.alignByGeometry = zText.AlignByGeometry.Value;
      }

      switch (zText.HorizontalOverflow)
      {
        case ZText.Types.HorizontalWrapMode.Wrap:
          text.horizontalOverflow = HorizontalWrapMode.Wrap;
          break;
        case ZText.Types.HorizontalWrapMode.HorizontalOverflow:
          text.horizontalOverflow = HorizontalWrapMode.Overflow;
          break;
      }

      switch (zText.VerticalOverflow)
      {
        case ZText.Types.VerticalWrapMode.Truncate:
          text.verticalOverflow = VerticalWrapMode.Truncate;
          break;
        case ZText.Types.VerticalWrapMode.VerticalOverflow:
          text.verticalOverflow = VerticalWrapMode.Overflow;
          break;
      }

      if (zText.ResizeTextForBestFit.HasValue)
      {
        text.resizeTextForBestFit = zText.ResizeTextForBestFit.Value;
      }

      return text;
    }
  }
}
