{- This file was auto-generated from data.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies,
  UndecidableInstances, GeneralizedNewtypeDeriving,
  MultiParamTypeClasses, FlexibleContexts, FlexibleInstances,
  PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports#-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports#-}
module Proto.Data
       (CreateGameObjectRequest(), DestroyGameObjectRequest(),
        LoadAssetRequest(), LoadAssetRequest'Asset(..),
        _LoadAssetRequest'Prefab, _LoadAssetRequest'Sprite,
        _LoadAssetRequest'Material, _LoadAssetRequest'Font, Request(),
        Response(), SystemCommandRequest(), UpdateGameObjectRequest(),
        UpdateStateRequest(), ZAdditionalCanvasShaderChannels(..),
        ZAdditionalCanvasShaderChannels(),
        ZAdditionalCanvasShaderChannels'UnrecognizedValue, ZBehaviour(),
        ZBehaviour'Behaviour(..), _ZBehaviour'Canvas,
        _ZBehaviour'CanvasScaler, _ZBehaviour'GraphicRaycaster,
        _ZBehaviour'EventSystem, _ZBehaviour'StandaloneInputModule,
        _ZBehaviour'Graphic, _ZBehaviour'Button, ZButton(), ZCanvas(),
        ZCanvasRenderer(), ZCanvasScaler(), ZCanvasScaler'ScaleMode(..),
        ZCanvasScaler'ScaleMode(),
        ZCanvasScaler'ScaleMode'UnrecognizedValue,
        ZCanvasScaler'ScreenMatchMode(..), ZCanvasScaler'ScreenMatchMode(),
        ZCanvasScaler'ScreenMatchMode'UnrecognizedValue, ZColor(),
        ZComponent(), ZComponent'Component(..), _ZComponent'Behaviour,
        _ZComponent'CanvasRenderer, ZComponentType(..), ZComponentType(),
        ZComponentType'UnrecognizedValue, ZEventSystem(), ZFont(),
        ZGameObject(), ZGraphic(), ZGraphic'Graphic(..),
        _ZGraphic'MaskableGraphic, ZGraphicRaycaster(),
        ZGraphicRaycaster'BlockingObjects(..),
        ZGraphicRaycaster'BlockingObjects(),
        ZGraphicRaycaster'BlockingObjects'UnrecognizedValue, ZImage(),
        ZMaskableGraphic(), ZMaskableGraphic'MaskableGraphic(..),
        _ZMaskableGraphic'Image, _ZMaskableGraphic'Text, ZMaterial(),
        ZPrefab(), ZRectTransform(), ZRenderMode(..), ZRenderMode(),
        ZRenderMode'UnrecognizedValue, ZSprite(), ZStandaloneInputModule(),
        ZText(), ZText'FontStyle(..), ZText'FontStyle(),
        ZText'FontStyle'UnrecognizedValue, ZText'HorizontalWrapMode(..),
        ZText'HorizontalWrapMode(),
        ZText'HorizontalWrapMode'UnrecognizedValue,
        ZText'VerticalWrapMode(..), ZText'VerticalWrapMode(),
        ZText'VerticalWrapMode'UnrecognizedValue, ZTextAnchor(..),
        ZTextAnchor(), ZTextAnchor'UnrecognizedValue, ZTransform(),
        ZTransform'Transform(..), _ZTransform'RectTransform, ZVector2(),
        ZVector3())
       where
import qualified Data.ProtoLens.Runtime.Control.DeepSeq
       as Control.DeepSeq
import qualified Data.ProtoLens.Runtime.Lens.Labels.Prism
       as Lens.Labels.Prism
import qualified Data.ProtoLens.Runtime.Prelude as Prelude
import qualified Data.ProtoLens.Runtime.Data.Int as Data.Int
import qualified Data.ProtoLens.Runtime.Data.Word as Data.Word
import qualified Data.ProtoLens.Runtime.Data.ProtoLens
       as Data.ProtoLens
import qualified Data.ProtoLens.Runtime.Data.ProtoLens.Message.Enum
       as Data.ProtoLens.Message.Enum
import qualified
       Data.ProtoLens.Runtime.Data.ProtoLens.Service.Types
       as Data.ProtoLens.Service.Types
import qualified Data.ProtoLens.Runtime.Lens.Family2
       as Lens.Family2
import qualified Data.ProtoLens.Runtime.Lens.Family2.Unchecked
       as Lens.Family2.Unchecked
import qualified Data.ProtoLens.Runtime.Data.Text as Data.Text
import qualified Data.ProtoLens.Runtime.Data.Map as Data.Map
import qualified Data.ProtoLens.Runtime.Data.ByteString
       as Data.ByteString
import qualified Data.ProtoLens.Runtime.Data.ByteString.Char8
       as Data.ByteString.Char8
import qualified Data.ProtoLens.Runtime.Lens.Labels as Lens.Labels
import qualified Data.ProtoLens.Runtime.Text.Read as Text.Read
import qualified Proto.Google.Protobuf.Wrappers

{- | Fields :

    * 'Proto.Data_Fields.newObjectId' @:: Lens' CreateGameObjectRequest Data.Word.Word32@
    * 'Proto.Data_Fields.name' @:: Lens' CreateGameObjectRequest Data.Text.Text@
    * 'Proto.Data_Fields.prefab' @:: Lens' CreateGameObjectRequest ZPrefab@
    * 'Proto.Data_Fields.maybe'prefab' @:: Lens' CreateGameObjectRequest (Prelude.Maybe ZPrefab)@
    * 'Proto.Data_Fields.parentGameObject' @:: Lens' CreateGameObjectRequest ZGameObject@
    * 'Proto.Data_Fields.maybe'parentGameObject' @:: Lens' CreateGameObjectRequest (Prelude.Maybe ZGameObject)@
    * 'Proto.Data_Fields.components' @:: Lens' CreateGameObjectRequest [ZComponent]@
    * 'Proto.Data_Fields.transform' @:: Lens' CreateGameObjectRequest ZTransform@
    * 'Proto.Data_Fields.maybe'transform' @:: Lens' CreateGameObjectRequest (Prelude.Maybe ZTransform)@
 -}
data CreateGameObjectRequest = CreateGameObjectRequest{_CreateGameObjectRequest'newObjectId
                                                       :: !Data.Word.Word32,
                                                       _CreateGameObjectRequest'name ::
                                                       !Data.Text.Text,
                                                       _CreateGameObjectRequest'prefab ::
                                                       !(Prelude.Maybe ZPrefab),
                                                       _CreateGameObjectRequest'parentGameObject ::
                                                       !(Prelude.Maybe ZGameObject),
                                                       _CreateGameObjectRequest'components ::
                                                       ![ZComponent],
                                                       _CreateGameObjectRequest'transform ::
                                                       !(Prelude.Maybe ZTransform),
                                                       _CreateGameObjectRequest'_unknownFields ::
                                                       !Data.ProtoLens.FieldSet}
                                 deriving (Prelude.Eq, Prelude.Ord)
instance Prelude.Show CreateGameObjectRequest where
        showsPrec _ __x __s
          = Prelude.showChar '{'
              (Prelude.showString (Data.ProtoLens.showMessageShort __x)
                 (Prelude.showChar '}' __s))
instance Lens.Labels.HasLens' CreateGameObjectRequest "newObjectId"
           (Data.Word.Word32)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _CreateGameObjectRequest'newObjectId
                 (\ x__ y__ -> x__{_CreateGameObjectRequest'newObjectId = y__}))
              Prelude.id
instance Lens.Labels.HasLens' CreateGameObjectRequest "name"
           (Data.Text.Text)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _CreateGameObjectRequest'name
                 (\ x__ y__ -> x__{_CreateGameObjectRequest'name = y__}))
              Prelude.id
instance Lens.Labels.HasLens' CreateGameObjectRequest "prefab"
           (ZPrefab)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _CreateGameObjectRequest'prefab
                 (\ x__ y__ -> x__{_CreateGameObjectRequest'prefab = y__}))
              (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Lens.Labels.HasLens' CreateGameObjectRequest
           "maybe'prefab"
           (Prelude.Maybe ZPrefab)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _CreateGameObjectRequest'prefab
                 (\ x__ y__ -> x__{_CreateGameObjectRequest'prefab = y__}))
              Prelude.id
instance Lens.Labels.HasLens' CreateGameObjectRequest
           "parentGameObject"
           (ZGameObject)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens
                 _CreateGameObjectRequest'parentGameObject
                 (\ x__ y__ ->
                    x__{_CreateGameObjectRequest'parentGameObject = y__}))
              (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Lens.Labels.HasLens' CreateGameObjectRequest
           "maybe'parentGameObject"
           (Prelude.Maybe ZGameObject)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens
                 _CreateGameObjectRequest'parentGameObject
                 (\ x__ y__ ->
                    x__{_CreateGameObjectRequest'parentGameObject = y__}))
              Prelude.id
instance Lens.Labels.HasLens' CreateGameObjectRequest "components"
           ([ZComponent])
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _CreateGameObjectRequest'components
                 (\ x__ y__ -> x__{_CreateGameObjectRequest'components = y__}))
              Prelude.id
instance Lens.Labels.HasLens' CreateGameObjectRequest "transform"
           (ZTransform)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _CreateGameObjectRequest'transform
                 (\ x__ y__ -> x__{_CreateGameObjectRequest'transform = y__}))
              (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Lens.Labels.HasLens' CreateGameObjectRequest
           "maybe'transform"
           (Prelude.Maybe ZTransform)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _CreateGameObjectRequest'transform
                 (\ x__ y__ -> x__{_CreateGameObjectRequest'transform = y__}))
              Prelude.id
instance Data.ProtoLens.Message CreateGameObjectRequest where
        messageName _
          = Data.Text.pack "tarkin.data.CreateGameObjectRequest"
        fieldsByTag
          = let newObjectId__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "new_object_id"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "newObjectId")))
                      :: Data.ProtoLens.FieldDescriptor CreateGameObjectRequest
                name__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "name"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "name")))
                      :: Data.ProtoLens.FieldDescriptor CreateGameObjectRequest
                prefab__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "prefab"
                      (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                         Data.ProtoLens.FieldTypeDescriptor ZPrefab)
                      (Data.ProtoLens.OptionalField
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "maybe'prefab")))
                      :: Data.ProtoLens.FieldDescriptor CreateGameObjectRequest
                parentGameObject__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "parent_game_object"
                      (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                         Data.ProtoLens.FieldTypeDescriptor ZGameObject)
                      (Data.ProtoLens.OptionalField
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) ::
                               (Lens.Labels.Proxy#) "maybe'parentGameObject")))
                      :: Data.ProtoLens.FieldDescriptor CreateGameObjectRequest
                components__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "components"
                      (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                         Data.ProtoLens.FieldTypeDescriptor ZComponent)
                      (Data.ProtoLens.RepeatedField Data.ProtoLens.Unpacked
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "components")))
                      :: Data.ProtoLens.FieldDescriptor CreateGameObjectRequest
                transform__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "transform"
                      (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                         Data.ProtoLens.FieldTypeDescriptor ZTransform)
                      (Data.ProtoLens.OptionalField
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "maybe'transform")))
                      :: Data.ProtoLens.FieldDescriptor CreateGameObjectRequest
              in
              Data.Map.fromList
                [(Data.ProtoLens.Tag 1, newObjectId__field_descriptor),
                 (Data.ProtoLens.Tag 2, name__field_descriptor),
                 (Data.ProtoLens.Tag 3, prefab__field_descriptor),
                 (Data.ProtoLens.Tag 4, parentGameObject__field_descriptor),
                 (Data.ProtoLens.Tag 5, components__field_descriptor),
                 (Data.ProtoLens.Tag 6, transform__field_descriptor)]
        unknownFields
          = Lens.Family2.Unchecked.lens
              _CreateGameObjectRequest'_unknownFields
              (\ x__ y__ -> x__{_CreateGameObjectRequest'_unknownFields = y__})
        defMessage
          = CreateGameObjectRequest{_CreateGameObjectRequest'newObjectId =
                                      Data.ProtoLens.fieldDefault,
                                    _CreateGameObjectRequest'name = Data.ProtoLens.fieldDefault,
                                    _CreateGameObjectRequest'prefab = Prelude.Nothing,
                                    _CreateGameObjectRequest'parentGameObject = Prelude.Nothing,
                                    _CreateGameObjectRequest'components = [],
                                    _CreateGameObjectRequest'transform = Prelude.Nothing,
                                    _CreateGameObjectRequest'_unknownFields = ([])}
instance Control.DeepSeq.NFData CreateGameObjectRequest where
        rnf
          = \ x__ ->
              Control.DeepSeq.deepseq
                (_CreateGameObjectRequest'_unknownFields x__)
                (Control.DeepSeq.deepseq (_CreateGameObjectRequest'newObjectId x__)
                   (Control.DeepSeq.deepseq (_CreateGameObjectRequest'name x__)
                      (Control.DeepSeq.deepseq (_CreateGameObjectRequest'prefab x__)
                         (Control.DeepSeq.deepseq
                            (_CreateGameObjectRequest'parentGameObject x__)
                            (Control.DeepSeq.deepseq (_CreateGameObjectRequest'components x__)
                               (Control.DeepSeq.deepseq (_CreateGameObjectRequest'transform x__)
                                  (())))))))
{- | Fields :

    * 'Proto.Data_Fields.gameObject' @:: Lens' DestroyGameObjectRequest ZGameObject@
    * 'Proto.Data_Fields.maybe'gameObject' @:: Lens' DestroyGameObjectRequest (Prelude.Maybe ZGameObject)@
 -}
data DestroyGameObjectRequest = DestroyGameObjectRequest{_DestroyGameObjectRequest'gameObject
                                                         :: !(Prelude.Maybe ZGameObject),
                                                         _DestroyGameObjectRequest'_unknownFields ::
                                                         !Data.ProtoLens.FieldSet}
                                  deriving (Prelude.Eq, Prelude.Ord)
instance Prelude.Show DestroyGameObjectRequest where
        showsPrec _ __x __s
          = Prelude.showChar '{'
              (Prelude.showString (Data.ProtoLens.showMessageShort __x)
                 (Prelude.showChar '}' __s))
instance Lens.Labels.HasLens' DestroyGameObjectRequest "gameObject"
           (ZGameObject)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _DestroyGameObjectRequest'gameObject
                 (\ x__ y__ -> x__{_DestroyGameObjectRequest'gameObject = y__}))
              (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Lens.Labels.HasLens' DestroyGameObjectRequest
           "maybe'gameObject"
           (Prelude.Maybe ZGameObject)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _DestroyGameObjectRequest'gameObject
                 (\ x__ y__ -> x__{_DestroyGameObjectRequest'gameObject = y__}))
              Prelude.id
instance Data.ProtoLens.Message DestroyGameObjectRequest where
        messageName _
          = Data.Text.pack "tarkin.data.DestroyGameObjectRequest"
        fieldsByTag
          = let gameObject__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "game_object"
                      (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                         Data.ProtoLens.FieldTypeDescriptor ZGameObject)
                      (Data.ProtoLens.OptionalField
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "maybe'gameObject")))
                      :: Data.ProtoLens.FieldDescriptor DestroyGameObjectRequest
              in
              Data.Map.fromList
                [(Data.ProtoLens.Tag 1, gameObject__field_descriptor)]
        unknownFields
          = Lens.Family2.Unchecked.lens
              _DestroyGameObjectRequest'_unknownFields
              (\ x__ y__ -> x__{_DestroyGameObjectRequest'_unknownFields = y__})
        defMessage
          = DestroyGameObjectRequest{_DestroyGameObjectRequest'gameObject =
                                       Prelude.Nothing,
                                     _DestroyGameObjectRequest'_unknownFields = ([])}
instance Control.DeepSeq.NFData DestroyGameObjectRequest where
        rnf
          = \ x__ ->
              Control.DeepSeq.deepseq
                (_DestroyGameObjectRequest'_unknownFields x__)
                (Control.DeepSeq.deepseq (_DestroyGameObjectRequest'gameObject x__)
                   (()))
{- | Fields :

    * 'Proto.Data_Fields.assetPath' @:: Lens' LoadAssetRequest Data.Text.Text@
    * 'Proto.Data_Fields.maybe'asset' @:: Lens' LoadAssetRequest (Prelude.Maybe LoadAssetRequest'Asset)@
    * 'Proto.Data_Fields.maybe'prefab' @:: Lens' LoadAssetRequest (Prelude.Maybe ZPrefab)@
    * 'Proto.Data_Fields.prefab' @:: Lens' LoadAssetRequest ZPrefab@
    * 'Proto.Data_Fields.maybe'sprite' @:: Lens' LoadAssetRequest (Prelude.Maybe ZSprite)@
    * 'Proto.Data_Fields.sprite' @:: Lens' LoadAssetRequest ZSprite@
    * 'Proto.Data_Fields.maybe'material' @:: Lens' LoadAssetRequest (Prelude.Maybe ZMaterial)@
    * 'Proto.Data_Fields.material' @:: Lens' LoadAssetRequest ZMaterial@
    * 'Proto.Data_Fields.maybe'font' @:: Lens' LoadAssetRequest (Prelude.Maybe ZFont)@
    * 'Proto.Data_Fields.font' @:: Lens' LoadAssetRequest ZFont@
 -}
data LoadAssetRequest = LoadAssetRequest{_LoadAssetRequest'assetPath
                                         :: !Data.Text.Text,
                                         _LoadAssetRequest'asset ::
                                         !(Prelude.Maybe LoadAssetRequest'Asset),
                                         _LoadAssetRequest'_unknownFields ::
                                         !Data.ProtoLens.FieldSet}
                          deriving (Prelude.Eq, Prelude.Ord)
instance Prelude.Show LoadAssetRequest where
        showsPrec _ __x __s
          = Prelude.showChar '{'
              (Prelude.showString (Data.ProtoLens.showMessageShort __x)
                 (Prelude.showChar '}' __s))
data LoadAssetRequest'Asset = LoadAssetRequest'Prefab !ZPrefab
                            | LoadAssetRequest'Sprite !ZSprite
                            | LoadAssetRequest'Material !ZMaterial
                            | LoadAssetRequest'Font !ZFont
                                deriving (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Lens.Labels.HasLens' LoadAssetRequest "assetPath"
           (Data.Text.Text)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _LoadAssetRequest'assetPath
                 (\ x__ y__ -> x__{_LoadAssetRequest'assetPath = y__}))
              Prelude.id
instance Lens.Labels.HasLens' LoadAssetRequest "maybe'asset"
           (Prelude.Maybe LoadAssetRequest'Asset)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _LoadAssetRequest'asset
                 (\ x__ y__ -> x__{_LoadAssetRequest'asset = y__}))
              Prelude.id
instance Lens.Labels.HasLens' LoadAssetRequest "maybe'prefab"
           (Prelude.Maybe ZPrefab)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _LoadAssetRequest'asset
                 (\ x__ y__ -> x__{_LoadAssetRequest'asset = y__}))
              (Lens.Family2.Unchecked.lens
                 (\ x__ ->
                    case x__ of
                        Prelude.Just (LoadAssetRequest'Prefab x__val) -> Prelude.Just
                                                                           x__val
                        _otherwise -> Prelude.Nothing)
                 (\ _ y__ -> Prelude.fmap LoadAssetRequest'Prefab y__))
instance Lens.Labels.HasLens' LoadAssetRequest "prefab" (ZPrefab)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _LoadAssetRequest'asset
                 (\ x__ y__ -> x__{_LoadAssetRequest'asset = y__}))
              ((Prelude..)
                 (Lens.Family2.Unchecked.lens
                    (\ x__ ->
                       case x__ of
                           Prelude.Just (LoadAssetRequest'Prefab x__val) -> Prelude.Just
                                                                              x__val
                           _otherwise -> Prelude.Nothing)
                    (\ _ y__ -> Prelude.fmap LoadAssetRequest'Prefab y__))
                 (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Lens.Labels.HasLens' LoadAssetRequest "maybe'sprite"
           (Prelude.Maybe ZSprite)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _LoadAssetRequest'asset
                 (\ x__ y__ -> x__{_LoadAssetRequest'asset = y__}))
              (Lens.Family2.Unchecked.lens
                 (\ x__ ->
                    case x__ of
                        Prelude.Just (LoadAssetRequest'Sprite x__val) -> Prelude.Just
                                                                           x__val
                        _otherwise -> Prelude.Nothing)
                 (\ _ y__ -> Prelude.fmap LoadAssetRequest'Sprite y__))
instance Lens.Labels.HasLens' LoadAssetRequest "sprite" (ZSprite)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _LoadAssetRequest'asset
                 (\ x__ y__ -> x__{_LoadAssetRequest'asset = y__}))
              ((Prelude..)
                 (Lens.Family2.Unchecked.lens
                    (\ x__ ->
                       case x__ of
                           Prelude.Just (LoadAssetRequest'Sprite x__val) -> Prelude.Just
                                                                              x__val
                           _otherwise -> Prelude.Nothing)
                    (\ _ y__ -> Prelude.fmap LoadAssetRequest'Sprite y__))
                 (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Lens.Labels.HasLens' LoadAssetRequest "maybe'material"
           (Prelude.Maybe ZMaterial)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _LoadAssetRequest'asset
                 (\ x__ y__ -> x__{_LoadAssetRequest'asset = y__}))
              (Lens.Family2.Unchecked.lens
                 (\ x__ ->
                    case x__ of
                        Prelude.Just (LoadAssetRequest'Material x__val) -> Prelude.Just
                                                                             x__val
                        _otherwise -> Prelude.Nothing)
                 (\ _ y__ -> Prelude.fmap LoadAssetRequest'Material y__))
instance Lens.Labels.HasLens' LoadAssetRequest "material"
           (ZMaterial)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _LoadAssetRequest'asset
                 (\ x__ y__ -> x__{_LoadAssetRequest'asset = y__}))
              ((Prelude..)
                 (Lens.Family2.Unchecked.lens
                    (\ x__ ->
                       case x__ of
                           Prelude.Just (LoadAssetRequest'Material x__val) -> Prelude.Just
                                                                                x__val
                           _otherwise -> Prelude.Nothing)
                    (\ _ y__ -> Prelude.fmap LoadAssetRequest'Material y__))
                 (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Lens.Labels.HasLens' LoadAssetRequest "maybe'font"
           (Prelude.Maybe ZFont)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _LoadAssetRequest'asset
                 (\ x__ y__ -> x__{_LoadAssetRequest'asset = y__}))
              (Lens.Family2.Unchecked.lens
                 (\ x__ ->
                    case x__ of
                        Prelude.Just (LoadAssetRequest'Font x__val) -> Prelude.Just x__val
                        _otherwise -> Prelude.Nothing)
                 (\ _ y__ -> Prelude.fmap LoadAssetRequest'Font y__))
instance Lens.Labels.HasLens' LoadAssetRequest "font" (ZFont) where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _LoadAssetRequest'asset
                 (\ x__ y__ -> x__{_LoadAssetRequest'asset = y__}))
              ((Prelude..)
                 (Lens.Family2.Unchecked.lens
                    (\ x__ ->
                       case x__ of
                           Prelude.Just (LoadAssetRequest'Font x__val) -> Prelude.Just x__val
                           _otherwise -> Prelude.Nothing)
                    (\ _ y__ -> Prelude.fmap LoadAssetRequest'Font y__))
                 (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Message LoadAssetRequest where
        messageName _ = Data.Text.pack "tarkin.data.LoadAssetRequest"
        fieldsByTag
          = let assetPath__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "asset_path"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "assetPath")))
                      :: Data.ProtoLens.FieldDescriptor LoadAssetRequest
                prefab__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "prefab"
                      (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                         Data.ProtoLens.FieldTypeDescriptor ZPrefab)
                      (Data.ProtoLens.OptionalField
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "maybe'prefab")))
                      :: Data.ProtoLens.FieldDescriptor LoadAssetRequest
                sprite__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "sprite"
                      (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                         Data.ProtoLens.FieldTypeDescriptor ZSprite)
                      (Data.ProtoLens.OptionalField
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "maybe'sprite")))
                      :: Data.ProtoLens.FieldDescriptor LoadAssetRequest
                material__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "material"
                      (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                         Data.ProtoLens.FieldTypeDescriptor ZMaterial)
                      (Data.ProtoLens.OptionalField
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "maybe'material")))
                      :: Data.ProtoLens.FieldDescriptor LoadAssetRequest
                font__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "font"
                      (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                         Data.ProtoLens.FieldTypeDescriptor ZFont)
                      (Data.ProtoLens.OptionalField
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "maybe'font")))
                      :: Data.ProtoLens.FieldDescriptor LoadAssetRequest
              in
              Data.Map.fromList
                [(Data.ProtoLens.Tag 1, assetPath__field_descriptor),
                 (Data.ProtoLens.Tag 2, prefab__field_descriptor),
                 (Data.ProtoLens.Tag 3, sprite__field_descriptor),
                 (Data.ProtoLens.Tag 4, material__field_descriptor),
                 (Data.ProtoLens.Tag 5, font__field_descriptor)]
        unknownFields
          = Lens.Family2.Unchecked.lens _LoadAssetRequest'_unknownFields
              (\ x__ y__ -> x__{_LoadAssetRequest'_unknownFields = y__})
        defMessage
          = LoadAssetRequest{_LoadAssetRequest'assetPath =
                               Data.ProtoLens.fieldDefault,
                             _LoadAssetRequest'asset = Prelude.Nothing,
                             _LoadAssetRequest'_unknownFields = ([])}
instance Control.DeepSeq.NFData LoadAssetRequest where
        rnf
          = \ x__ ->
              Control.DeepSeq.deepseq (_LoadAssetRequest'_unknownFields x__)
                (Control.DeepSeq.deepseq (_LoadAssetRequest'assetPath x__)
                   (Control.DeepSeq.deepseq (_LoadAssetRequest'asset x__) (())))
instance Control.DeepSeq.NFData LoadAssetRequest'Asset where
        rnf (LoadAssetRequest'Prefab x__) = Control.DeepSeq.rnf x__
        rnf (LoadAssetRequest'Sprite x__) = Control.DeepSeq.rnf x__
        rnf (LoadAssetRequest'Material x__) = Control.DeepSeq.rnf x__
        rnf (LoadAssetRequest'Font x__) = Control.DeepSeq.rnf x__
_LoadAssetRequest'Prefab ::
                         Lens.Labels.Prism.Prism' LoadAssetRequest'Asset ZPrefab
_LoadAssetRequest'Prefab
  = Lens.Labels.Prism.prism' LoadAssetRequest'Prefab
      (\ p__ ->
         case p__ of
             LoadAssetRequest'Prefab p__val -> Prelude.Just p__val
             _otherwise -> Prelude.Nothing)
_LoadAssetRequest'Sprite ::
                         Lens.Labels.Prism.Prism' LoadAssetRequest'Asset ZSprite
_LoadAssetRequest'Sprite
  = Lens.Labels.Prism.prism' LoadAssetRequest'Sprite
      (\ p__ ->
         case p__ of
             LoadAssetRequest'Sprite p__val -> Prelude.Just p__val
             _otherwise -> Prelude.Nothing)
_LoadAssetRequest'Material ::
                           Lens.Labels.Prism.Prism' LoadAssetRequest'Asset ZMaterial
_LoadAssetRequest'Material
  = Lens.Labels.Prism.prism' LoadAssetRequest'Material
      (\ p__ ->
         case p__ of
             LoadAssetRequest'Material p__val -> Prelude.Just p__val
             _otherwise -> Prelude.Nothing)
_LoadAssetRequest'Font ::
                       Lens.Labels.Prism.Prism' LoadAssetRequest'Asset ZFont
_LoadAssetRequest'Font
  = Lens.Labels.Prism.prism' LoadAssetRequest'Font
      (\ p__ ->
         case p__ of
             LoadAssetRequest'Font p__val -> Prelude.Just p__val
             _otherwise -> Prelude.Nothing)
{- | Fields :

    * 'Proto.Data_Fields.firstNumber' @:: Lens' Request Data.Int.Int32@
    * 'Proto.Data_Fields.firstName' @:: Lens' Request Data.Text.Text@
 -}
data Request = Request{_Request'firstNumber :: !Data.Int.Int32,
                       _Request'firstName :: !Data.Text.Text,
                       _Request'_unknownFields :: !Data.ProtoLens.FieldSet}
                 deriving (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Request where
        showsPrec _ __x __s
          = Prelude.showChar '{'
              (Prelude.showString (Data.ProtoLens.showMessageShort __x)
                 (Prelude.showChar '}' __s))
instance Lens.Labels.HasLens' Request "firstNumber"
           (Data.Int.Int32)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _Request'firstNumber
                 (\ x__ y__ -> x__{_Request'firstNumber = y__}))
              Prelude.id
instance Lens.Labels.HasLens' Request "firstName" (Data.Text.Text)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _Request'firstName
                 (\ x__ y__ -> x__{_Request'firstName = y__}))
              Prelude.id
instance Data.ProtoLens.Message Request where
        messageName _ = Data.Text.pack "tarkin.data.Request"
        fieldsByTag
          = let firstNumber__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "first_number"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "firstNumber")))
                      :: Data.ProtoLens.FieldDescriptor Request
                firstName__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "first_name"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "firstName")))
                      :: Data.ProtoLens.FieldDescriptor Request
              in
              Data.Map.fromList
                [(Data.ProtoLens.Tag 1, firstNumber__field_descriptor),
                 (Data.ProtoLens.Tag 2, firstName__field_descriptor)]
        unknownFields
          = Lens.Family2.Unchecked.lens _Request'_unknownFields
              (\ x__ y__ -> x__{_Request'_unknownFields = y__})
        defMessage
          = Request{_Request'firstNumber = Data.ProtoLens.fieldDefault,
                    _Request'firstName = Data.ProtoLens.fieldDefault,
                    _Request'_unknownFields = ([])}
instance Control.DeepSeq.NFData Request where
        rnf
          = \ x__ ->
              Control.DeepSeq.deepseq (_Request'_unknownFields x__)
                (Control.DeepSeq.deepseq (_Request'firstNumber x__)
                   (Control.DeepSeq.deepseq (_Request'firstName x__) (())))
{- | Fields :

    * 'Proto.Data_Fields.otherNumber' @:: Lens' Response Data.Int.Int32@
    * 'Proto.Data_Fields.lastName' @:: Lens' Response Data.Text.Text@
 -}
data Response = Response{_Response'otherNumber :: !Data.Int.Int32,
                         _Response'lastName :: !Data.Text.Text,
                         _Response'_unknownFields :: !Data.ProtoLens.FieldSet}
                  deriving (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Response where
        showsPrec _ __x __s
          = Prelude.showChar '{'
              (Prelude.showString (Data.ProtoLens.showMessageShort __x)
                 (Prelude.showChar '}' __s))
instance Lens.Labels.HasLens' Response "otherNumber"
           (Data.Int.Int32)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _Response'otherNumber
                 (\ x__ y__ -> x__{_Response'otherNumber = y__}))
              Prelude.id
instance Lens.Labels.HasLens' Response "lastName" (Data.Text.Text)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _Response'lastName
                 (\ x__ y__ -> x__{_Response'lastName = y__}))
              Prelude.id
instance Data.ProtoLens.Message Response where
        messageName _ = Data.Text.pack "tarkin.data.Response"
        fieldsByTag
          = let otherNumber__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "other_number"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "otherNumber")))
                      :: Data.ProtoLens.FieldDescriptor Response
                lastName__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "last_name"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "lastName")))
                      :: Data.ProtoLens.FieldDescriptor Response
              in
              Data.Map.fromList
                [(Data.ProtoLens.Tag 1, otherNumber__field_descriptor),
                 (Data.ProtoLens.Tag 2, lastName__field_descriptor)]
        unknownFields
          = Lens.Family2.Unchecked.lens _Response'_unknownFields
              (\ x__ y__ -> x__{_Response'_unknownFields = y__})
        defMessage
          = Response{_Response'otherNumber = Data.ProtoLens.fieldDefault,
                     _Response'lastName = Data.ProtoLens.fieldDefault,
                     _Response'_unknownFields = ([])}
instance Control.DeepSeq.NFData Response where
        rnf
          = \ x__ ->
              Control.DeepSeq.deepseq (_Response'_unknownFields x__)
                (Control.DeepSeq.deepseq (_Response'otherNumber x__)
                   (Control.DeepSeq.deepseq (_Response'lastName x__) (())))
{- | Fields :

 -}
data SystemCommandRequest = SystemCommandRequest{_SystemCommandRequest'_unknownFields
                                                 :: !Data.ProtoLens.FieldSet}
                              deriving (Prelude.Eq, Prelude.Ord)
instance Prelude.Show SystemCommandRequest where
        showsPrec _ __x __s
          = Prelude.showChar '{'
              (Prelude.showString (Data.ProtoLens.showMessageShort __x)
                 (Prelude.showChar '}' __s))
instance Data.ProtoLens.Message SystemCommandRequest where
        messageName _ = Data.Text.pack "tarkin.data.SystemCommandRequest"
        fieldsByTag = let in Data.Map.fromList []
        unknownFields
          = Lens.Family2.Unchecked.lens _SystemCommandRequest'_unknownFields
              (\ x__ y__ -> x__{_SystemCommandRequest'_unknownFields = y__})
        defMessage
          = SystemCommandRequest{_SystemCommandRequest'_unknownFields = ([])}
instance Control.DeepSeq.NFData SystemCommandRequest where
        rnf
          = \ x__ ->
              Control.DeepSeq.deepseq (_SystemCommandRequest'_unknownFields x__)
                (())
{- | Fields :

    * 'Proto.Data_Fields.gameObject' @:: Lens' UpdateGameObjectRequest ZGameObject@
    * 'Proto.Data_Fields.maybe'gameObject' @:: Lens' UpdateGameObjectRequest (Prelude.Maybe ZGameObject)@
    * 'Proto.Data_Fields.parentGameObject' @:: Lens' UpdateGameObjectRequest ZGameObject@
    * 'Proto.Data_Fields.maybe'parentGameObject' @:: Lens' UpdateGameObjectRequest (Prelude.Maybe ZGameObject)@
    * 'Proto.Data_Fields.components' @:: Lens' UpdateGameObjectRequest [ZComponent]@
    * 'Proto.Data_Fields.componentsToRemove' @:: Lens' UpdateGameObjectRequest [ZComponentType]@
    * 'Proto.Data_Fields.transform' @:: Lens' UpdateGameObjectRequest ZTransform@
    * 'Proto.Data_Fields.maybe'transform' @:: Lens' UpdateGameObjectRequest (Prelude.Maybe ZTransform)@
 -}
data UpdateGameObjectRequest = UpdateGameObjectRequest{_UpdateGameObjectRequest'gameObject
                                                       :: !(Prelude.Maybe ZGameObject),
                                                       _UpdateGameObjectRequest'parentGameObject ::
                                                       !(Prelude.Maybe ZGameObject),
                                                       _UpdateGameObjectRequest'components ::
                                                       ![ZComponent],
                                                       _UpdateGameObjectRequest'componentsToRemove
                                                       :: ![ZComponentType],
                                                       _UpdateGameObjectRequest'transform ::
                                                       !(Prelude.Maybe ZTransform),
                                                       _UpdateGameObjectRequest'_unknownFields ::
                                                       !Data.ProtoLens.FieldSet}
                                 deriving (Prelude.Eq, Prelude.Ord)
instance Prelude.Show UpdateGameObjectRequest where
        showsPrec _ __x __s
          = Prelude.showChar '{'
              (Prelude.showString (Data.ProtoLens.showMessageShort __x)
                 (Prelude.showChar '}' __s))
instance Lens.Labels.HasLens' UpdateGameObjectRequest "gameObject"
           (ZGameObject)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _UpdateGameObjectRequest'gameObject
                 (\ x__ y__ -> x__{_UpdateGameObjectRequest'gameObject = y__}))
              (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Lens.Labels.HasLens' UpdateGameObjectRequest
           "maybe'gameObject"
           (Prelude.Maybe ZGameObject)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _UpdateGameObjectRequest'gameObject
                 (\ x__ y__ -> x__{_UpdateGameObjectRequest'gameObject = y__}))
              Prelude.id
instance Lens.Labels.HasLens' UpdateGameObjectRequest
           "parentGameObject"
           (ZGameObject)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens
                 _UpdateGameObjectRequest'parentGameObject
                 (\ x__ y__ ->
                    x__{_UpdateGameObjectRequest'parentGameObject = y__}))
              (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Lens.Labels.HasLens' UpdateGameObjectRequest
           "maybe'parentGameObject"
           (Prelude.Maybe ZGameObject)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens
                 _UpdateGameObjectRequest'parentGameObject
                 (\ x__ y__ ->
                    x__{_UpdateGameObjectRequest'parentGameObject = y__}))
              Prelude.id
instance Lens.Labels.HasLens' UpdateGameObjectRequest "components"
           ([ZComponent])
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _UpdateGameObjectRequest'components
                 (\ x__ y__ -> x__{_UpdateGameObjectRequest'components = y__}))
              Prelude.id
instance Lens.Labels.HasLens' UpdateGameObjectRequest
           "componentsToRemove"
           ([ZComponentType])
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens
                 _UpdateGameObjectRequest'componentsToRemove
                 (\ x__ y__ ->
                    x__{_UpdateGameObjectRequest'componentsToRemove = y__}))
              Prelude.id
instance Lens.Labels.HasLens' UpdateGameObjectRequest "transform"
           (ZTransform)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _UpdateGameObjectRequest'transform
                 (\ x__ y__ -> x__{_UpdateGameObjectRequest'transform = y__}))
              (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Lens.Labels.HasLens' UpdateGameObjectRequest
           "maybe'transform"
           (Prelude.Maybe ZTransform)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _UpdateGameObjectRequest'transform
                 (\ x__ y__ -> x__{_UpdateGameObjectRequest'transform = y__}))
              Prelude.id
instance Data.ProtoLens.Message UpdateGameObjectRequest where
        messageName _
          = Data.Text.pack "tarkin.data.UpdateGameObjectRequest"
        fieldsByTag
          = let gameObject__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "game_object"
                      (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                         Data.ProtoLens.FieldTypeDescriptor ZGameObject)
                      (Data.ProtoLens.OptionalField
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "maybe'gameObject")))
                      :: Data.ProtoLens.FieldDescriptor UpdateGameObjectRequest
                parentGameObject__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "parent_game_object"
                      (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                         Data.ProtoLens.FieldTypeDescriptor ZGameObject)
                      (Data.ProtoLens.OptionalField
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) ::
                               (Lens.Labels.Proxy#) "maybe'parentGameObject")))
                      :: Data.ProtoLens.FieldDescriptor UpdateGameObjectRequest
                components__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "components"
                      (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                         Data.ProtoLens.FieldTypeDescriptor ZComponent)
                      (Data.ProtoLens.RepeatedField Data.ProtoLens.Unpacked
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "components")))
                      :: Data.ProtoLens.FieldDescriptor UpdateGameObjectRequest
                componentsToRemove__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "components_to_remove"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                         Data.ProtoLens.FieldTypeDescriptor ZComponentType)
                      (Data.ProtoLens.RepeatedField Data.ProtoLens.Packed
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) ::
                               (Lens.Labels.Proxy#) "componentsToRemove")))
                      :: Data.ProtoLens.FieldDescriptor UpdateGameObjectRequest
                transform__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "transform"
                      (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                         Data.ProtoLens.FieldTypeDescriptor ZTransform)
                      (Data.ProtoLens.OptionalField
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "maybe'transform")))
                      :: Data.ProtoLens.FieldDescriptor UpdateGameObjectRequest
              in
              Data.Map.fromList
                [(Data.ProtoLens.Tag 1, gameObject__field_descriptor),
                 (Data.ProtoLens.Tag 2, parentGameObject__field_descriptor),
                 (Data.ProtoLens.Tag 3, components__field_descriptor),
                 (Data.ProtoLens.Tag 4, componentsToRemove__field_descriptor),
                 (Data.ProtoLens.Tag 5, transform__field_descriptor)]
        unknownFields
          = Lens.Family2.Unchecked.lens
              _UpdateGameObjectRequest'_unknownFields
              (\ x__ y__ -> x__{_UpdateGameObjectRequest'_unknownFields = y__})
        defMessage
          = UpdateGameObjectRequest{_UpdateGameObjectRequest'gameObject =
                                      Prelude.Nothing,
                                    _UpdateGameObjectRequest'parentGameObject = Prelude.Nothing,
                                    _UpdateGameObjectRequest'components = [],
                                    _UpdateGameObjectRequest'componentsToRemove = [],
                                    _UpdateGameObjectRequest'transform = Prelude.Nothing,
                                    _UpdateGameObjectRequest'_unknownFields = ([])}
instance Control.DeepSeq.NFData UpdateGameObjectRequest where
        rnf
          = \ x__ ->
              Control.DeepSeq.deepseq
                (_UpdateGameObjectRequest'_unknownFields x__)
                (Control.DeepSeq.deepseq (_UpdateGameObjectRequest'gameObject x__)
                   (Control.DeepSeq.deepseq
                      (_UpdateGameObjectRequest'parentGameObject x__)
                      (Control.DeepSeq.deepseq (_UpdateGameObjectRequest'components x__)
                         (Control.DeepSeq.deepseq
                            (_UpdateGameObjectRequest'componentsToRemove x__)
                            (Control.DeepSeq.deepseq (_UpdateGameObjectRequest'transform x__)
                               (()))))))
{- | Fields :

    * 'Proto.Data_Fields.systemCommands' @:: Lens' UpdateStateRequest [SystemCommandRequest]@
    * 'Proto.Data_Fields.loadAssets' @:: Lens' UpdateStateRequest [LoadAssetRequest]@
    * 'Proto.Data_Fields.createGameObjects' @:: Lens' UpdateStateRequest [CreateGameObjectRequest]@
    * 'Proto.Data_Fields.updateGameObjects' @:: Lens' UpdateStateRequest [UpdateGameObjectRequest]@
    * 'Proto.Data_Fields.destroyGameObjects' @:: Lens' UpdateStateRequest [DestroyGameObjectRequest]@
 -}
data UpdateStateRequest = UpdateStateRequest{_UpdateStateRequest'systemCommands
                                             :: ![SystemCommandRequest],
                                             _UpdateStateRequest'loadAssets :: ![LoadAssetRequest],
                                             _UpdateStateRequest'createGameObjects ::
                                             ![CreateGameObjectRequest],
                                             _UpdateStateRequest'updateGameObjects ::
                                             ![UpdateGameObjectRequest],
                                             _UpdateStateRequest'destroyGameObjects ::
                                             ![DestroyGameObjectRequest],
                                             _UpdateStateRequest'_unknownFields ::
                                             !Data.ProtoLens.FieldSet}
                            deriving (Prelude.Eq, Prelude.Ord)
instance Prelude.Show UpdateStateRequest where
        showsPrec _ __x __s
          = Prelude.showChar '{'
              (Prelude.showString (Data.ProtoLens.showMessageShort __x)
                 (Prelude.showChar '}' __s))
instance Lens.Labels.HasLens' UpdateStateRequest "systemCommands"
           ([SystemCommandRequest])
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _UpdateStateRequest'systemCommands
                 (\ x__ y__ -> x__{_UpdateStateRequest'systemCommands = y__}))
              Prelude.id
instance Lens.Labels.HasLens' UpdateStateRequest "loadAssets"
           ([LoadAssetRequest])
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _UpdateStateRequest'loadAssets
                 (\ x__ y__ -> x__{_UpdateStateRequest'loadAssets = y__}))
              Prelude.id
instance Lens.Labels.HasLens' UpdateStateRequest
           "createGameObjects"
           ([CreateGameObjectRequest])
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _UpdateStateRequest'createGameObjects
                 (\ x__ y__ -> x__{_UpdateStateRequest'createGameObjects = y__}))
              Prelude.id
instance Lens.Labels.HasLens' UpdateStateRequest
           "updateGameObjects"
           ([UpdateGameObjectRequest])
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _UpdateStateRequest'updateGameObjects
                 (\ x__ y__ -> x__{_UpdateStateRequest'updateGameObjects = y__}))
              Prelude.id
instance Lens.Labels.HasLens' UpdateStateRequest
           "destroyGameObjects"
           ([DestroyGameObjectRequest])
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _UpdateStateRequest'destroyGameObjects
                 (\ x__ y__ -> x__{_UpdateStateRequest'destroyGameObjects = y__}))
              Prelude.id
instance Data.ProtoLens.Message UpdateStateRequest where
        messageName _ = Data.Text.pack "tarkin.data.UpdateStateRequest"
        fieldsByTag
          = let systemCommands__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "system_commands"
                      (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                         Data.ProtoLens.FieldTypeDescriptor SystemCommandRequest)
                      (Data.ProtoLens.RepeatedField Data.ProtoLens.Unpacked
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "systemCommands")))
                      :: Data.ProtoLens.FieldDescriptor UpdateStateRequest
                loadAssets__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "load_assets"
                      (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                         Data.ProtoLens.FieldTypeDescriptor LoadAssetRequest)
                      (Data.ProtoLens.RepeatedField Data.ProtoLens.Unpacked
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "loadAssets")))
                      :: Data.ProtoLens.FieldDescriptor UpdateStateRequest
                createGameObjects__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "create_game_objects"
                      (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                         Data.ProtoLens.FieldTypeDescriptor CreateGameObjectRequest)
                      (Data.ProtoLens.RepeatedField Data.ProtoLens.Unpacked
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) ::
                               (Lens.Labels.Proxy#) "createGameObjects")))
                      :: Data.ProtoLens.FieldDescriptor UpdateStateRequest
                updateGameObjects__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "update_game_objects"
                      (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                         Data.ProtoLens.FieldTypeDescriptor UpdateGameObjectRequest)
                      (Data.ProtoLens.RepeatedField Data.ProtoLens.Unpacked
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) ::
                               (Lens.Labels.Proxy#) "updateGameObjects")))
                      :: Data.ProtoLens.FieldDescriptor UpdateStateRequest
                destroyGameObjects__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "destroy_game_objects"
                      (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                         Data.ProtoLens.FieldTypeDescriptor DestroyGameObjectRequest)
                      (Data.ProtoLens.RepeatedField Data.ProtoLens.Unpacked
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) ::
                               (Lens.Labels.Proxy#) "destroyGameObjects")))
                      :: Data.ProtoLens.FieldDescriptor UpdateStateRequest
              in
              Data.Map.fromList
                [(Data.ProtoLens.Tag 1, systemCommands__field_descriptor),
                 (Data.ProtoLens.Tag 2, loadAssets__field_descriptor),
                 (Data.ProtoLens.Tag 3, createGameObjects__field_descriptor),
                 (Data.ProtoLens.Tag 4, updateGameObjects__field_descriptor),
                 (Data.ProtoLens.Tag 5, destroyGameObjects__field_descriptor)]
        unknownFields
          = Lens.Family2.Unchecked.lens _UpdateStateRequest'_unknownFields
              (\ x__ y__ -> x__{_UpdateStateRequest'_unknownFields = y__})
        defMessage
          = UpdateStateRequest{_UpdateStateRequest'systemCommands = [],
                               _UpdateStateRequest'loadAssets = [],
                               _UpdateStateRequest'createGameObjects = [],
                               _UpdateStateRequest'updateGameObjects = [],
                               _UpdateStateRequest'destroyGameObjects = [],
                               _UpdateStateRequest'_unknownFields = ([])}
instance Control.DeepSeq.NFData UpdateStateRequest where
        rnf
          = \ x__ ->
              Control.DeepSeq.deepseq (_UpdateStateRequest'_unknownFields x__)
                (Control.DeepSeq.deepseq (_UpdateStateRequest'systemCommands x__)
                   (Control.DeepSeq.deepseq (_UpdateStateRequest'loadAssets x__)
                      (Control.DeepSeq.deepseq
                         (_UpdateStateRequest'createGameObjects x__)
                         (Control.DeepSeq.deepseq
                            (_UpdateStateRequest'updateGameObjects x__)
                            (Control.DeepSeq.deepseq
                               (_UpdateStateRequest'destroyGameObjects x__)
                               (()))))))
data ZAdditionalCanvasShaderChannels = UNKNOWN_ADDITIONAL_CANVAS_SHADER_CHANNELS
                                     | NONE
                                     | TEX_COORD_1
                                     | TEX_COORD_2
                                     | TEX_COORD_3
                                     | NORMAL
                                     | TANGENT
                                     | ZAdditionalCanvasShaderChannels'Unrecognized !ZAdditionalCanvasShaderChannels'UnrecognizedValue
                                         deriving (Prelude.Show, Prelude.Eq, Prelude.Ord)
newtype ZAdditionalCanvasShaderChannels'UnrecognizedValue = ZAdditionalCanvasShaderChannels'UnrecognizedValue Data.Int.Int32
                                                              deriving (Prelude.Eq, Prelude.Ord,
                                                                        Prelude.Show)
instance Data.ProtoLens.MessageEnum ZAdditionalCanvasShaderChannels
         where
        maybeToEnum 0
          = Prelude.Just UNKNOWN_ADDITIONAL_CANVAS_SHADER_CHANNELS
        maybeToEnum 1 = Prelude.Just NONE
        maybeToEnum 2 = Prelude.Just TEX_COORD_1
        maybeToEnum 3 = Prelude.Just TEX_COORD_2
        maybeToEnum 4 = Prelude.Just TEX_COORD_3
        maybeToEnum 5 = Prelude.Just NORMAL
        maybeToEnum 6 = Prelude.Just TANGENT
        maybeToEnum k
          = Prelude.Just
              (ZAdditionalCanvasShaderChannels'Unrecognized
                 (ZAdditionalCanvasShaderChannels'UnrecognizedValue
                    (Prelude.fromIntegral k)))
        showEnum UNKNOWN_ADDITIONAL_CANVAS_SHADER_CHANNELS
          = "UNKNOWN_ADDITIONAL_CANVAS_SHADER_CHANNELS"
        showEnum NONE = "NONE"
        showEnum TEX_COORD_1 = "TEX_COORD_1"
        showEnum TEX_COORD_2 = "TEX_COORD_2"
        showEnum TEX_COORD_3 = "TEX_COORD_3"
        showEnum NORMAL = "NORMAL"
        showEnum TANGENT = "TANGENT"
        showEnum
          (ZAdditionalCanvasShaderChannels'Unrecognized
             (ZAdditionalCanvasShaderChannels'UnrecognizedValue k))
          = Prelude.show k
        readEnum "UNKNOWN_ADDITIONAL_CANVAS_SHADER_CHANNELS"
          = Prelude.Just UNKNOWN_ADDITIONAL_CANVAS_SHADER_CHANNELS
        readEnum "NONE" = Prelude.Just NONE
        readEnum "TEX_COORD_1" = Prelude.Just TEX_COORD_1
        readEnum "TEX_COORD_2" = Prelude.Just TEX_COORD_2
        readEnum "TEX_COORD_3" = Prelude.Just TEX_COORD_3
        readEnum "NORMAL" = Prelude.Just NORMAL
        readEnum "TANGENT" = Prelude.Just TANGENT
        readEnum k
          = (Prelude.>>=) (Text.Read.readMaybe k) Data.ProtoLens.maybeToEnum
instance Prelude.Bounded ZAdditionalCanvasShaderChannels where
        minBound = UNKNOWN_ADDITIONAL_CANVAS_SHADER_CHANNELS
        maxBound = TANGENT
instance Prelude.Enum ZAdditionalCanvasShaderChannels where
        toEnum k__
          = Prelude.maybe
              (Prelude.error
                 ((Prelude.++)
                    "toEnum: unknown value for enum ZAdditionalCanvasShaderChannels: "
                    (Prelude.show k__)))
              Prelude.id
              (Data.ProtoLens.maybeToEnum k__)
        fromEnum UNKNOWN_ADDITIONAL_CANVAS_SHADER_CHANNELS = 0
        fromEnum NONE = 1
        fromEnum TEX_COORD_1 = 2
        fromEnum TEX_COORD_2 = 3
        fromEnum TEX_COORD_3 = 4
        fromEnum NORMAL = 5
        fromEnum TANGENT = 6
        fromEnum
          (ZAdditionalCanvasShaderChannels'Unrecognized
             (ZAdditionalCanvasShaderChannels'UnrecognizedValue k))
          = Prelude.fromIntegral k
        succ TANGENT
          = Prelude.error
              "ZAdditionalCanvasShaderChannels.succ: bad argument TANGENT. This value would be out of bounds."
        succ UNKNOWN_ADDITIONAL_CANVAS_SHADER_CHANNELS = NONE
        succ NONE = TEX_COORD_1
        succ TEX_COORD_1 = TEX_COORD_2
        succ TEX_COORD_2 = TEX_COORD_3
        succ TEX_COORD_3 = NORMAL
        succ NORMAL = TANGENT
        succ _
          = Prelude.error
              "ZAdditionalCanvasShaderChannels.succ: bad argument: unrecognized value"
        pred UNKNOWN_ADDITIONAL_CANVAS_SHADER_CHANNELS
          = Prelude.error
              "ZAdditionalCanvasShaderChannels.pred: bad argument UNKNOWN_ADDITIONAL_CANVAS_SHADER_CHANNELS. This value would be out of bounds."
        pred NONE = UNKNOWN_ADDITIONAL_CANVAS_SHADER_CHANNELS
        pred TEX_COORD_1 = NONE
        pred TEX_COORD_2 = TEX_COORD_1
        pred TEX_COORD_3 = TEX_COORD_2
        pred NORMAL = TEX_COORD_3
        pred TANGENT = NORMAL
        pred _
          = Prelude.error
              "ZAdditionalCanvasShaderChannels.pred: bad argument: unrecognized value"
        enumFrom = Data.ProtoLens.Message.Enum.messageEnumFrom
        enumFromTo = Data.ProtoLens.Message.Enum.messageEnumFromTo
        enumFromThen = Data.ProtoLens.Message.Enum.messageEnumFromThen
        enumFromThenTo = Data.ProtoLens.Message.Enum.messageEnumFromThenTo
instance Data.ProtoLens.FieldDefault
           ZAdditionalCanvasShaderChannels
         where
        fieldDefault = UNKNOWN_ADDITIONAL_CANVAS_SHADER_CHANNELS
instance Control.DeepSeq.NFData ZAdditionalCanvasShaderChannels
         where
        rnf x__ = Prelude.seq x__ (())
{- | Fields :

    * 'Proto.Data_Fields.enabled' @:: Lens' ZBehaviour Proto.Google.Protobuf.Wrappers.BoolValue@
    * 'Proto.Data_Fields.maybe'enabled' @:: Lens' ZBehaviour
  (Prelude.Maybe Proto.Google.Protobuf.Wrappers.BoolValue)@
    * 'Proto.Data_Fields.maybe'behaviour' @:: Lens' ZBehaviour (Prelude.Maybe ZBehaviour'Behaviour)@
    * 'Proto.Data_Fields.maybe'canvas' @:: Lens' ZBehaviour (Prelude.Maybe ZCanvas)@
    * 'Proto.Data_Fields.canvas' @:: Lens' ZBehaviour ZCanvas@
    * 'Proto.Data_Fields.maybe'canvasScaler' @:: Lens' ZBehaviour (Prelude.Maybe ZCanvasScaler)@
    * 'Proto.Data_Fields.canvasScaler' @:: Lens' ZBehaviour ZCanvasScaler@
    * 'Proto.Data_Fields.maybe'graphicRaycaster' @:: Lens' ZBehaviour (Prelude.Maybe ZGraphicRaycaster)@
    * 'Proto.Data_Fields.graphicRaycaster' @:: Lens' ZBehaviour ZGraphicRaycaster@
    * 'Proto.Data_Fields.maybe'eventSystem' @:: Lens' ZBehaviour (Prelude.Maybe ZEventSystem)@
    * 'Proto.Data_Fields.eventSystem' @:: Lens' ZBehaviour ZEventSystem@
    * 'Proto.Data_Fields.maybe'standaloneInputModule' @:: Lens' ZBehaviour (Prelude.Maybe ZStandaloneInputModule)@
    * 'Proto.Data_Fields.standaloneInputModule' @:: Lens' ZBehaviour ZStandaloneInputModule@
    * 'Proto.Data_Fields.maybe'graphic' @:: Lens' ZBehaviour (Prelude.Maybe ZGraphic)@
    * 'Proto.Data_Fields.graphic' @:: Lens' ZBehaviour ZGraphic@
    * 'Proto.Data_Fields.maybe'button' @:: Lens' ZBehaviour (Prelude.Maybe ZButton)@
    * 'Proto.Data_Fields.button' @:: Lens' ZBehaviour ZButton@
 -}
data ZBehaviour = ZBehaviour{_ZBehaviour'enabled ::
                             !(Prelude.Maybe Proto.Google.Protobuf.Wrappers.BoolValue),
                             _ZBehaviour'behaviour :: !(Prelude.Maybe ZBehaviour'Behaviour),
                             _ZBehaviour'_unknownFields :: !Data.ProtoLens.FieldSet}
                    deriving (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ZBehaviour where
        showsPrec _ __x __s
          = Prelude.showChar '{'
              (Prelude.showString (Data.ProtoLens.showMessageShort __x)
                 (Prelude.showChar '}' __s))
data ZBehaviour'Behaviour = ZBehaviour'Canvas !ZCanvas
                          | ZBehaviour'CanvasScaler !ZCanvasScaler
                          | ZBehaviour'GraphicRaycaster !ZGraphicRaycaster
                          | ZBehaviour'EventSystem !ZEventSystem
                          | ZBehaviour'StandaloneInputModule !ZStandaloneInputModule
                          | ZBehaviour'Graphic !ZGraphic
                          | ZBehaviour'Button !ZButton
                              deriving (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Lens.Labels.HasLens' ZBehaviour "enabled"
           (Proto.Google.Protobuf.Wrappers.BoolValue)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _ZBehaviour'enabled
                 (\ x__ y__ -> x__{_ZBehaviour'enabled = y__}))
              (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Lens.Labels.HasLens' ZBehaviour "maybe'enabled"
           (Prelude.Maybe Proto.Google.Protobuf.Wrappers.BoolValue)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _ZBehaviour'enabled
                 (\ x__ y__ -> x__{_ZBehaviour'enabled = y__}))
              Prelude.id
instance Lens.Labels.HasLens' ZBehaviour "maybe'behaviour"
           (Prelude.Maybe ZBehaviour'Behaviour)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _ZBehaviour'behaviour
                 (\ x__ y__ -> x__{_ZBehaviour'behaviour = y__}))
              Prelude.id
instance Lens.Labels.HasLens' ZBehaviour "maybe'canvas"
           (Prelude.Maybe ZCanvas)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _ZBehaviour'behaviour
                 (\ x__ y__ -> x__{_ZBehaviour'behaviour = y__}))
              (Lens.Family2.Unchecked.lens
                 (\ x__ ->
                    case x__ of
                        Prelude.Just (ZBehaviour'Canvas x__val) -> Prelude.Just x__val
                        _otherwise -> Prelude.Nothing)
                 (\ _ y__ -> Prelude.fmap ZBehaviour'Canvas y__))
instance Lens.Labels.HasLens' ZBehaviour "canvas" (ZCanvas) where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _ZBehaviour'behaviour
                 (\ x__ y__ -> x__{_ZBehaviour'behaviour = y__}))
              ((Prelude..)
                 (Lens.Family2.Unchecked.lens
                    (\ x__ ->
                       case x__ of
                           Prelude.Just (ZBehaviour'Canvas x__val) -> Prelude.Just x__val
                           _otherwise -> Prelude.Nothing)
                    (\ _ y__ -> Prelude.fmap ZBehaviour'Canvas y__))
                 (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Lens.Labels.HasLens' ZBehaviour "maybe'canvasScaler"
           (Prelude.Maybe ZCanvasScaler)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _ZBehaviour'behaviour
                 (\ x__ y__ -> x__{_ZBehaviour'behaviour = y__}))
              (Lens.Family2.Unchecked.lens
                 (\ x__ ->
                    case x__ of
                        Prelude.Just (ZBehaviour'CanvasScaler x__val) -> Prelude.Just
                                                                           x__val
                        _otherwise -> Prelude.Nothing)
                 (\ _ y__ -> Prelude.fmap ZBehaviour'CanvasScaler y__))
instance Lens.Labels.HasLens' ZBehaviour "canvasScaler"
           (ZCanvasScaler)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _ZBehaviour'behaviour
                 (\ x__ y__ -> x__{_ZBehaviour'behaviour = y__}))
              ((Prelude..)
                 (Lens.Family2.Unchecked.lens
                    (\ x__ ->
                       case x__ of
                           Prelude.Just (ZBehaviour'CanvasScaler x__val) -> Prelude.Just
                                                                              x__val
                           _otherwise -> Prelude.Nothing)
                    (\ _ y__ -> Prelude.fmap ZBehaviour'CanvasScaler y__))
                 (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Lens.Labels.HasLens' ZBehaviour "maybe'graphicRaycaster"
           (Prelude.Maybe ZGraphicRaycaster)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _ZBehaviour'behaviour
                 (\ x__ y__ -> x__{_ZBehaviour'behaviour = y__}))
              (Lens.Family2.Unchecked.lens
                 (\ x__ ->
                    case x__ of
                        Prelude.Just (ZBehaviour'GraphicRaycaster x__val) -> Prelude.Just
                                                                               x__val
                        _otherwise -> Prelude.Nothing)
                 (\ _ y__ -> Prelude.fmap ZBehaviour'GraphicRaycaster y__))
instance Lens.Labels.HasLens' ZBehaviour "graphicRaycaster"
           (ZGraphicRaycaster)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _ZBehaviour'behaviour
                 (\ x__ y__ -> x__{_ZBehaviour'behaviour = y__}))
              ((Prelude..)
                 (Lens.Family2.Unchecked.lens
                    (\ x__ ->
                       case x__ of
                           Prelude.Just (ZBehaviour'GraphicRaycaster x__val) -> Prelude.Just
                                                                                  x__val
                           _otherwise -> Prelude.Nothing)
                    (\ _ y__ -> Prelude.fmap ZBehaviour'GraphicRaycaster y__))
                 (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Lens.Labels.HasLens' ZBehaviour "maybe'eventSystem"
           (Prelude.Maybe ZEventSystem)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _ZBehaviour'behaviour
                 (\ x__ y__ -> x__{_ZBehaviour'behaviour = y__}))
              (Lens.Family2.Unchecked.lens
                 (\ x__ ->
                    case x__ of
                        Prelude.Just (ZBehaviour'EventSystem x__val) -> Prelude.Just x__val
                        _otherwise -> Prelude.Nothing)
                 (\ _ y__ -> Prelude.fmap ZBehaviour'EventSystem y__))
instance Lens.Labels.HasLens' ZBehaviour "eventSystem"
           (ZEventSystem)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _ZBehaviour'behaviour
                 (\ x__ y__ -> x__{_ZBehaviour'behaviour = y__}))
              ((Prelude..)
                 (Lens.Family2.Unchecked.lens
                    (\ x__ ->
                       case x__ of
                           Prelude.Just (ZBehaviour'EventSystem x__val) -> Prelude.Just x__val
                           _otherwise -> Prelude.Nothing)
                    (\ _ y__ -> Prelude.fmap ZBehaviour'EventSystem y__))
                 (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Lens.Labels.HasLens' ZBehaviour
           "maybe'standaloneInputModule"
           (Prelude.Maybe ZStandaloneInputModule)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _ZBehaviour'behaviour
                 (\ x__ y__ -> x__{_ZBehaviour'behaviour = y__}))
              (Lens.Family2.Unchecked.lens
                 (\ x__ ->
                    case x__ of
                        Prelude.Just
                          (ZBehaviour'StandaloneInputModule x__val) -> Prelude.Just x__val
                        _otherwise -> Prelude.Nothing)
                 (\ _ y__ -> Prelude.fmap ZBehaviour'StandaloneInputModule y__))
instance Lens.Labels.HasLens' ZBehaviour "standaloneInputModule"
           (ZStandaloneInputModule)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _ZBehaviour'behaviour
                 (\ x__ y__ -> x__{_ZBehaviour'behaviour = y__}))
              ((Prelude..)
                 (Lens.Family2.Unchecked.lens
                    (\ x__ ->
                       case x__ of
                           Prelude.Just
                             (ZBehaviour'StandaloneInputModule x__val) -> Prelude.Just x__val
                           _otherwise -> Prelude.Nothing)
                    (\ _ y__ -> Prelude.fmap ZBehaviour'StandaloneInputModule y__))
                 (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Lens.Labels.HasLens' ZBehaviour "maybe'graphic"
           (Prelude.Maybe ZGraphic)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _ZBehaviour'behaviour
                 (\ x__ y__ -> x__{_ZBehaviour'behaviour = y__}))
              (Lens.Family2.Unchecked.lens
                 (\ x__ ->
                    case x__ of
                        Prelude.Just (ZBehaviour'Graphic x__val) -> Prelude.Just x__val
                        _otherwise -> Prelude.Nothing)
                 (\ _ y__ -> Prelude.fmap ZBehaviour'Graphic y__))
instance Lens.Labels.HasLens' ZBehaviour "graphic" (ZGraphic) where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _ZBehaviour'behaviour
                 (\ x__ y__ -> x__{_ZBehaviour'behaviour = y__}))
              ((Prelude..)
                 (Lens.Family2.Unchecked.lens
                    (\ x__ ->
                       case x__ of
                           Prelude.Just (ZBehaviour'Graphic x__val) -> Prelude.Just x__val
                           _otherwise -> Prelude.Nothing)
                    (\ _ y__ -> Prelude.fmap ZBehaviour'Graphic y__))
                 (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Lens.Labels.HasLens' ZBehaviour "maybe'button"
           (Prelude.Maybe ZButton)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _ZBehaviour'behaviour
                 (\ x__ y__ -> x__{_ZBehaviour'behaviour = y__}))
              (Lens.Family2.Unchecked.lens
                 (\ x__ ->
                    case x__ of
                        Prelude.Just (ZBehaviour'Button x__val) -> Prelude.Just x__val
                        _otherwise -> Prelude.Nothing)
                 (\ _ y__ -> Prelude.fmap ZBehaviour'Button y__))
instance Lens.Labels.HasLens' ZBehaviour "button" (ZButton) where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _ZBehaviour'behaviour
                 (\ x__ y__ -> x__{_ZBehaviour'behaviour = y__}))
              ((Prelude..)
                 (Lens.Family2.Unchecked.lens
                    (\ x__ ->
                       case x__ of
                           Prelude.Just (ZBehaviour'Button x__val) -> Prelude.Just x__val
                           _otherwise -> Prelude.Nothing)
                    (\ _ y__ -> Prelude.fmap ZBehaviour'Button y__))
                 (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Message ZBehaviour where
        messageName _ = Data.Text.pack "tarkin.data.ZBehaviour"
        fieldsByTag
          = let enabled__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "enabled"
                      (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                         Data.ProtoLens.FieldTypeDescriptor
                           Proto.Google.Protobuf.Wrappers.BoolValue)
                      (Data.ProtoLens.OptionalField
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "maybe'enabled")))
                      :: Data.ProtoLens.FieldDescriptor ZBehaviour
                canvas__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "canvas"
                      (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                         Data.ProtoLens.FieldTypeDescriptor ZCanvas)
                      (Data.ProtoLens.OptionalField
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "maybe'canvas")))
                      :: Data.ProtoLens.FieldDescriptor ZBehaviour
                canvasScaler__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "canvas_scaler"
                      (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                         Data.ProtoLens.FieldTypeDescriptor ZCanvasScaler)
                      (Data.ProtoLens.OptionalField
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) ::
                               (Lens.Labels.Proxy#) "maybe'canvasScaler")))
                      :: Data.ProtoLens.FieldDescriptor ZBehaviour
                graphicRaycaster__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "graphic_raycaster"
                      (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                         Data.ProtoLens.FieldTypeDescriptor ZGraphicRaycaster)
                      (Data.ProtoLens.OptionalField
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) ::
                               (Lens.Labels.Proxy#) "maybe'graphicRaycaster")))
                      :: Data.ProtoLens.FieldDescriptor ZBehaviour
                eventSystem__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "event_system"
                      (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                         Data.ProtoLens.FieldTypeDescriptor ZEventSystem)
                      (Data.ProtoLens.OptionalField
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) ::
                               (Lens.Labels.Proxy#) "maybe'eventSystem")))
                      :: Data.ProtoLens.FieldDescriptor ZBehaviour
                standaloneInputModule__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "standalone_input_module"
                      (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                         Data.ProtoLens.FieldTypeDescriptor ZStandaloneInputModule)
                      (Data.ProtoLens.OptionalField
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) ::
                               (Lens.Labels.Proxy#) "maybe'standaloneInputModule")))
                      :: Data.ProtoLens.FieldDescriptor ZBehaviour
                graphic__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "graphic"
                      (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                         Data.ProtoLens.FieldTypeDescriptor ZGraphic)
                      (Data.ProtoLens.OptionalField
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "maybe'graphic")))
                      :: Data.ProtoLens.FieldDescriptor ZBehaviour
                button__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "button"
                      (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                         Data.ProtoLens.FieldTypeDescriptor ZButton)
                      (Data.ProtoLens.OptionalField
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "maybe'button")))
                      :: Data.ProtoLens.FieldDescriptor ZBehaviour
              in
              Data.Map.fromList
                [(Data.ProtoLens.Tag 1, enabled__field_descriptor),
                 (Data.ProtoLens.Tag 2, canvas__field_descriptor),
                 (Data.ProtoLens.Tag 3, canvasScaler__field_descriptor),
                 (Data.ProtoLens.Tag 4, graphicRaycaster__field_descriptor),
                 (Data.ProtoLens.Tag 5, eventSystem__field_descriptor),
                 (Data.ProtoLens.Tag 6, standaloneInputModule__field_descriptor),
                 (Data.ProtoLens.Tag 7, graphic__field_descriptor),
                 (Data.ProtoLens.Tag 8, button__field_descriptor)]
        unknownFields
          = Lens.Family2.Unchecked.lens _ZBehaviour'_unknownFields
              (\ x__ y__ -> x__{_ZBehaviour'_unknownFields = y__})
        defMessage
          = ZBehaviour{_ZBehaviour'enabled = Prelude.Nothing,
                       _ZBehaviour'behaviour = Prelude.Nothing,
                       _ZBehaviour'_unknownFields = ([])}
instance Control.DeepSeq.NFData ZBehaviour where
        rnf
          = \ x__ ->
              Control.DeepSeq.deepseq (_ZBehaviour'_unknownFields x__)
                (Control.DeepSeq.deepseq (_ZBehaviour'enabled x__)
                   (Control.DeepSeq.deepseq (_ZBehaviour'behaviour x__) (())))
instance Control.DeepSeq.NFData ZBehaviour'Behaviour where
        rnf (ZBehaviour'Canvas x__) = Control.DeepSeq.rnf x__
        rnf (ZBehaviour'CanvasScaler x__) = Control.DeepSeq.rnf x__
        rnf (ZBehaviour'GraphicRaycaster x__) = Control.DeepSeq.rnf x__
        rnf (ZBehaviour'EventSystem x__) = Control.DeepSeq.rnf x__
        rnf (ZBehaviour'StandaloneInputModule x__)
          = Control.DeepSeq.rnf x__
        rnf (ZBehaviour'Graphic x__) = Control.DeepSeq.rnf x__
        rnf (ZBehaviour'Button x__) = Control.DeepSeq.rnf x__
_ZBehaviour'Canvas ::
                   Lens.Labels.Prism.Prism' ZBehaviour'Behaviour ZCanvas
_ZBehaviour'Canvas
  = Lens.Labels.Prism.prism' ZBehaviour'Canvas
      (\ p__ ->
         case p__ of
             ZBehaviour'Canvas p__val -> Prelude.Just p__val
             _otherwise -> Prelude.Nothing)
_ZBehaviour'CanvasScaler ::
                         Lens.Labels.Prism.Prism' ZBehaviour'Behaviour ZCanvasScaler
_ZBehaviour'CanvasScaler
  = Lens.Labels.Prism.prism' ZBehaviour'CanvasScaler
      (\ p__ ->
         case p__ of
             ZBehaviour'CanvasScaler p__val -> Prelude.Just p__val
             _otherwise -> Prelude.Nothing)
_ZBehaviour'GraphicRaycaster ::
                             Lens.Labels.Prism.Prism' ZBehaviour'Behaviour ZGraphicRaycaster
_ZBehaviour'GraphicRaycaster
  = Lens.Labels.Prism.prism' ZBehaviour'GraphicRaycaster
      (\ p__ ->
         case p__ of
             ZBehaviour'GraphicRaycaster p__val -> Prelude.Just p__val
             _otherwise -> Prelude.Nothing)
_ZBehaviour'EventSystem ::
                        Lens.Labels.Prism.Prism' ZBehaviour'Behaviour ZEventSystem
_ZBehaviour'EventSystem
  = Lens.Labels.Prism.prism' ZBehaviour'EventSystem
      (\ p__ ->
         case p__ of
             ZBehaviour'EventSystem p__val -> Prelude.Just p__val
             _otherwise -> Prelude.Nothing)
_ZBehaviour'StandaloneInputModule ::
                                  Lens.Labels.Prism.Prism' ZBehaviour'Behaviour
                                    ZStandaloneInputModule
_ZBehaviour'StandaloneInputModule
  = Lens.Labels.Prism.prism' ZBehaviour'StandaloneInputModule
      (\ p__ ->
         case p__ of
             ZBehaviour'StandaloneInputModule p__val -> Prelude.Just p__val
             _otherwise -> Prelude.Nothing)
_ZBehaviour'Graphic ::
                    Lens.Labels.Prism.Prism' ZBehaviour'Behaviour ZGraphic
_ZBehaviour'Graphic
  = Lens.Labels.Prism.prism' ZBehaviour'Graphic
      (\ p__ ->
         case p__ of
             ZBehaviour'Graphic p__val -> Prelude.Just p__val
             _otherwise -> Prelude.Nothing)
_ZBehaviour'Button ::
                   Lens.Labels.Prism.Prism' ZBehaviour'Behaviour ZButton
_ZBehaviour'Button
  = Lens.Labels.Prism.prism' ZBehaviour'Button
      (\ p__ ->
         case p__ of
             ZBehaviour'Button p__val -> Prelude.Just p__val
             _otherwise -> Prelude.Nothing)
{- | Fields :

    * 'Proto.Data_Fields.interactable' @:: Lens' ZButton Proto.Google.Protobuf.Wrappers.BoolValue@
    * 'Proto.Data_Fields.maybe'interactable' @:: Lens' ZButton
  (Prelude.Maybe Proto.Google.Protobuf.Wrappers.BoolValue)@
 -}
data ZButton = ZButton{_ZButton'interactable ::
                       !(Prelude.Maybe Proto.Google.Protobuf.Wrappers.BoolValue),
                       _ZButton'_unknownFields :: !Data.ProtoLens.FieldSet}
                 deriving (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ZButton where
        showsPrec _ __x __s
          = Prelude.showChar '{'
              (Prelude.showString (Data.ProtoLens.showMessageShort __x)
                 (Prelude.showChar '}' __s))
instance Lens.Labels.HasLens' ZButton "interactable"
           (Proto.Google.Protobuf.Wrappers.BoolValue)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _ZButton'interactable
                 (\ x__ y__ -> x__{_ZButton'interactable = y__}))
              (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Lens.Labels.HasLens' ZButton "maybe'interactable"
           (Prelude.Maybe Proto.Google.Protobuf.Wrappers.BoolValue)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _ZButton'interactable
                 (\ x__ y__ -> x__{_ZButton'interactable = y__}))
              Prelude.id
instance Data.ProtoLens.Message ZButton where
        messageName _ = Data.Text.pack "tarkin.data.ZButton"
        fieldsByTag
          = let interactable__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "interactable"
                      (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                         Data.ProtoLens.FieldTypeDescriptor
                           Proto.Google.Protobuf.Wrappers.BoolValue)
                      (Data.ProtoLens.OptionalField
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) ::
                               (Lens.Labels.Proxy#) "maybe'interactable")))
                      :: Data.ProtoLens.FieldDescriptor ZButton
              in
              Data.Map.fromList
                [(Data.ProtoLens.Tag 1, interactable__field_descriptor)]
        unknownFields
          = Lens.Family2.Unchecked.lens _ZButton'_unknownFields
              (\ x__ y__ -> x__{_ZButton'_unknownFields = y__})
        defMessage
          = ZButton{_ZButton'interactable = Prelude.Nothing,
                    _ZButton'_unknownFields = ([])}
instance Control.DeepSeq.NFData ZButton where
        rnf
          = \ x__ ->
              Control.DeepSeq.deepseq (_ZButton'_unknownFields x__)
                (Control.DeepSeq.deepseq (_ZButton'interactable x__) (()))
{- | Fields :

    * 'Proto.Data_Fields.renderMode' @:: Lens' ZCanvas ZRenderMode@
    * 'Proto.Data_Fields.pixelPerfect' @:: Lens' ZCanvas Proto.Google.Protobuf.Wrappers.BoolValue@
    * 'Proto.Data_Fields.maybe'pixelPerfect' @:: Lens' ZCanvas
  (Prelude.Maybe Proto.Google.Protobuf.Wrappers.BoolValue)@
    * 'Proto.Data_Fields.sortingOrder' @:: Lens' ZCanvas Proto.Google.Protobuf.Wrappers.Int32Value@
    * 'Proto.Data_Fields.maybe'sortingOrder' @:: Lens' ZCanvas
  (Prelude.Maybe Proto.Google.Protobuf.Wrappers.Int32Value)@
    * 'Proto.Data_Fields.targetDisplay' @:: Lens' ZCanvas Proto.Google.Protobuf.Wrappers.Int32Value@
    * 'Proto.Data_Fields.maybe'targetDisplay' @:: Lens' ZCanvas
  (Prelude.Maybe Proto.Google.Protobuf.Wrappers.Int32Value)@
    * 'Proto.Data_Fields.additionalShaderChannels' @:: Lens' ZCanvas ZAdditionalCanvasShaderChannels@
 -}
data ZCanvas = ZCanvas{_ZCanvas'renderMode :: !ZRenderMode,
                       _ZCanvas'pixelPerfect ::
                       !(Prelude.Maybe Proto.Google.Protobuf.Wrappers.BoolValue),
                       _ZCanvas'sortingOrder ::
                       !(Prelude.Maybe Proto.Google.Protobuf.Wrappers.Int32Value),
                       _ZCanvas'targetDisplay ::
                       !(Prelude.Maybe Proto.Google.Protobuf.Wrappers.Int32Value),
                       _ZCanvas'additionalShaderChannels ::
                       !ZAdditionalCanvasShaderChannels,
                       _ZCanvas'_unknownFields :: !Data.ProtoLens.FieldSet}
                 deriving (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ZCanvas where
        showsPrec _ __x __s
          = Prelude.showChar '{'
              (Prelude.showString (Data.ProtoLens.showMessageShort __x)
                 (Prelude.showChar '}' __s))
instance Lens.Labels.HasLens' ZCanvas "renderMode" (ZRenderMode)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _ZCanvas'renderMode
                 (\ x__ y__ -> x__{_ZCanvas'renderMode = y__}))
              Prelude.id
instance Lens.Labels.HasLens' ZCanvas "pixelPerfect"
           (Proto.Google.Protobuf.Wrappers.BoolValue)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _ZCanvas'pixelPerfect
                 (\ x__ y__ -> x__{_ZCanvas'pixelPerfect = y__}))
              (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Lens.Labels.HasLens' ZCanvas "maybe'pixelPerfect"
           (Prelude.Maybe Proto.Google.Protobuf.Wrappers.BoolValue)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _ZCanvas'pixelPerfect
                 (\ x__ y__ -> x__{_ZCanvas'pixelPerfect = y__}))
              Prelude.id
instance Lens.Labels.HasLens' ZCanvas "sortingOrder"
           (Proto.Google.Protobuf.Wrappers.Int32Value)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _ZCanvas'sortingOrder
                 (\ x__ y__ -> x__{_ZCanvas'sortingOrder = y__}))
              (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Lens.Labels.HasLens' ZCanvas "maybe'sortingOrder"
           (Prelude.Maybe Proto.Google.Protobuf.Wrappers.Int32Value)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _ZCanvas'sortingOrder
                 (\ x__ y__ -> x__{_ZCanvas'sortingOrder = y__}))
              Prelude.id
instance Lens.Labels.HasLens' ZCanvas "targetDisplay"
           (Proto.Google.Protobuf.Wrappers.Int32Value)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _ZCanvas'targetDisplay
                 (\ x__ y__ -> x__{_ZCanvas'targetDisplay = y__}))
              (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Lens.Labels.HasLens' ZCanvas "maybe'targetDisplay"
           (Prelude.Maybe Proto.Google.Protobuf.Wrappers.Int32Value)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _ZCanvas'targetDisplay
                 (\ x__ y__ -> x__{_ZCanvas'targetDisplay = y__}))
              Prelude.id
instance Lens.Labels.HasLens' ZCanvas "additionalShaderChannels"
           (ZAdditionalCanvasShaderChannels)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _ZCanvas'additionalShaderChannels
                 (\ x__ y__ -> x__{_ZCanvas'additionalShaderChannels = y__}))
              Prelude.id
instance Data.ProtoLens.Message ZCanvas where
        messageName _ = Data.Text.pack "tarkin.data.ZCanvas"
        fieldsByTag
          = let renderMode__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "render_mode"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                         Data.ProtoLens.FieldTypeDescriptor ZRenderMode)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "renderMode")))
                      :: Data.ProtoLens.FieldDescriptor ZCanvas
                pixelPerfect__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "pixel_perfect"
                      (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                         Data.ProtoLens.FieldTypeDescriptor
                           Proto.Google.Protobuf.Wrappers.BoolValue)
                      (Data.ProtoLens.OptionalField
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) ::
                               (Lens.Labels.Proxy#) "maybe'pixelPerfect")))
                      :: Data.ProtoLens.FieldDescriptor ZCanvas
                sortingOrder__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "sorting_order"
                      (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                         Data.ProtoLens.FieldTypeDescriptor
                           Proto.Google.Protobuf.Wrappers.Int32Value)
                      (Data.ProtoLens.OptionalField
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) ::
                               (Lens.Labels.Proxy#) "maybe'sortingOrder")))
                      :: Data.ProtoLens.FieldDescriptor ZCanvas
                targetDisplay__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "target_display"
                      (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                         Data.ProtoLens.FieldTypeDescriptor
                           Proto.Google.Protobuf.Wrappers.Int32Value)
                      (Data.ProtoLens.OptionalField
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) ::
                               (Lens.Labels.Proxy#) "maybe'targetDisplay")))
                      :: Data.ProtoLens.FieldDescriptor ZCanvas
                additionalShaderChannels__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "additional_shader_channels"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                         Data.ProtoLens.FieldTypeDescriptor ZAdditionalCanvasShaderChannels)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) ::
                               (Lens.Labels.Proxy#) "additionalShaderChannels")))
                      :: Data.ProtoLens.FieldDescriptor ZCanvas
              in
              Data.Map.fromList
                [(Data.ProtoLens.Tag 1, renderMode__field_descriptor),
                 (Data.ProtoLens.Tag 2, pixelPerfect__field_descriptor),
                 (Data.ProtoLens.Tag 3, sortingOrder__field_descriptor),
                 (Data.ProtoLens.Tag 4, targetDisplay__field_descriptor),
                 (Data.ProtoLens.Tag 5, additionalShaderChannels__field_descriptor)]
        unknownFields
          = Lens.Family2.Unchecked.lens _ZCanvas'_unknownFields
              (\ x__ y__ -> x__{_ZCanvas'_unknownFields = y__})
        defMessage
          = ZCanvas{_ZCanvas'renderMode = Data.ProtoLens.fieldDefault,
                    _ZCanvas'pixelPerfect = Prelude.Nothing,
                    _ZCanvas'sortingOrder = Prelude.Nothing,
                    _ZCanvas'targetDisplay = Prelude.Nothing,
                    _ZCanvas'additionalShaderChannels = Data.ProtoLens.fieldDefault,
                    _ZCanvas'_unknownFields = ([])}
instance Control.DeepSeq.NFData ZCanvas where
        rnf
          = \ x__ ->
              Control.DeepSeq.deepseq (_ZCanvas'_unknownFields x__)
                (Control.DeepSeq.deepseq (_ZCanvas'renderMode x__)
                   (Control.DeepSeq.deepseq (_ZCanvas'pixelPerfect x__)
                      (Control.DeepSeq.deepseq (_ZCanvas'sortingOrder x__)
                         (Control.DeepSeq.deepseq (_ZCanvas'targetDisplay x__)
                            (Control.DeepSeq.deepseq (_ZCanvas'additionalShaderChannels x__)
                               (()))))))
{- | Fields :

    * 'Proto.Data_Fields.cullTransparentMesh' @:: Lens' ZCanvasRenderer Proto.Google.Protobuf.Wrappers.BoolValue@
    * 'Proto.Data_Fields.maybe'cullTransparentMesh' @:: Lens' ZCanvasRenderer
  (Prelude.Maybe Proto.Google.Protobuf.Wrappers.BoolValue)@
 -}
data ZCanvasRenderer = ZCanvasRenderer{_ZCanvasRenderer'cullTransparentMesh
                                       :: !(Prelude.Maybe Proto.Google.Protobuf.Wrappers.BoolValue),
                                       _ZCanvasRenderer'_unknownFields :: !Data.ProtoLens.FieldSet}
                         deriving (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ZCanvasRenderer where
        showsPrec _ __x __s
          = Prelude.showChar '{'
              (Prelude.showString (Data.ProtoLens.showMessageShort __x)
                 (Prelude.showChar '}' __s))
instance Lens.Labels.HasLens' ZCanvasRenderer "cullTransparentMesh"
           (Proto.Google.Protobuf.Wrappers.BoolValue)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _ZCanvasRenderer'cullTransparentMesh
                 (\ x__ y__ -> x__{_ZCanvasRenderer'cullTransparentMesh = y__}))
              (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Lens.Labels.HasLens' ZCanvasRenderer
           "maybe'cullTransparentMesh"
           (Prelude.Maybe Proto.Google.Protobuf.Wrappers.BoolValue)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _ZCanvasRenderer'cullTransparentMesh
                 (\ x__ y__ -> x__{_ZCanvasRenderer'cullTransparentMesh = y__}))
              Prelude.id
instance Data.ProtoLens.Message ZCanvasRenderer where
        messageName _ = Data.Text.pack "tarkin.data.ZCanvasRenderer"
        fieldsByTag
          = let cullTransparentMesh__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "cull_transparent_mesh"
                      (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                         Data.ProtoLens.FieldTypeDescriptor
                           Proto.Google.Protobuf.Wrappers.BoolValue)
                      (Data.ProtoLens.OptionalField
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) ::
                               (Lens.Labels.Proxy#) "maybe'cullTransparentMesh")))
                      :: Data.ProtoLens.FieldDescriptor ZCanvasRenderer
              in
              Data.Map.fromList
                [(Data.ProtoLens.Tag 1, cullTransparentMesh__field_descriptor)]
        unknownFields
          = Lens.Family2.Unchecked.lens _ZCanvasRenderer'_unknownFields
              (\ x__ y__ -> x__{_ZCanvasRenderer'_unknownFields = y__})
        defMessage
          = ZCanvasRenderer{_ZCanvasRenderer'cullTransparentMesh =
                              Prelude.Nothing,
                            _ZCanvasRenderer'_unknownFields = ([])}
instance Control.DeepSeq.NFData ZCanvasRenderer where
        rnf
          = \ x__ ->
              Control.DeepSeq.deepseq (_ZCanvasRenderer'_unknownFields x__)
                (Control.DeepSeq.deepseq (_ZCanvasRenderer'cullTransparentMesh x__)
                   (()))
{- | Fields :

    * 'Proto.Data_Fields.uiScaleMode' @:: Lens' ZCanvasScaler ZCanvasScaler'ScaleMode@
    * 'Proto.Data_Fields.scaleFactor' @:: Lens' ZCanvasScaler Proto.Google.Protobuf.Wrappers.FloatValue@
    * 'Proto.Data_Fields.maybe'scaleFactor' @:: Lens' ZCanvasScaler
  (Prelude.Maybe Proto.Google.Protobuf.Wrappers.FloatValue)@
    * 'Proto.Data_Fields.referencePixelsPerUnit' @:: Lens' ZCanvasScaler Proto.Google.Protobuf.Wrappers.FloatValue@
    * 'Proto.Data_Fields.maybe'referencePixelsPerUnit' @:: Lens' ZCanvasScaler
  (Prelude.Maybe Proto.Google.Protobuf.Wrappers.FloatValue)@
    * 'Proto.Data_Fields.referenceResolution' @:: Lens' ZCanvasScaler ZVector2@
    * 'Proto.Data_Fields.maybe'referenceResolution' @:: Lens' ZCanvasScaler (Prelude.Maybe ZVector2)@
    * 'Proto.Data_Fields.screenMatchMode' @:: Lens' ZCanvasScaler ZCanvasScaler'ScreenMatchMode@
    * 'Proto.Data_Fields.matchWidthOrHeight' @:: Lens' ZCanvasScaler Proto.Google.Protobuf.Wrappers.FloatValue@
    * 'Proto.Data_Fields.maybe'matchWidthOrHeight' @:: Lens' ZCanvasScaler
  (Prelude.Maybe Proto.Google.Protobuf.Wrappers.FloatValue)@
 -}
data ZCanvasScaler = ZCanvasScaler{_ZCanvasScaler'uiScaleMode ::
                                   !ZCanvasScaler'ScaleMode,
                                   _ZCanvasScaler'scaleFactor ::
                                   !(Prelude.Maybe Proto.Google.Protobuf.Wrappers.FloatValue),
                                   _ZCanvasScaler'referencePixelsPerUnit ::
                                   !(Prelude.Maybe Proto.Google.Protobuf.Wrappers.FloatValue),
                                   _ZCanvasScaler'referenceResolution :: !(Prelude.Maybe ZVector2),
                                   _ZCanvasScaler'screenMatchMode :: !ZCanvasScaler'ScreenMatchMode,
                                   _ZCanvasScaler'matchWidthOrHeight ::
                                   !(Prelude.Maybe Proto.Google.Protobuf.Wrappers.FloatValue),
                                   _ZCanvasScaler'_unknownFields :: !Data.ProtoLens.FieldSet}
                       deriving (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ZCanvasScaler where
        showsPrec _ __x __s
          = Prelude.showChar '{'
              (Prelude.showString (Data.ProtoLens.showMessageShort __x)
                 (Prelude.showChar '}' __s))
instance Lens.Labels.HasLens' ZCanvasScaler "uiScaleMode"
           (ZCanvasScaler'ScaleMode)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _ZCanvasScaler'uiScaleMode
                 (\ x__ y__ -> x__{_ZCanvasScaler'uiScaleMode = y__}))
              Prelude.id
instance Lens.Labels.HasLens' ZCanvasScaler "scaleFactor"
           (Proto.Google.Protobuf.Wrappers.FloatValue)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _ZCanvasScaler'scaleFactor
                 (\ x__ y__ -> x__{_ZCanvasScaler'scaleFactor = y__}))
              (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Lens.Labels.HasLens' ZCanvasScaler "maybe'scaleFactor"
           (Prelude.Maybe Proto.Google.Protobuf.Wrappers.FloatValue)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _ZCanvasScaler'scaleFactor
                 (\ x__ y__ -> x__{_ZCanvasScaler'scaleFactor = y__}))
              Prelude.id
instance Lens.Labels.HasLens' ZCanvasScaler
           "referencePixelsPerUnit"
           (Proto.Google.Protobuf.Wrappers.FloatValue)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _ZCanvasScaler'referencePixelsPerUnit
                 (\ x__ y__ -> x__{_ZCanvasScaler'referencePixelsPerUnit = y__}))
              (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Lens.Labels.HasLens' ZCanvasScaler
           "maybe'referencePixelsPerUnit"
           (Prelude.Maybe Proto.Google.Protobuf.Wrappers.FloatValue)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _ZCanvasScaler'referencePixelsPerUnit
                 (\ x__ y__ -> x__{_ZCanvasScaler'referencePixelsPerUnit = y__}))
              Prelude.id
instance Lens.Labels.HasLens' ZCanvasScaler "referenceResolution"
           (ZVector2)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _ZCanvasScaler'referenceResolution
                 (\ x__ y__ -> x__{_ZCanvasScaler'referenceResolution = y__}))
              (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Lens.Labels.HasLens' ZCanvasScaler
           "maybe'referenceResolution"
           (Prelude.Maybe ZVector2)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _ZCanvasScaler'referenceResolution
                 (\ x__ y__ -> x__{_ZCanvasScaler'referenceResolution = y__}))
              Prelude.id
instance Lens.Labels.HasLens' ZCanvasScaler "screenMatchMode"
           (ZCanvasScaler'ScreenMatchMode)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _ZCanvasScaler'screenMatchMode
                 (\ x__ y__ -> x__{_ZCanvasScaler'screenMatchMode = y__}))
              Prelude.id
instance Lens.Labels.HasLens' ZCanvasScaler "matchWidthOrHeight"
           (Proto.Google.Protobuf.Wrappers.FloatValue)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _ZCanvasScaler'matchWidthOrHeight
                 (\ x__ y__ -> x__{_ZCanvasScaler'matchWidthOrHeight = y__}))
              (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Lens.Labels.HasLens' ZCanvasScaler
           "maybe'matchWidthOrHeight"
           (Prelude.Maybe Proto.Google.Protobuf.Wrappers.FloatValue)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _ZCanvasScaler'matchWidthOrHeight
                 (\ x__ y__ -> x__{_ZCanvasScaler'matchWidthOrHeight = y__}))
              Prelude.id
instance Data.ProtoLens.Message ZCanvasScaler where
        messageName _ = Data.Text.pack "tarkin.data.ZCanvasScaler"
        fieldsByTag
          = let uiScaleMode__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "ui_scale_mode"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                         Data.ProtoLens.FieldTypeDescriptor ZCanvasScaler'ScaleMode)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "uiScaleMode")))
                      :: Data.ProtoLens.FieldDescriptor ZCanvasScaler
                scaleFactor__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "scale_factor"
                      (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                         Data.ProtoLens.FieldTypeDescriptor
                           Proto.Google.Protobuf.Wrappers.FloatValue)
                      (Data.ProtoLens.OptionalField
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) ::
                               (Lens.Labels.Proxy#) "maybe'scaleFactor")))
                      :: Data.ProtoLens.FieldDescriptor ZCanvasScaler
                referencePixelsPerUnit__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "reference_pixels_per_unit"
                      (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                         Data.ProtoLens.FieldTypeDescriptor
                           Proto.Google.Protobuf.Wrappers.FloatValue)
                      (Data.ProtoLens.OptionalField
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) ::
                               (Lens.Labels.Proxy#) "maybe'referencePixelsPerUnit")))
                      :: Data.ProtoLens.FieldDescriptor ZCanvasScaler
                referenceResolution__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "reference_resolution"
                      (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                         Data.ProtoLens.FieldTypeDescriptor ZVector2)
                      (Data.ProtoLens.OptionalField
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) ::
                               (Lens.Labels.Proxy#) "maybe'referenceResolution")))
                      :: Data.ProtoLens.FieldDescriptor ZCanvasScaler
                screenMatchMode__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "screen_match_mode"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                         Data.ProtoLens.FieldTypeDescriptor ZCanvasScaler'ScreenMatchMode)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "screenMatchMode")))
                      :: Data.ProtoLens.FieldDescriptor ZCanvasScaler
                matchWidthOrHeight__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "match_width_or_height"
                      (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                         Data.ProtoLens.FieldTypeDescriptor
                           Proto.Google.Protobuf.Wrappers.FloatValue)
                      (Data.ProtoLens.OptionalField
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) ::
                               (Lens.Labels.Proxy#) "maybe'matchWidthOrHeight")))
                      :: Data.ProtoLens.FieldDescriptor ZCanvasScaler
              in
              Data.Map.fromList
                [(Data.ProtoLens.Tag 1, uiScaleMode__field_descriptor),
                 (Data.ProtoLens.Tag 2, scaleFactor__field_descriptor),
                 (Data.ProtoLens.Tag 3, referencePixelsPerUnit__field_descriptor),
                 (Data.ProtoLens.Tag 4, referenceResolution__field_descriptor),
                 (Data.ProtoLens.Tag 5, screenMatchMode__field_descriptor),
                 (Data.ProtoLens.Tag 6, matchWidthOrHeight__field_descriptor)]
        unknownFields
          = Lens.Family2.Unchecked.lens _ZCanvasScaler'_unknownFields
              (\ x__ y__ -> x__{_ZCanvasScaler'_unknownFields = y__})
        defMessage
          = ZCanvasScaler{_ZCanvasScaler'uiScaleMode =
                            Data.ProtoLens.fieldDefault,
                          _ZCanvasScaler'scaleFactor = Prelude.Nothing,
                          _ZCanvasScaler'referencePixelsPerUnit = Prelude.Nothing,
                          _ZCanvasScaler'referenceResolution = Prelude.Nothing,
                          _ZCanvasScaler'screenMatchMode = Data.ProtoLens.fieldDefault,
                          _ZCanvasScaler'matchWidthOrHeight = Prelude.Nothing,
                          _ZCanvasScaler'_unknownFields = ([])}
instance Control.DeepSeq.NFData ZCanvasScaler where
        rnf
          = \ x__ ->
              Control.DeepSeq.deepseq (_ZCanvasScaler'_unknownFields x__)
                (Control.DeepSeq.deepseq (_ZCanvasScaler'uiScaleMode x__)
                   (Control.DeepSeq.deepseq (_ZCanvasScaler'scaleFactor x__)
                      (Control.DeepSeq.deepseq
                         (_ZCanvasScaler'referencePixelsPerUnit x__)
                         (Control.DeepSeq.deepseq (_ZCanvasScaler'referenceResolution x__)
                            (Control.DeepSeq.deepseq (_ZCanvasScaler'screenMatchMode x__)
                               (Control.DeepSeq.deepseq (_ZCanvasScaler'matchWidthOrHeight x__)
                                  (())))))))
data ZCanvasScaler'ScaleMode = ZCanvasScaler'UNKNOWN_SCALE_MODE
                             | ZCanvasScaler'CONSTANT_PIXEL_SIZE
                             | ZCanvasScaler'SCALE_WITH_SCREEN_SIZE
                             | ZCanvasScaler'CONSTANT_PHYSICAL_SIZE
                             | ZCanvasScaler'ScaleMode'Unrecognized !ZCanvasScaler'ScaleMode'UnrecognizedValue
                                 deriving (Prelude.Show, Prelude.Eq, Prelude.Ord)
newtype ZCanvasScaler'ScaleMode'UnrecognizedValue = ZCanvasScaler'ScaleMode'UnrecognizedValue Data.Int.Int32
                                                      deriving (Prelude.Eq, Prelude.Ord,
                                                                Prelude.Show)
instance Data.ProtoLens.MessageEnum ZCanvasScaler'ScaleMode where
        maybeToEnum 0 = Prelude.Just ZCanvasScaler'UNKNOWN_SCALE_MODE
        maybeToEnum 1 = Prelude.Just ZCanvasScaler'CONSTANT_PIXEL_SIZE
        maybeToEnum 2 = Prelude.Just ZCanvasScaler'SCALE_WITH_SCREEN_SIZE
        maybeToEnum 3 = Prelude.Just ZCanvasScaler'CONSTANT_PHYSICAL_SIZE
        maybeToEnum k
          = Prelude.Just
              (ZCanvasScaler'ScaleMode'Unrecognized
                 (ZCanvasScaler'ScaleMode'UnrecognizedValue
                    (Prelude.fromIntegral k)))
        showEnum ZCanvasScaler'UNKNOWN_SCALE_MODE = "UNKNOWN_SCALE_MODE"
        showEnum ZCanvasScaler'CONSTANT_PIXEL_SIZE = "CONSTANT_PIXEL_SIZE"
        showEnum ZCanvasScaler'SCALE_WITH_SCREEN_SIZE
          = "SCALE_WITH_SCREEN_SIZE"
        showEnum ZCanvasScaler'CONSTANT_PHYSICAL_SIZE
          = "CONSTANT_PHYSICAL_SIZE"
        showEnum
          (ZCanvasScaler'ScaleMode'Unrecognized
             (ZCanvasScaler'ScaleMode'UnrecognizedValue k))
          = Prelude.show k
        readEnum "UNKNOWN_SCALE_MODE"
          = Prelude.Just ZCanvasScaler'UNKNOWN_SCALE_MODE
        readEnum "CONSTANT_PIXEL_SIZE"
          = Prelude.Just ZCanvasScaler'CONSTANT_PIXEL_SIZE
        readEnum "SCALE_WITH_SCREEN_SIZE"
          = Prelude.Just ZCanvasScaler'SCALE_WITH_SCREEN_SIZE
        readEnum "CONSTANT_PHYSICAL_SIZE"
          = Prelude.Just ZCanvasScaler'CONSTANT_PHYSICAL_SIZE
        readEnum k
          = (Prelude.>>=) (Text.Read.readMaybe k) Data.ProtoLens.maybeToEnum
instance Prelude.Bounded ZCanvasScaler'ScaleMode where
        minBound = ZCanvasScaler'UNKNOWN_SCALE_MODE
        maxBound = ZCanvasScaler'CONSTANT_PHYSICAL_SIZE
instance Prelude.Enum ZCanvasScaler'ScaleMode where
        toEnum k__
          = Prelude.maybe
              (Prelude.error
                 ((Prelude.++) "toEnum: unknown value for enum ScaleMode: "
                    (Prelude.show k__)))
              Prelude.id
              (Data.ProtoLens.maybeToEnum k__)
        fromEnum ZCanvasScaler'UNKNOWN_SCALE_MODE = 0
        fromEnum ZCanvasScaler'CONSTANT_PIXEL_SIZE = 1
        fromEnum ZCanvasScaler'SCALE_WITH_SCREEN_SIZE = 2
        fromEnum ZCanvasScaler'CONSTANT_PHYSICAL_SIZE = 3
        fromEnum
          (ZCanvasScaler'ScaleMode'Unrecognized
             (ZCanvasScaler'ScaleMode'UnrecognizedValue k))
          = Prelude.fromIntegral k
        succ ZCanvasScaler'CONSTANT_PHYSICAL_SIZE
          = Prelude.error
              "ZCanvasScaler'ScaleMode.succ: bad argument ZCanvasScaler'CONSTANT_PHYSICAL_SIZE. This value would be out of bounds."
        succ ZCanvasScaler'UNKNOWN_SCALE_MODE
          = ZCanvasScaler'CONSTANT_PIXEL_SIZE
        succ ZCanvasScaler'CONSTANT_PIXEL_SIZE
          = ZCanvasScaler'SCALE_WITH_SCREEN_SIZE
        succ ZCanvasScaler'SCALE_WITH_SCREEN_SIZE
          = ZCanvasScaler'CONSTANT_PHYSICAL_SIZE
        succ _
          = Prelude.error
              "ZCanvasScaler'ScaleMode.succ: bad argument: unrecognized value"
        pred ZCanvasScaler'UNKNOWN_SCALE_MODE
          = Prelude.error
              "ZCanvasScaler'ScaleMode.pred: bad argument ZCanvasScaler'UNKNOWN_SCALE_MODE. This value would be out of bounds."
        pred ZCanvasScaler'CONSTANT_PIXEL_SIZE
          = ZCanvasScaler'UNKNOWN_SCALE_MODE
        pred ZCanvasScaler'SCALE_WITH_SCREEN_SIZE
          = ZCanvasScaler'CONSTANT_PIXEL_SIZE
        pred ZCanvasScaler'CONSTANT_PHYSICAL_SIZE
          = ZCanvasScaler'SCALE_WITH_SCREEN_SIZE
        pred _
          = Prelude.error
              "ZCanvasScaler'ScaleMode.pred: bad argument: unrecognized value"
        enumFrom = Data.ProtoLens.Message.Enum.messageEnumFrom
        enumFromTo = Data.ProtoLens.Message.Enum.messageEnumFromTo
        enumFromThen = Data.ProtoLens.Message.Enum.messageEnumFromThen
        enumFromThenTo = Data.ProtoLens.Message.Enum.messageEnumFromThenTo
instance Data.ProtoLens.FieldDefault ZCanvasScaler'ScaleMode where
        fieldDefault = ZCanvasScaler'UNKNOWN_SCALE_MODE
instance Control.DeepSeq.NFData ZCanvasScaler'ScaleMode where
        rnf x__ = Prelude.seq x__ (())
data ZCanvasScaler'ScreenMatchMode = ZCanvasScaler'UNKNOWN_MATCH_MODE
                                   | ZCanvasScaler'MATCH_WIDTH_OR_HEIGHT
                                   | ZCanvasScaler'EXPAND
                                   | ZCanvasScaler'SHRINK
                                   | ZCanvasScaler'ScreenMatchMode'Unrecognized !ZCanvasScaler'ScreenMatchMode'UnrecognizedValue
                                       deriving (Prelude.Show, Prelude.Eq, Prelude.Ord)
newtype ZCanvasScaler'ScreenMatchMode'UnrecognizedValue = ZCanvasScaler'ScreenMatchMode'UnrecognizedValue Data.Int.Int32
                                                            deriving (Prelude.Eq, Prelude.Ord,
                                                                      Prelude.Show)
instance Data.ProtoLens.MessageEnum ZCanvasScaler'ScreenMatchMode
         where
        maybeToEnum 0 = Prelude.Just ZCanvasScaler'UNKNOWN_MATCH_MODE
        maybeToEnum 1 = Prelude.Just ZCanvasScaler'MATCH_WIDTH_OR_HEIGHT
        maybeToEnum 2 = Prelude.Just ZCanvasScaler'EXPAND
        maybeToEnum 3 = Prelude.Just ZCanvasScaler'SHRINK
        maybeToEnum k
          = Prelude.Just
              (ZCanvasScaler'ScreenMatchMode'Unrecognized
                 (ZCanvasScaler'ScreenMatchMode'UnrecognizedValue
                    (Prelude.fromIntegral k)))
        showEnum ZCanvasScaler'UNKNOWN_MATCH_MODE = "UNKNOWN_MATCH_MODE"
        showEnum ZCanvasScaler'MATCH_WIDTH_OR_HEIGHT
          = "MATCH_WIDTH_OR_HEIGHT"
        showEnum ZCanvasScaler'EXPAND = "EXPAND"
        showEnum ZCanvasScaler'SHRINK = "SHRINK"
        showEnum
          (ZCanvasScaler'ScreenMatchMode'Unrecognized
             (ZCanvasScaler'ScreenMatchMode'UnrecognizedValue k))
          = Prelude.show k
        readEnum "UNKNOWN_MATCH_MODE"
          = Prelude.Just ZCanvasScaler'UNKNOWN_MATCH_MODE
        readEnum "MATCH_WIDTH_OR_HEIGHT"
          = Prelude.Just ZCanvasScaler'MATCH_WIDTH_OR_HEIGHT
        readEnum "EXPAND" = Prelude.Just ZCanvasScaler'EXPAND
        readEnum "SHRINK" = Prelude.Just ZCanvasScaler'SHRINK
        readEnum k
          = (Prelude.>>=) (Text.Read.readMaybe k) Data.ProtoLens.maybeToEnum
instance Prelude.Bounded ZCanvasScaler'ScreenMatchMode where
        minBound = ZCanvasScaler'UNKNOWN_MATCH_MODE
        maxBound = ZCanvasScaler'SHRINK
instance Prelude.Enum ZCanvasScaler'ScreenMatchMode where
        toEnum k__
          = Prelude.maybe
              (Prelude.error
                 ((Prelude.++) "toEnum: unknown value for enum ScreenMatchMode: "
                    (Prelude.show k__)))
              Prelude.id
              (Data.ProtoLens.maybeToEnum k__)
        fromEnum ZCanvasScaler'UNKNOWN_MATCH_MODE = 0
        fromEnum ZCanvasScaler'MATCH_WIDTH_OR_HEIGHT = 1
        fromEnum ZCanvasScaler'EXPAND = 2
        fromEnum ZCanvasScaler'SHRINK = 3
        fromEnum
          (ZCanvasScaler'ScreenMatchMode'Unrecognized
             (ZCanvasScaler'ScreenMatchMode'UnrecognizedValue k))
          = Prelude.fromIntegral k
        succ ZCanvasScaler'SHRINK
          = Prelude.error
              "ZCanvasScaler'ScreenMatchMode.succ: bad argument ZCanvasScaler'SHRINK. This value would be out of bounds."
        succ ZCanvasScaler'UNKNOWN_MATCH_MODE
          = ZCanvasScaler'MATCH_WIDTH_OR_HEIGHT
        succ ZCanvasScaler'MATCH_WIDTH_OR_HEIGHT = ZCanvasScaler'EXPAND
        succ ZCanvasScaler'EXPAND = ZCanvasScaler'SHRINK
        succ _
          = Prelude.error
              "ZCanvasScaler'ScreenMatchMode.succ: bad argument: unrecognized value"
        pred ZCanvasScaler'UNKNOWN_MATCH_MODE
          = Prelude.error
              "ZCanvasScaler'ScreenMatchMode.pred: bad argument ZCanvasScaler'UNKNOWN_MATCH_MODE. This value would be out of bounds."
        pred ZCanvasScaler'MATCH_WIDTH_OR_HEIGHT
          = ZCanvasScaler'UNKNOWN_MATCH_MODE
        pred ZCanvasScaler'EXPAND = ZCanvasScaler'MATCH_WIDTH_OR_HEIGHT
        pred ZCanvasScaler'SHRINK = ZCanvasScaler'EXPAND
        pred _
          = Prelude.error
              "ZCanvasScaler'ScreenMatchMode.pred: bad argument: unrecognized value"
        enumFrom = Data.ProtoLens.Message.Enum.messageEnumFrom
        enumFromTo = Data.ProtoLens.Message.Enum.messageEnumFromTo
        enumFromThen = Data.ProtoLens.Message.Enum.messageEnumFromThen
        enumFromThenTo = Data.ProtoLens.Message.Enum.messageEnumFromThenTo
instance Data.ProtoLens.FieldDefault ZCanvasScaler'ScreenMatchMode
         where
        fieldDefault = ZCanvasScaler'UNKNOWN_MATCH_MODE
instance Control.DeepSeq.NFData ZCanvasScaler'ScreenMatchMode where
        rnf x__ = Prelude.seq x__ (())
{- | Fields :

    * 'Proto.Data_Fields.r' @:: Lens' ZColor Prelude.Float@
    * 'Proto.Data_Fields.g' @:: Lens' ZColor Prelude.Float@
    * 'Proto.Data_Fields.b' @:: Lens' ZColor Prelude.Float@
    * 'Proto.Data_Fields.a' @:: Lens' ZColor Prelude.Float@
 -}
data ZColor = ZColor{_ZColor'r :: !Prelude.Float,
                     _ZColor'g :: !Prelude.Float, _ZColor'b :: !Prelude.Float,
                     _ZColor'a :: !Prelude.Float,
                     _ZColor'_unknownFields :: !Data.ProtoLens.FieldSet}
                deriving (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ZColor where
        showsPrec _ __x __s
          = Prelude.showChar '{'
              (Prelude.showString (Data.ProtoLens.showMessageShort __x)
                 (Prelude.showChar '}' __s))
instance Lens.Labels.HasLens' ZColor "r" (Prelude.Float) where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _ZColor'r
                 (\ x__ y__ -> x__{_ZColor'r = y__}))
              Prelude.id
instance Lens.Labels.HasLens' ZColor "g" (Prelude.Float) where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _ZColor'g
                 (\ x__ y__ -> x__{_ZColor'g = y__}))
              Prelude.id
instance Lens.Labels.HasLens' ZColor "b" (Prelude.Float) where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _ZColor'b
                 (\ x__ y__ -> x__{_ZColor'b = y__}))
              Prelude.id
instance Lens.Labels.HasLens' ZColor "a" (Prelude.Float) where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _ZColor'a
                 (\ x__ y__ -> x__{_ZColor'a = y__}))
              Prelude.id
instance Data.ProtoLens.Message ZColor where
        messageName _ = Data.Text.pack "tarkin.data.ZColor"
        fieldsByTag
          = let r__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "r"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.FloatField ::
                         Data.ProtoLens.FieldTypeDescriptor Prelude.Float)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "r")))
                      :: Data.ProtoLens.FieldDescriptor ZColor
                g__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "g"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.FloatField ::
                         Data.ProtoLens.FieldTypeDescriptor Prelude.Float)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "g")))
                      :: Data.ProtoLens.FieldDescriptor ZColor
                b__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "b"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.FloatField ::
                         Data.ProtoLens.FieldTypeDescriptor Prelude.Float)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "b")))
                      :: Data.ProtoLens.FieldDescriptor ZColor
                a__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "a"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.FloatField ::
                         Data.ProtoLens.FieldTypeDescriptor Prelude.Float)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "a")))
                      :: Data.ProtoLens.FieldDescriptor ZColor
              in
              Data.Map.fromList
                [(Data.ProtoLens.Tag 1, r__field_descriptor),
                 (Data.ProtoLens.Tag 2, g__field_descriptor),
                 (Data.ProtoLens.Tag 3, b__field_descriptor),
                 (Data.ProtoLens.Tag 4, a__field_descriptor)]
        unknownFields
          = Lens.Family2.Unchecked.lens _ZColor'_unknownFields
              (\ x__ y__ -> x__{_ZColor'_unknownFields = y__})
        defMessage
          = ZColor{_ZColor'r = Data.ProtoLens.fieldDefault,
                   _ZColor'g = Data.ProtoLens.fieldDefault,
                   _ZColor'b = Data.ProtoLens.fieldDefault,
                   _ZColor'a = Data.ProtoLens.fieldDefault,
                   _ZColor'_unknownFields = ([])}
instance Control.DeepSeq.NFData ZColor where
        rnf
          = \ x__ ->
              Control.DeepSeq.deepseq (_ZColor'_unknownFields x__)
                (Control.DeepSeq.deepseq (_ZColor'r x__)
                   (Control.DeepSeq.deepseq (_ZColor'g x__)
                      (Control.DeepSeq.deepseq (_ZColor'b x__)
                         (Control.DeepSeq.deepseq (_ZColor'a x__) (())))))
{- | Fields :

    * 'Proto.Data_Fields.maybe'component' @:: Lens' ZComponent (Prelude.Maybe ZComponent'Component)@
    * 'Proto.Data_Fields.maybe'behaviour' @:: Lens' ZComponent (Prelude.Maybe ZBehaviour)@
    * 'Proto.Data_Fields.behaviour' @:: Lens' ZComponent ZBehaviour@
    * 'Proto.Data_Fields.maybe'canvasRenderer' @:: Lens' ZComponent (Prelude.Maybe ZCanvasRenderer)@
    * 'Proto.Data_Fields.canvasRenderer' @:: Lens' ZComponent ZCanvasRenderer@
 -}
data ZComponent = ZComponent{_ZComponent'component ::
                             !(Prelude.Maybe ZComponent'Component),
                             _ZComponent'_unknownFields :: !Data.ProtoLens.FieldSet}
                    deriving (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ZComponent where
        showsPrec _ __x __s
          = Prelude.showChar '{'
              (Prelude.showString (Data.ProtoLens.showMessageShort __x)
                 (Prelude.showChar '}' __s))
data ZComponent'Component = ZComponent'Behaviour !ZBehaviour
                          | ZComponent'CanvasRenderer !ZCanvasRenderer
                              deriving (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Lens.Labels.HasLens' ZComponent "maybe'component"
           (Prelude.Maybe ZComponent'Component)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _ZComponent'component
                 (\ x__ y__ -> x__{_ZComponent'component = y__}))
              Prelude.id
instance Lens.Labels.HasLens' ZComponent "maybe'behaviour"
           (Prelude.Maybe ZBehaviour)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _ZComponent'component
                 (\ x__ y__ -> x__{_ZComponent'component = y__}))
              (Lens.Family2.Unchecked.lens
                 (\ x__ ->
                    case x__ of
                        Prelude.Just (ZComponent'Behaviour x__val) -> Prelude.Just x__val
                        _otherwise -> Prelude.Nothing)
                 (\ _ y__ -> Prelude.fmap ZComponent'Behaviour y__))
instance Lens.Labels.HasLens' ZComponent "behaviour" (ZBehaviour)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _ZComponent'component
                 (\ x__ y__ -> x__{_ZComponent'component = y__}))
              ((Prelude..)
                 (Lens.Family2.Unchecked.lens
                    (\ x__ ->
                       case x__ of
                           Prelude.Just (ZComponent'Behaviour x__val) -> Prelude.Just x__val
                           _otherwise -> Prelude.Nothing)
                    (\ _ y__ -> Prelude.fmap ZComponent'Behaviour y__))
                 (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Lens.Labels.HasLens' ZComponent "maybe'canvasRenderer"
           (Prelude.Maybe ZCanvasRenderer)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _ZComponent'component
                 (\ x__ y__ -> x__{_ZComponent'component = y__}))
              (Lens.Family2.Unchecked.lens
                 (\ x__ ->
                    case x__ of
                        Prelude.Just (ZComponent'CanvasRenderer x__val) -> Prelude.Just
                                                                             x__val
                        _otherwise -> Prelude.Nothing)
                 (\ _ y__ -> Prelude.fmap ZComponent'CanvasRenderer y__))
instance Lens.Labels.HasLens' ZComponent "canvasRenderer"
           (ZCanvasRenderer)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _ZComponent'component
                 (\ x__ y__ -> x__{_ZComponent'component = y__}))
              ((Prelude..)
                 (Lens.Family2.Unchecked.lens
                    (\ x__ ->
                       case x__ of
                           Prelude.Just (ZComponent'CanvasRenderer x__val) -> Prelude.Just
                                                                                x__val
                           _otherwise -> Prelude.Nothing)
                    (\ _ y__ -> Prelude.fmap ZComponent'CanvasRenderer y__))
                 (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Message ZComponent where
        messageName _ = Data.Text.pack "tarkin.data.ZComponent"
        fieldsByTag
          = let behaviour__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "behaviour"
                      (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                         Data.ProtoLens.FieldTypeDescriptor ZBehaviour)
                      (Data.ProtoLens.OptionalField
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "maybe'behaviour")))
                      :: Data.ProtoLens.FieldDescriptor ZComponent
                canvasRenderer__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "canvas_renderer"
                      (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                         Data.ProtoLens.FieldTypeDescriptor ZCanvasRenderer)
                      (Data.ProtoLens.OptionalField
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) ::
                               (Lens.Labels.Proxy#) "maybe'canvasRenderer")))
                      :: Data.ProtoLens.FieldDescriptor ZComponent
              in
              Data.Map.fromList
                [(Data.ProtoLens.Tag 1, behaviour__field_descriptor),
                 (Data.ProtoLens.Tag 2, canvasRenderer__field_descriptor)]
        unknownFields
          = Lens.Family2.Unchecked.lens _ZComponent'_unknownFields
              (\ x__ y__ -> x__{_ZComponent'_unknownFields = y__})
        defMessage
          = ZComponent{_ZComponent'component = Prelude.Nothing,
                       _ZComponent'_unknownFields = ([])}
instance Control.DeepSeq.NFData ZComponent where
        rnf
          = \ x__ ->
              Control.DeepSeq.deepseq (_ZComponent'_unknownFields x__)
                (Control.DeepSeq.deepseq (_ZComponent'component x__) (()))
instance Control.DeepSeq.NFData ZComponent'Component where
        rnf (ZComponent'Behaviour x__) = Control.DeepSeq.rnf x__
        rnf (ZComponent'CanvasRenderer x__) = Control.DeepSeq.rnf x__
_ZComponent'Behaviour ::
                      Lens.Labels.Prism.Prism' ZComponent'Component ZBehaviour
_ZComponent'Behaviour
  = Lens.Labels.Prism.prism' ZComponent'Behaviour
      (\ p__ ->
         case p__ of
             ZComponent'Behaviour p__val -> Prelude.Just p__val
             _otherwise -> Prelude.Nothing)
_ZComponent'CanvasRenderer ::
                           Lens.Labels.Prism.Prism' ZComponent'Component ZCanvasRenderer
_ZComponent'CanvasRenderer
  = Lens.Labels.Prism.prism' ZComponent'CanvasRenderer
      (\ p__ ->
         case p__ of
             ZComponent'CanvasRenderer p__val -> Prelude.Just p__val
             _otherwise -> Prelude.Nothing)
data ZComponentType = UNKNOWN_TYPE
                    | CANVAS
                    | CANVAS_SCALER
                    | CANVAS_RENDERER
                    | GRAPHIC_RAYCASTER
                    | EVENT_SYSTEM
                    | STANDALONE_INPUT_MODULE
                    | IMAGE
                    | BUTTON
                    | TEXT
                    | ZComponentType'Unrecognized !ZComponentType'UnrecognizedValue
                        deriving (Prelude.Show, Prelude.Eq, Prelude.Ord)
newtype ZComponentType'UnrecognizedValue = ZComponentType'UnrecognizedValue Data.Int.Int32
                                             deriving (Prelude.Eq, Prelude.Ord, Prelude.Show)
instance Data.ProtoLens.MessageEnum ZComponentType where
        maybeToEnum 0 = Prelude.Just UNKNOWN_TYPE
        maybeToEnum 1 = Prelude.Just CANVAS
        maybeToEnum 2 = Prelude.Just CANVAS_SCALER
        maybeToEnum 3 = Prelude.Just CANVAS_RENDERER
        maybeToEnum 4 = Prelude.Just GRAPHIC_RAYCASTER
        maybeToEnum 5 = Prelude.Just EVENT_SYSTEM
        maybeToEnum 6 = Prelude.Just STANDALONE_INPUT_MODULE
        maybeToEnum 7 = Prelude.Just IMAGE
        maybeToEnum 8 = Prelude.Just BUTTON
        maybeToEnum 9 = Prelude.Just TEXT
        maybeToEnum k
          = Prelude.Just
              (ZComponentType'Unrecognized
                 (ZComponentType'UnrecognizedValue (Prelude.fromIntegral k)))
        showEnum UNKNOWN_TYPE = "UNKNOWN_TYPE"
        showEnum CANVAS = "CANVAS"
        showEnum CANVAS_SCALER = "CANVAS_SCALER"
        showEnum CANVAS_RENDERER = "CANVAS_RENDERER"
        showEnum GRAPHIC_RAYCASTER = "GRAPHIC_RAYCASTER"
        showEnum EVENT_SYSTEM = "EVENT_SYSTEM"
        showEnum STANDALONE_INPUT_MODULE = "STANDALONE_INPUT_MODULE"
        showEnum IMAGE = "IMAGE"
        showEnum BUTTON = "BUTTON"
        showEnum TEXT = "TEXT"
        showEnum
          (ZComponentType'Unrecognized (ZComponentType'UnrecognizedValue k))
          = Prelude.show k
        readEnum "UNKNOWN_TYPE" = Prelude.Just UNKNOWN_TYPE
        readEnum "CANVAS" = Prelude.Just CANVAS
        readEnum "CANVAS_SCALER" = Prelude.Just CANVAS_SCALER
        readEnum "CANVAS_RENDERER" = Prelude.Just CANVAS_RENDERER
        readEnum "GRAPHIC_RAYCASTER" = Prelude.Just GRAPHIC_RAYCASTER
        readEnum "EVENT_SYSTEM" = Prelude.Just EVENT_SYSTEM
        readEnum "STANDALONE_INPUT_MODULE"
          = Prelude.Just STANDALONE_INPUT_MODULE
        readEnum "IMAGE" = Prelude.Just IMAGE
        readEnum "BUTTON" = Prelude.Just BUTTON
        readEnum "TEXT" = Prelude.Just TEXT
        readEnum k
          = (Prelude.>>=) (Text.Read.readMaybe k) Data.ProtoLens.maybeToEnum
instance Prelude.Bounded ZComponentType where
        minBound = UNKNOWN_TYPE
        maxBound = TEXT
instance Prelude.Enum ZComponentType where
        toEnum k__
          = Prelude.maybe
              (Prelude.error
                 ((Prelude.++) "toEnum: unknown value for enum ZComponentType: "
                    (Prelude.show k__)))
              Prelude.id
              (Data.ProtoLens.maybeToEnum k__)
        fromEnum UNKNOWN_TYPE = 0
        fromEnum CANVAS = 1
        fromEnum CANVAS_SCALER = 2
        fromEnum CANVAS_RENDERER = 3
        fromEnum GRAPHIC_RAYCASTER = 4
        fromEnum EVENT_SYSTEM = 5
        fromEnum STANDALONE_INPUT_MODULE = 6
        fromEnum IMAGE = 7
        fromEnum BUTTON = 8
        fromEnum TEXT = 9
        fromEnum
          (ZComponentType'Unrecognized (ZComponentType'UnrecognizedValue k))
          = Prelude.fromIntegral k
        succ TEXT
          = Prelude.error
              "ZComponentType.succ: bad argument TEXT. This value would be out of bounds."
        succ UNKNOWN_TYPE = CANVAS
        succ CANVAS = CANVAS_SCALER
        succ CANVAS_SCALER = CANVAS_RENDERER
        succ CANVAS_RENDERER = GRAPHIC_RAYCASTER
        succ GRAPHIC_RAYCASTER = EVENT_SYSTEM
        succ EVENT_SYSTEM = STANDALONE_INPUT_MODULE
        succ STANDALONE_INPUT_MODULE = IMAGE
        succ IMAGE = BUTTON
        succ BUTTON = TEXT
        succ _
          = Prelude.error
              "ZComponentType.succ: bad argument: unrecognized value"
        pred UNKNOWN_TYPE
          = Prelude.error
              "ZComponentType.pred: bad argument UNKNOWN_TYPE. This value would be out of bounds."
        pred CANVAS = UNKNOWN_TYPE
        pred CANVAS_SCALER = CANVAS
        pred CANVAS_RENDERER = CANVAS_SCALER
        pred GRAPHIC_RAYCASTER = CANVAS_RENDERER
        pred EVENT_SYSTEM = GRAPHIC_RAYCASTER
        pred STANDALONE_INPUT_MODULE = EVENT_SYSTEM
        pred IMAGE = STANDALONE_INPUT_MODULE
        pred BUTTON = IMAGE
        pred TEXT = BUTTON
        pred _
          = Prelude.error
              "ZComponentType.pred: bad argument: unrecognized value"
        enumFrom = Data.ProtoLens.Message.Enum.messageEnumFrom
        enumFromTo = Data.ProtoLens.Message.Enum.messageEnumFromTo
        enumFromThen = Data.ProtoLens.Message.Enum.messageEnumFromThen
        enumFromThenTo = Data.ProtoLens.Message.Enum.messageEnumFromThenTo
instance Data.ProtoLens.FieldDefault ZComponentType where
        fieldDefault = UNKNOWN_TYPE
instance Control.DeepSeq.NFData ZComponentType where
        rnf x__ = Prelude.seq x__ (())
{- | Fields :

    * 'Proto.Data_Fields.firstSelectedGameObject' @:: Lens' ZEventSystem ZGameObject@
    * 'Proto.Data_Fields.maybe'firstSelectedGameObject' @:: Lens' ZEventSystem (Prelude.Maybe ZGameObject)@
    * 'Proto.Data_Fields.sendNavigationEvents' @:: Lens' ZEventSystem Proto.Google.Protobuf.Wrappers.BoolValue@
    * 'Proto.Data_Fields.maybe'sendNavigationEvents' @:: Lens' ZEventSystem
  (Prelude.Maybe Proto.Google.Protobuf.Wrappers.BoolValue)@
    * 'Proto.Data_Fields.pixelDragThreshold' @:: Lens' ZEventSystem Proto.Google.Protobuf.Wrappers.Int32Value@
    * 'Proto.Data_Fields.maybe'pixelDragThreshold' @:: Lens' ZEventSystem
  (Prelude.Maybe Proto.Google.Protobuf.Wrappers.Int32Value)@
 -}
data ZEventSystem = ZEventSystem{_ZEventSystem'firstSelectedGameObject
                                 :: !(Prelude.Maybe ZGameObject),
                                 _ZEventSystem'sendNavigationEvents ::
                                 !(Prelude.Maybe Proto.Google.Protobuf.Wrappers.BoolValue),
                                 _ZEventSystem'pixelDragThreshold ::
                                 !(Prelude.Maybe Proto.Google.Protobuf.Wrappers.Int32Value),
                                 _ZEventSystem'_unknownFields :: !Data.ProtoLens.FieldSet}
                      deriving (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ZEventSystem where
        showsPrec _ __x __s
          = Prelude.showChar '{'
              (Prelude.showString (Data.ProtoLens.showMessageShort __x)
                 (Prelude.showChar '}' __s))
instance Lens.Labels.HasLens' ZEventSystem
           "firstSelectedGameObject"
           (ZGameObject)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _ZEventSystem'firstSelectedGameObject
                 (\ x__ y__ -> x__{_ZEventSystem'firstSelectedGameObject = y__}))
              (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Lens.Labels.HasLens' ZEventSystem
           "maybe'firstSelectedGameObject"
           (Prelude.Maybe ZGameObject)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _ZEventSystem'firstSelectedGameObject
                 (\ x__ y__ -> x__{_ZEventSystem'firstSelectedGameObject = y__}))
              Prelude.id
instance Lens.Labels.HasLens' ZEventSystem "sendNavigationEvents"
           (Proto.Google.Protobuf.Wrappers.BoolValue)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _ZEventSystem'sendNavigationEvents
                 (\ x__ y__ -> x__{_ZEventSystem'sendNavigationEvents = y__}))
              (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Lens.Labels.HasLens' ZEventSystem
           "maybe'sendNavigationEvents"
           (Prelude.Maybe Proto.Google.Protobuf.Wrappers.BoolValue)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _ZEventSystem'sendNavigationEvents
                 (\ x__ y__ -> x__{_ZEventSystem'sendNavigationEvents = y__}))
              Prelude.id
instance Lens.Labels.HasLens' ZEventSystem "pixelDragThreshold"
           (Proto.Google.Protobuf.Wrappers.Int32Value)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _ZEventSystem'pixelDragThreshold
                 (\ x__ y__ -> x__{_ZEventSystem'pixelDragThreshold = y__}))
              (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Lens.Labels.HasLens' ZEventSystem
           "maybe'pixelDragThreshold"
           (Prelude.Maybe Proto.Google.Protobuf.Wrappers.Int32Value)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _ZEventSystem'pixelDragThreshold
                 (\ x__ y__ -> x__{_ZEventSystem'pixelDragThreshold = y__}))
              Prelude.id
instance Data.ProtoLens.Message ZEventSystem where
        messageName _ = Data.Text.pack "tarkin.data.ZEventSystem"
        fieldsByTag
          = let firstSelectedGameObject__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "first_selected_game_object"
                      (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                         Data.ProtoLens.FieldTypeDescriptor ZGameObject)
                      (Data.ProtoLens.OptionalField
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) ::
                               (Lens.Labels.Proxy#) "maybe'firstSelectedGameObject")))
                      :: Data.ProtoLens.FieldDescriptor ZEventSystem
                sendNavigationEvents__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "send_navigation_events"
                      (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                         Data.ProtoLens.FieldTypeDescriptor
                           Proto.Google.Protobuf.Wrappers.BoolValue)
                      (Data.ProtoLens.OptionalField
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) ::
                               (Lens.Labels.Proxy#) "maybe'sendNavigationEvents")))
                      :: Data.ProtoLens.FieldDescriptor ZEventSystem
                pixelDragThreshold__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "pixel_drag_threshold"
                      (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                         Data.ProtoLens.FieldTypeDescriptor
                           Proto.Google.Protobuf.Wrappers.Int32Value)
                      (Data.ProtoLens.OptionalField
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) ::
                               (Lens.Labels.Proxy#) "maybe'pixelDragThreshold")))
                      :: Data.ProtoLens.FieldDescriptor ZEventSystem
              in
              Data.Map.fromList
                [(Data.ProtoLens.Tag 1, firstSelectedGameObject__field_descriptor),
                 (Data.ProtoLens.Tag 2, sendNavigationEvents__field_descriptor),
                 (Data.ProtoLens.Tag 3, pixelDragThreshold__field_descriptor)]
        unknownFields
          = Lens.Family2.Unchecked.lens _ZEventSystem'_unknownFields
              (\ x__ y__ -> x__{_ZEventSystem'_unknownFields = y__})
        defMessage
          = ZEventSystem{_ZEventSystem'firstSelectedGameObject =
                           Prelude.Nothing,
                         _ZEventSystem'sendNavigationEvents = Prelude.Nothing,
                         _ZEventSystem'pixelDragThreshold = Prelude.Nothing,
                         _ZEventSystem'_unknownFields = ([])}
instance Control.DeepSeq.NFData ZEventSystem where
        rnf
          = \ x__ ->
              Control.DeepSeq.deepseq (_ZEventSystem'_unknownFields x__)
                (Control.DeepSeq.deepseq
                   (_ZEventSystem'firstSelectedGameObject x__)
                   (Control.DeepSeq.deepseq (_ZEventSystem'sendNavigationEvents x__)
                      (Control.DeepSeq.deepseq (_ZEventSystem'pixelDragThreshold x__)
                         (()))))
{- | Fields :

    * 'Proto.Data_Fields.fontId' @:: Lens' ZFont Data.Word.Word32@
 -}
data ZFont = ZFont{_ZFont'fontId :: !Data.Word.Word32,
                   _ZFont'_unknownFields :: !Data.ProtoLens.FieldSet}
               deriving (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ZFont where
        showsPrec _ __x __s
          = Prelude.showChar '{'
              (Prelude.showString (Data.ProtoLens.showMessageShort __x)
                 (Prelude.showChar '}' __s))
instance Lens.Labels.HasLens' ZFont "fontId" (Data.Word.Word32)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _ZFont'fontId
                 (\ x__ y__ -> x__{_ZFont'fontId = y__}))
              Prelude.id
instance Data.ProtoLens.Message ZFont where
        messageName _ = Data.Text.pack "tarkin.data.ZFont"
        fieldsByTag
          = let fontId__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "font_id"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "fontId")))
                      :: Data.ProtoLens.FieldDescriptor ZFont
              in
              Data.Map.fromList
                [(Data.ProtoLens.Tag 1, fontId__field_descriptor)]
        unknownFields
          = Lens.Family2.Unchecked.lens _ZFont'_unknownFields
              (\ x__ y__ -> x__{_ZFont'_unknownFields = y__})
        defMessage
          = ZFont{_ZFont'fontId = Data.ProtoLens.fieldDefault,
                  _ZFont'_unknownFields = ([])}
instance Control.DeepSeq.NFData ZFont where
        rnf
          = \ x__ ->
              Control.DeepSeq.deepseq (_ZFont'_unknownFields x__)
                (Control.DeepSeq.deepseq (_ZFont'fontId x__) (()))
{- | Fields :

    * 'Proto.Data_Fields.gameObjectId' @:: Lens' ZGameObject Data.Word.Word32@
 -}
data ZGameObject = ZGameObject{_ZGameObject'gameObjectId ::
                               !Data.Word.Word32,
                               _ZGameObject'_unknownFields :: !Data.ProtoLens.FieldSet}
                     deriving (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ZGameObject where
        showsPrec _ __x __s
          = Prelude.showChar '{'
              (Prelude.showString (Data.ProtoLens.showMessageShort __x)
                 (Prelude.showChar '}' __s))
instance Lens.Labels.HasLens' ZGameObject "gameObjectId"
           (Data.Word.Word32)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _ZGameObject'gameObjectId
                 (\ x__ y__ -> x__{_ZGameObject'gameObjectId = y__}))
              Prelude.id
instance Data.ProtoLens.Message ZGameObject where
        messageName _ = Data.Text.pack "tarkin.data.ZGameObject"
        fieldsByTag
          = let gameObjectId__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "game_object_id"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "gameObjectId")))
                      :: Data.ProtoLens.FieldDescriptor ZGameObject
              in
              Data.Map.fromList
                [(Data.ProtoLens.Tag 1, gameObjectId__field_descriptor)]
        unknownFields
          = Lens.Family2.Unchecked.lens _ZGameObject'_unknownFields
              (\ x__ y__ -> x__{_ZGameObject'_unknownFields = y__})
        defMessage
          = ZGameObject{_ZGameObject'gameObjectId =
                          Data.ProtoLens.fieldDefault,
                        _ZGameObject'_unknownFields = ([])}
instance Control.DeepSeq.NFData ZGameObject where
        rnf
          = \ x__ ->
              Control.DeepSeq.deepseq (_ZGameObject'_unknownFields x__)
                (Control.DeepSeq.deepseq (_ZGameObject'gameObjectId x__) (()))
{- | Fields :

    * 'Proto.Data_Fields.color' @:: Lens' ZGraphic ZColor@
    * 'Proto.Data_Fields.maybe'color' @:: Lens' ZGraphic (Prelude.Maybe ZColor)@
    * 'Proto.Data_Fields.material' @:: Lens' ZGraphic ZMaterial@
    * 'Proto.Data_Fields.maybe'material' @:: Lens' ZGraphic (Prelude.Maybe ZMaterial)@
    * 'Proto.Data_Fields.raycastTarget' @:: Lens' ZGraphic Proto.Google.Protobuf.Wrappers.BoolValue@
    * 'Proto.Data_Fields.maybe'raycastTarget' @:: Lens' ZGraphic
  (Prelude.Maybe Proto.Google.Protobuf.Wrappers.BoolValue)@
    * 'Proto.Data_Fields.maybe'graphic' @:: Lens' ZGraphic (Prelude.Maybe ZGraphic'Graphic)@
    * 'Proto.Data_Fields.maybe'maskableGraphic' @:: Lens' ZGraphic (Prelude.Maybe ZMaskableGraphic)@
    * 'Proto.Data_Fields.maskableGraphic' @:: Lens' ZGraphic ZMaskableGraphic@
 -}
data ZGraphic = ZGraphic{_ZGraphic'color ::
                         !(Prelude.Maybe ZColor),
                         _ZGraphic'material :: !(Prelude.Maybe ZMaterial),
                         _ZGraphic'raycastTarget ::
                         !(Prelude.Maybe Proto.Google.Protobuf.Wrappers.BoolValue),
                         _ZGraphic'graphic :: !(Prelude.Maybe ZGraphic'Graphic),
                         _ZGraphic'_unknownFields :: !Data.ProtoLens.FieldSet}
                  deriving (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ZGraphic where
        showsPrec _ __x __s
          = Prelude.showChar '{'
              (Prelude.showString (Data.ProtoLens.showMessageShort __x)
                 (Prelude.showChar '}' __s))
data ZGraphic'Graphic = ZGraphic'MaskableGraphic !ZMaskableGraphic
                          deriving (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Lens.Labels.HasLens' ZGraphic "color" (ZColor) where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _ZGraphic'color
                 (\ x__ y__ -> x__{_ZGraphic'color = y__}))
              (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Lens.Labels.HasLens' ZGraphic "maybe'color"
           (Prelude.Maybe ZColor)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _ZGraphic'color
                 (\ x__ y__ -> x__{_ZGraphic'color = y__}))
              Prelude.id
instance Lens.Labels.HasLens' ZGraphic "material" (ZMaterial) where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _ZGraphic'material
                 (\ x__ y__ -> x__{_ZGraphic'material = y__}))
              (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Lens.Labels.HasLens' ZGraphic "maybe'material"
           (Prelude.Maybe ZMaterial)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _ZGraphic'material
                 (\ x__ y__ -> x__{_ZGraphic'material = y__}))
              Prelude.id
instance Lens.Labels.HasLens' ZGraphic "raycastTarget"
           (Proto.Google.Protobuf.Wrappers.BoolValue)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _ZGraphic'raycastTarget
                 (\ x__ y__ -> x__{_ZGraphic'raycastTarget = y__}))
              (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Lens.Labels.HasLens' ZGraphic "maybe'raycastTarget"
           (Prelude.Maybe Proto.Google.Protobuf.Wrappers.BoolValue)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _ZGraphic'raycastTarget
                 (\ x__ y__ -> x__{_ZGraphic'raycastTarget = y__}))
              Prelude.id
instance Lens.Labels.HasLens' ZGraphic "maybe'graphic"
           (Prelude.Maybe ZGraphic'Graphic)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _ZGraphic'graphic
                 (\ x__ y__ -> x__{_ZGraphic'graphic = y__}))
              Prelude.id
instance Lens.Labels.HasLens' ZGraphic "maybe'maskableGraphic"
           (Prelude.Maybe ZMaskableGraphic)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _ZGraphic'graphic
                 (\ x__ y__ -> x__{_ZGraphic'graphic = y__}))
              (Lens.Family2.Unchecked.lens
                 (\ x__ ->
                    case x__ of
                        Prelude.Just (ZGraphic'MaskableGraphic x__val) -> Prelude.Just
                                                                            x__val
                        _otherwise -> Prelude.Nothing)
                 (\ _ y__ -> Prelude.fmap ZGraphic'MaskableGraphic y__))
instance Lens.Labels.HasLens' ZGraphic "maskableGraphic"
           (ZMaskableGraphic)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _ZGraphic'graphic
                 (\ x__ y__ -> x__{_ZGraphic'graphic = y__}))
              ((Prelude..)
                 (Lens.Family2.Unchecked.lens
                    (\ x__ ->
                       case x__ of
                           Prelude.Just (ZGraphic'MaskableGraphic x__val) -> Prelude.Just
                                                                               x__val
                           _otherwise -> Prelude.Nothing)
                    (\ _ y__ -> Prelude.fmap ZGraphic'MaskableGraphic y__))
                 (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Message ZGraphic where
        messageName _ = Data.Text.pack "tarkin.data.ZGraphic"
        fieldsByTag
          = let color__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "color"
                      (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                         Data.ProtoLens.FieldTypeDescriptor ZColor)
                      (Data.ProtoLens.OptionalField
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "maybe'color")))
                      :: Data.ProtoLens.FieldDescriptor ZGraphic
                material__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "material"
                      (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                         Data.ProtoLens.FieldTypeDescriptor ZMaterial)
                      (Data.ProtoLens.OptionalField
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "maybe'material")))
                      :: Data.ProtoLens.FieldDescriptor ZGraphic
                raycastTarget__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "raycast_target"
                      (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                         Data.ProtoLens.FieldTypeDescriptor
                           Proto.Google.Protobuf.Wrappers.BoolValue)
                      (Data.ProtoLens.OptionalField
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) ::
                               (Lens.Labels.Proxy#) "maybe'raycastTarget")))
                      :: Data.ProtoLens.FieldDescriptor ZGraphic
                maskableGraphic__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "maskable_graphic"
                      (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                         Data.ProtoLens.FieldTypeDescriptor ZMaskableGraphic)
                      (Data.ProtoLens.OptionalField
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) ::
                               (Lens.Labels.Proxy#) "maybe'maskableGraphic")))
                      :: Data.ProtoLens.FieldDescriptor ZGraphic
              in
              Data.Map.fromList
                [(Data.ProtoLens.Tag 2, color__field_descriptor),
                 (Data.ProtoLens.Tag 3, material__field_descriptor),
                 (Data.ProtoLens.Tag 4, raycastTarget__field_descriptor),
                 (Data.ProtoLens.Tag 1, maskableGraphic__field_descriptor)]
        unknownFields
          = Lens.Family2.Unchecked.lens _ZGraphic'_unknownFields
              (\ x__ y__ -> x__{_ZGraphic'_unknownFields = y__})
        defMessage
          = ZGraphic{_ZGraphic'color = Prelude.Nothing,
                     _ZGraphic'material = Prelude.Nothing,
                     _ZGraphic'raycastTarget = Prelude.Nothing,
                     _ZGraphic'graphic = Prelude.Nothing,
                     _ZGraphic'_unknownFields = ([])}
instance Control.DeepSeq.NFData ZGraphic where
        rnf
          = \ x__ ->
              Control.DeepSeq.deepseq (_ZGraphic'_unknownFields x__)
                (Control.DeepSeq.deepseq (_ZGraphic'color x__)
                   (Control.DeepSeq.deepseq (_ZGraphic'material x__)
                      (Control.DeepSeq.deepseq (_ZGraphic'raycastTarget x__)
                         (Control.DeepSeq.deepseq (_ZGraphic'graphic x__) (())))))
instance Control.DeepSeq.NFData ZGraphic'Graphic where
        rnf (ZGraphic'MaskableGraphic x__) = Control.DeepSeq.rnf x__
_ZGraphic'MaskableGraphic ::
                          Lens.Labels.Prism.Prism' ZGraphic'Graphic ZMaskableGraphic
_ZGraphic'MaskableGraphic
  = Lens.Labels.Prism.prism' ZGraphic'MaskableGraphic
      (\ p__ ->
         case p__ of
             ZGraphic'MaskableGraphic p__val -> Prelude.Just p__val)
{- | Fields :

    * 'Proto.Data_Fields.ignoreReversedGraphics' @:: Lens' ZGraphicRaycaster Proto.Google.Protobuf.Wrappers.BoolValue@
    * 'Proto.Data_Fields.maybe'ignoreReversedGraphics' @:: Lens' ZGraphicRaycaster
  (Prelude.Maybe Proto.Google.Protobuf.Wrappers.BoolValue)@
    * 'Proto.Data_Fields.blockingObjects' @:: Lens' ZGraphicRaycaster ZGraphicRaycaster'BlockingObjects@
 -}
data ZGraphicRaycaster = ZGraphicRaycaster{_ZGraphicRaycaster'ignoreReversedGraphics
                                           ::
                                           !(Prelude.Maybe
                                               Proto.Google.Protobuf.Wrappers.BoolValue),
                                           _ZGraphicRaycaster'blockingObjects ::
                                           !ZGraphicRaycaster'BlockingObjects,
                                           _ZGraphicRaycaster'_unknownFields ::
                                           !Data.ProtoLens.FieldSet}
                           deriving (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ZGraphicRaycaster where
        showsPrec _ __x __s
          = Prelude.showChar '{'
              (Prelude.showString (Data.ProtoLens.showMessageShort __x)
                 (Prelude.showChar '}' __s))
instance Lens.Labels.HasLens' ZGraphicRaycaster
           "ignoreReversedGraphics"
           (Proto.Google.Protobuf.Wrappers.BoolValue)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens
                 _ZGraphicRaycaster'ignoreReversedGraphics
                 (\ x__ y__ ->
                    x__{_ZGraphicRaycaster'ignoreReversedGraphics = y__}))
              (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Lens.Labels.HasLens' ZGraphicRaycaster
           "maybe'ignoreReversedGraphics"
           (Prelude.Maybe Proto.Google.Protobuf.Wrappers.BoolValue)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens
                 _ZGraphicRaycaster'ignoreReversedGraphics
                 (\ x__ y__ ->
                    x__{_ZGraphicRaycaster'ignoreReversedGraphics = y__}))
              Prelude.id
instance Lens.Labels.HasLens' ZGraphicRaycaster "blockingObjects"
           (ZGraphicRaycaster'BlockingObjects)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _ZGraphicRaycaster'blockingObjects
                 (\ x__ y__ -> x__{_ZGraphicRaycaster'blockingObjects = y__}))
              Prelude.id
instance Data.ProtoLens.Message ZGraphicRaycaster where
        messageName _ = Data.Text.pack "tarkin.data.ZGraphicRaycaster"
        fieldsByTag
          = let ignoreReversedGraphics__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "ignore_reversed_graphics"
                      (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                         Data.ProtoLens.FieldTypeDescriptor
                           Proto.Google.Protobuf.Wrappers.BoolValue)
                      (Data.ProtoLens.OptionalField
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) ::
                               (Lens.Labels.Proxy#) "maybe'ignoreReversedGraphics")))
                      :: Data.ProtoLens.FieldDescriptor ZGraphicRaycaster
                blockingObjects__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "blocking_objects"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                         Data.ProtoLens.FieldTypeDescriptor
                           ZGraphicRaycaster'BlockingObjects)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "blockingObjects")))
                      :: Data.ProtoLens.FieldDescriptor ZGraphicRaycaster
              in
              Data.Map.fromList
                [(Data.ProtoLens.Tag 1, ignoreReversedGraphics__field_descriptor),
                 (Data.ProtoLens.Tag 2, blockingObjects__field_descriptor)]
        unknownFields
          = Lens.Family2.Unchecked.lens _ZGraphicRaycaster'_unknownFields
              (\ x__ y__ -> x__{_ZGraphicRaycaster'_unknownFields = y__})
        defMessage
          = ZGraphicRaycaster{_ZGraphicRaycaster'ignoreReversedGraphics =
                                Prelude.Nothing,
                              _ZGraphicRaycaster'blockingObjects = Data.ProtoLens.fieldDefault,
                              _ZGraphicRaycaster'_unknownFields = ([])}
instance Control.DeepSeq.NFData ZGraphicRaycaster where
        rnf
          = \ x__ ->
              Control.DeepSeq.deepseq (_ZGraphicRaycaster'_unknownFields x__)
                (Control.DeepSeq.deepseq
                   (_ZGraphicRaycaster'ignoreReversedGraphics x__)
                   (Control.DeepSeq.deepseq (_ZGraphicRaycaster'blockingObjects x__)
                      (())))
data ZGraphicRaycaster'BlockingObjects = ZGraphicRaycaster'UNKNOWN_BLOCKING_OBJECTS
                                       | ZGraphicRaycaster'NONE
                                       | ZGraphicRaycaster'TWO_D
                                       | ZGraphicRaycaster'THREE_D
                                       | ZGraphicRaycaster'ALL
                                       | ZGraphicRaycaster'BlockingObjects'Unrecognized !ZGraphicRaycaster'BlockingObjects'UnrecognizedValue
                                           deriving (Prelude.Show, Prelude.Eq, Prelude.Ord)
newtype ZGraphicRaycaster'BlockingObjects'UnrecognizedValue = ZGraphicRaycaster'BlockingObjects'UnrecognizedValue Data.Int.Int32
                                                                deriving (Prelude.Eq, Prelude.Ord,
                                                                          Prelude.Show)
instance Data.ProtoLens.MessageEnum
           ZGraphicRaycaster'BlockingObjects
         where
        maybeToEnum 0
          = Prelude.Just ZGraphicRaycaster'UNKNOWN_BLOCKING_OBJECTS
        maybeToEnum 1 = Prelude.Just ZGraphicRaycaster'NONE
        maybeToEnum 2 = Prelude.Just ZGraphicRaycaster'TWO_D
        maybeToEnum 3 = Prelude.Just ZGraphicRaycaster'THREE_D
        maybeToEnum 4 = Prelude.Just ZGraphicRaycaster'ALL
        maybeToEnum k
          = Prelude.Just
              (ZGraphicRaycaster'BlockingObjects'Unrecognized
                 (ZGraphicRaycaster'BlockingObjects'UnrecognizedValue
                    (Prelude.fromIntegral k)))
        showEnum ZGraphicRaycaster'UNKNOWN_BLOCKING_OBJECTS
          = "UNKNOWN_BLOCKING_OBJECTS"
        showEnum ZGraphicRaycaster'NONE = "NONE"
        showEnum ZGraphicRaycaster'TWO_D = "TWO_D"
        showEnum ZGraphicRaycaster'THREE_D = "THREE_D"
        showEnum ZGraphicRaycaster'ALL = "ALL"
        showEnum
          (ZGraphicRaycaster'BlockingObjects'Unrecognized
             (ZGraphicRaycaster'BlockingObjects'UnrecognizedValue k))
          = Prelude.show k
        readEnum "UNKNOWN_BLOCKING_OBJECTS"
          = Prelude.Just ZGraphicRaycaster'UNKNOWN_BLOCKING_OBJECTS
        readEnum "NONE" = Prelude.Just ZGraphicRaycaster'NONE
        readEnum "TWO_D" = Prelude.Just ZGraphicRaycaster'TWO_D
        readEnum "THREE_D" = Prelude.Just ZGraphicRaycaster'THREE_D
        readEnum "ALL" = Prelude.Just ZGraphicRaycaster'ALL
        readEnum k
          = (Prelude.>>=) (Text.Read.readMaybe k) Data.ProtoLens.maybeToEnum
instance Prelude.Bounded ZGraphicRaycaster'BlockingObjects where
        minBound = ZGraphicRaycaster'UNKNOWN_BLOCKING_OBJECTS
        maxBound = ZGraphicRaycaster'ALL
instance Prelude.Enum ZGraphicRaycaster'BlockingObjects where
        toEnum k__
          = Prelude.maybe
              (Prelude.error
                 ((Prelude.++) "toEnum: unknown value for enum BlockingObjects: "
                    (Prelude.show k__)))
              Prelude.id
              (Data.ProtoLens.maybeToEnum k__)
        fromEnum ZGraphicRaycaster'UNKNOWN_BLOCKING_OBJECTS = 0
        fromEnum ZGraphicRaycaster'NONE = 1
        fromEnum ZGraphicRaycaster'TWO_D = 2
        fromEnum ZGraphicRaycaster'THREE_D = 3
        fromEnum ZGraphicRaycaster'ALL = 4
        fromEnum
          (ZGraphicRaycaster'BlockingObjects'Unrecognized
             (ZGraphicRaycaster'BlockingObjects'UnrecognizedValue k))
          = Prelude.fromIntegral k
        succ ZGraphicRaycaster'ALL
          = Prelude.error
              "ZGraphicRaycaster'BlockingObjects.succ: bad argument ZGraphicRaycaster'ALL. This value would be out of bounds."
        succ ZGraphicRaycaster'UNKNOWN_BLOCKING_OBJECTS
          = ZGraphicRaycaster'NONE
        succ ZGraphicRaycaster'NONE = ZGraphicRaycaster'TWO_D
        succ ZGraphicRaycaster'TWO_D = ZGraphicRaycaster'THREE_D
        succ ZGraphicRaycaster'THREE_D = ZGraphicRaycaster'ALL
        succ _
          = Prelude.error
              "ZGraphicRaycaster'BlockingObjects.succ: bad argument: unrecognized value"
        pred ZGraphicRaycaster'UNKNOWN_BLOCKING_OBJECTS
          = Prelude.error
              "ZGraphicRaycaster'BlockingObjects.pred: bad argument ZGraphicRaycaster'UNKNOWN_BLOCKING_OBJECTS. This value would be out of bounds."
        pred ZGraphicRaycaster'NONE
          = ZGraphicRaycaster'UNKNOWN_BLOCKING_OBJECTS
        pred ZGraphicRaycaster'TWO_D = ZGraphicRaycaster'NONE
        pred ZGraphicRaycaster'THREE_D = ZGraphicRaycaster'TWO_D
        pred ZGraphicRaycaster'ALL = ZGraphicRaycaster'THREE_D
        pred _
          = Prelude.error
              "ZGraphicRaycaster'BlockingObjects.pred: bad argument: unrecognized value"
        enumFrom = Data.ProtoLens.Message.Enum.messageEnumFrom
        enumFromTo = Data.ProtoLens.Message.Enum.messageEnumFromTo
        enumFromThen = Data.ProtoLens.Message.Enum.messageEnumFromThen
        enumFromThenTo = Data.ProtoLens.Message.Enum.messageEnumFromThenTo
instance Data.ProtoLens.FieldDefault
           ZGraphicRaycaster'BlockingObjects
         where
        fieldDefault = ZGraphicRaycaster'UNKNOWN_BLOCKING_OBJECTS
instance Control.DeepSeq.NFData ZGraphicRaycaster'BlockingObjects
         where
        rnf x__ = Prelude.seq x__ (())
{- | Fields :

    * 'Proto.Data_Fields.sprite' @:: Lens' ZImage ZSprite@
    * 'Proto.Data_Fields.maybe'sprite' @:: Lens' ZImage (Prelude.Maybe ZSprite)@
    * 'Proto.Data_Fields.preserveAspect' @:: Lens' ZImage Proto.Google.Protobuf.Wrappers.BoolValue@
    * 'Proto.Data_Fields.maybe'preserveAspect' @:: Lens' ZImage
  (Prelude.Maybe Proto.Google.Protobuf.Wrappers.BoolValue)@
    * 'Proto.Data_Fields.fillCenter' @:: Lens' ZImage Proto.Google.Protobuf.Wrappers.BoolValue@
    * 'Proto.Data_Fields.maybe'fillCenter' @:: Lens' ZImage
  (Prelude.Maybe Proto.Google.Protobuf.Wrappers.BoolValue)@
 -}
data ZImage = ZImage{_ZImage'sprite :: !(Prelude.Maybe ZSprite),
                     _ZImage'preserveAspect ::
                     !(Prelude.Maybe Proto.Google.Protobuf.Wrappers.BoolValue),
                     _ZImage'fillCenter ::
                     !(Prelude.Maybe Proto.Google.Protobuf.Wrappers.BoolValue),
                     _ZImage'_unknownFields :: !Data.ProtoLens.FieldSet}
                deriving (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ZImage where
        showsPrec _ __x __s
          = Prelude.showChar '{'
              (Prelude.showString (Data.ProtoLens.showMessageShort __x)
                 (Prelude.showChar '}' __s))
instance Lens.Labels.HasLens' ZImage "sprite" (ZSprite) where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _ZImage'sprite
                 (\ x__ y__ -> x__{_ZImage'sprite = y__}))
              (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Lens.Labels.HasLens' ZImage "maybe'sprite"
           (Prelude.Maybe ZSprite)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _ZImage'sprite
                 (\ x__ y__ -> x__{_ZImage'sprite = y__}))
              Prelude.id
instance Lens.Labels.HasLens' ZImage "preserveAspect"
           (Proto.Google.Protobuf.Wrappers.BoolValue)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _ZImage'preserveAspect
                 (\ x__ y__ -> x__{_ZImage'preserveAspect = y__}))
              (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Lens.Labels.HasLens' ZImage "maybe'preserveAspect"
           (Prelude.Maybe Proto.Google.Protobuf.Wrappers.BoolValue)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _ZImage'preserveAspect
                 (\ x__ y__ -> x__{_ZImage'preserveAspect = y__}))
              Prelude.id
instance Lens.Labels.HasLens' ZImage "fillCenter"
           (Proto.Google.Protobuf.Wrappers.BoolValue)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _ZImage'fillCenter
                 (\ x__ y__ -> x__{_ZImage'fillCenter = y__}))
              (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Lens.Labels.HasLens' ZImage "maybe'fillCenter"
           (Prelude.Maybe Proto.Google.Protobuf.Wrappers.BoolValue)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _ZImage'fillCenter
                 (\ x__ y__ -> x__{_ZImage'fillCenter = y__}))
              Prelude.id
instance Data.ProtoLens.Message ZImage where
        messageName _ = Data.Text.pack "tarkin.data.ZImage"
        fieldsByTag
          = let sprite__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "sprite"
                      (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                         Data.ProtoLens.FieldTypeDescriptor ZSprite)
                      (Data.ProtoLens.OptionalField
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "maybe'sprite")))
                      :: Data.ProtoLens.FieldDescriptor ZImage
                preserveAspect__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "preserve_aspect"
                      (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                         Data.ProtoLens.FieldTypeDescriptor
                           Proto.Google.Protobuf.Wrappers.BoolValue)
                      (Data.ProtoLens.OptionalField
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) ::
                               (Lens.Labels.Proxy#) "maybe'preserveAspect")))
                      :: Data.ProtoLens.FieldDescriptor ZImage
                fillCenter__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "fill_center"
                      (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                         Data.ProtoLens.FieldTypeDescriptor
                           Proto.Google.Protobuf.Wrappers.BoolValue)
                      (Data.ProtoLens.OptionalField
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "maybe'fillCenter")))
                      :: Data.ProtoLens.FieldDescriptor ZImage
              in
              Data.Map.fromList
                [(Data.ProtoLens.Tag 1, sprite__field_descriptor),
                 (Data.ProtoLens.Tag 2, preserveAspect__field_descriptor),
                 (Data.ProtoLens.Tag 3, fillCenter__field_descriptor)]
        unknownFields
          = Lens.Family2.Unchecked.lens _ZImage'_unknownFields
              (\ x__ y__ -> x__{_ZImage'_unknownFields = y__})
        defMessage
          = ZImage{_ZImage'sprite = Prelude.Nothing,
                   _ZImage'preserveAspect = Prelude.Nothing,
                   _ZImage'fillCenter = Prelude.Nothing,
                   _ZImage'_unknownFields = ([])}
instance Control.DeepSeq.NFData ZImage where
        rnf
          = \ x__ ->
              Control.DeepSeq.deepseq (_ZImage'_unknownFields x__)
                (Control.DeepSeq.deepseq (_ZImage'sprite x__)
                   (Control.DeepSeq.deepseq (_ZImage'preserveAspect x__)
                      (Control.DeepSeq.deepseq (_ZImage'fillCenter x__) (()))))
{- | Fields :

    * 'Proto.Data_Fields.maskable' @:: Lens' ZMaskableGraphic Proto.Google.Protobuf.Wrappers.BoolValue@
    * 'Proto.Data_Fields.maybe'maskable' @:: Lens' ZMaskableGraphic
  (Prelude.Maybe Proto.Google.Protobuf.Wrappers.BoolValue)@
    * 'Proto.Data_Fields.maybe'maskableGraphic' @:: Lens' ZMaskableGraphic
  (Prelude.Maybe ZMaskableGraphic'MaskableGraphic)@
    * 'Proto.Data_Fields.maybe'image' @:: Lens' ZMaskableGraphic (Prelude.Maybe ZImage)@
    * 'Proto.Data_Fields.image' @:: Lens' ZMaskableGraphic ZImage@
    * 'Proto.Data_Fields.maybe'text' @:: Lens' ZMaskableGraphic (Prelude.Maybe ZText)@
    * 'Proto.Data_Fields.text' @:: Lens' ZMaskableGraphic ZText@
 -}
data ZMaskableGraphic = ZMaskableGraphic{_ZMaskableGraphic'maskable
                                         ::
                                         !(Prelude.Maybe Proto.Google.Protobuf.Wrappers.BoolValue),
                                         _ZMaskableGraphic'maskableGraphic ::
                                         !(Prelude.Maybe ZMaskableGraphic'MaskableGraphic),
                                         _ZMaskableGraphic'_unknownFields ::
                                         !Data.ProtoLens.FieldSet}
                          deriving (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ZMaskableGraphic where
        showsPrec _ __x __s
          = Prelude.showChar '{'
              (Prelude.showString (Data.ProtoLens.showMessageShort __x)
                 (Prelude.showChar '}' __s))
data ZMaskableGraphic'MaskableGraphic = ZMaskableGraphic'Image !ZImage
                                      | ZMaskableGraphic'Text !ZText
                                          deriving (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Lens.Labels.HasLens' ZMaskableGraphic "maskable"
           (Proto.Google.Protobuf.Wrappers.BoolValue)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _ZMaskableGraphic'maskable
                 (\ x__ y__ -> x__{_ZMaskableGraphic'maskable = y__}))
              (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Lens.Labels.HasLens' ZMaskableGraphic "maybe'maskable"
           (Prelude.Maybe Proto.Google.Protobuf.Wrappers.BoolValue)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _ZMaskableGraphic'maskable
                 (\ x__ y__ -> x__{_ZMaskableGraphic'maskable = y__}))
              Prelude.id
instance Lens.Labels.HasLens' ZMaskableGraphic
           "maybe'maskableGraphic"
           (Prelude.Maybe ZMaskableGraphic'MaskableGraphic)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _ZMaskableGraphic'maskableGraphic
                 (\ x__ y__ -> x__{_ZMaskableGraphic'maskableGraphic = y__}))
              Prelude.id
instance Lens.Labels.HasLens' ZMaskableGraphic "maybe'image"
           (Prelude.Maybe ZImage)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _ZMaskableGraphic'maskableGraphic
                 (\ x__ y__ -> x__{_ZMaskableGraphic'maskableGraphic = y__}))
              (Lens.Family2.Unchecked.lens
                 (\ x__ ->
                    case x__ of
                        Prelude.Just (ZMaskableGraphic'Image x__val) -> Prelude.Just x__val
                        _otherwise -> Prelude.Nothing)
                 (\ _ y__ -> Prelude.fmap ZMaskableGraphic'Image y__))
instance Lens.Labels.HasLens' ZMaskableGraphic "image" (ZImage)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _ZMaskableGraphic'maskableGraphic
                 (\ x__ y__ -> x__{_ZMaskableGraphic'maskableGraphic = y__}))
              ((Prelude..)
                 (Lens.Family2.Unchecked.lens
                    (\ x__ ->
                       case x__ of
                           Prelude.Just (ZMaskableGraphic'Image x__val) -> Prelude.Just x__val
                           _otherwise -> Prelude.Nothing)
                    (\ _ y__ -> Prelude.fmap ZMaskableGraphic'Image y__))
                 (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Lens.Labels.HasLens' ZMaskableGraphic "maybe'text"
           (Prelude.Maybe ZText)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _ZMaskableGraphic'maskableGraphic
                 (\ x__ y__ -> x__{_ZMaskableGraphic'maskableGraphic = y__}))
              (Lens.Family2.Unchecked.lens
                 (\ x__ ->
                    case x__ of
                        Prelude.Just (ZMaskableGraphic'Text x__val) -> Prelude.Just x__val
                        _otherwise -> Prelude.Nothing)
                 (\ _ y__ -> Prelude.fmap ZMaskableGraphic'Text y__))
instance Lens.Labels.HasLens' ZMaskableGraphic "text" (ZText) where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _ZMaskableGraphic'maskableGraphic
                 (\ x__ y__ -> x__{_ZMaskableGraphic'maskableGraphic = y__}))
              ((Prelude..)
                 (Lens.Family2.Unchecked.lens
                    (\ x__ ->
                       case x__ of
                           Prelude.Just (ZMaskableGraphic'Text x__val) -> Prelude.Just x__val
                           _otherwise -> Prelude.Nothing)
                    (\ _ y__ -> Prelude.fmap ZMaskableGraphic'Text y__))
                 (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Message ZMaskableGraphic where
        messageName _ = Data.Text.pack "tarkin.data.ZMaskableGraphic"
        fieldsByTag
          = let maskable__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "maskable"
                      (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                         Data.ProtoLens.FieldTypeDescriptor
                           Proto.Google.Protobuf.Wrappers.BoolValue)
                      (Data.ProtoLens.OptionalField
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "maybe'maskable")))
                      :: Data.ProtoLens.FieldDescriptor ZMaskableGraphic
                image__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "image"
                      (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                         Data.ProtoLens.FieldTypeDescriptor ZImage)
                      (Data.ProtoLens.OptionalField
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "maybe'image")))
                      :: Data.ProtoLens.FieldDescriptor ZMaskableGraphic
                text__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "text"
                      (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                         Data.ProtoLens.FieldTypeDescriptor ZText)
                      (Data.ProtoLens.OptionalField
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "maybe'text")))
                      :: Data.ProtoLens.FieldDescriptor ZMaskableGraphic
              in
              Data.Map.fromList
                [(Data.ProtoLens.Tag 3, maskable__field_descriptor),
                 (Data.ProtoLens.Tag 1, image__field_descriptor),
                 (Data.ProtoLens.Tag 2, text__field_descriptor)]
        unknownFields
          = Lens.Family2.Unchecked.lens _ZMaskableGraphic'_unknownFields
              (\ x__ y__ -> x__{_ZMaskableGraphic'_unknownFields = y__})
        defMessage
          = ZMaskableGraphic{_ZMaskableGraphic'maskable = Prelude.Nothing,
                             _ZMaskableGraphic'maskableGraphic = Prelude.Nothing,
                             _ZMaskableGraphic'_unknownFields = ([])}
instance Control.DeepSeq.NFData ZMaskableGraphic where
        rnf
          = \ x__ ->
              Control.DeepSeq.deepseq (_ZMaskableGraphic'_unknownFields x__)
                (Control.DeepSeq.deepseq (_ZMaskableGraphic'maskable x__)
                   (Control.DeepSeq.deepseq (_ZMaskableGraphic'maskableGraphic x__)
                      (())))
instance Control.DeepSeq.NFData ZMaskableGraphic'MaskableGraphic
         where
        rnf (ZMaskableGraphic'Image x__) = Control.DeepSeq.rnf x__
        rnf (ZMaskableGraphic'Text x__) = Control.DeepSeq.rnf x__
_ZMaskableGraphic'Image ::
                        Lens.Labels.Prism.Prism' ZMaskableGraphic'MaskableGraphic ZImage
_ZMaskableGraphic'Image
  = Lens.Labels.Prism.prism' ZMaskableGraphic'Image
      (\ p__ ->
         case p__ of
             ZMaskableGraphic'Image p__val -> Prelude.Just p__val
             _otherwise -> Prelude.Nothing)
_ZMaskableGraphic'Text ::
                       Lens.Labels.Prism.Prism' ZMaskableGraphic'MaskableGraphic ZText
_ZMaskableGraphic'Text
  = Lens.Labels.Prism.prism' ZMaskableGraphic'Text
      (\ p__ ->
         case p__ of
             ZMaskableGraphic'Text p__val -> Prelude.Just p__val
             _otherwise -> Prelude.Nothing)
{- | Fields :

    * 'Proto.Data_Fields.materialId' @:: Lens' ZMaterial Data.Word.Word32@
 -}
data ZMaterial = ZMaterial{_ZMaterial'materialId ::
                           !Data.Word.Word32,
                           _ZMaterial'_unknownFields :: !Data.ProtoLens.FieldSet}
                   deriving (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ZMaterial where
        showsPrec _ __x __s
          = Prelude.showChar '{'
              (Prelude.showString (Data.ProtoLens.showMessageShort __x)
                 (Prelude.showChar '}' __s))
instance Lens.Labels.HasLens' ZMaterial "materialId"
           (Data.Word.Word32)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _ZMaterial'materialId
                 (\ x__ y__ -> x__{_ZMaterial'materialId = y__}))
              Prelude.id
instance Data.ProtoLens.Message ZMaterial where
        messageName _ = Data.Text.pack "tarkin.data.ZMaterial"
        fieldsByTag
          = let materialId__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "material_id"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "materialId")))
                      :: Data.ProtoLens.FieldDescriptor ZMaterial
              in
              Data.Map.fromList
                [(Data.ProtoLens.Tag 1, materialId__field_descriptor)]
        unknownFields
          = Lens.Family2.Unchecked.lens _ZMaterial'_unknownFields
              (\ x__ y__ -> x__{_ZMaterial'_unknownFields = y__})
        defMessage
          = ZMaterial{_ZMaterial'materialId = Data.ProtoLens.fieldDefault,
                      _ZMaterial'_unknownFields = ([])}
instance Control.DeepSeq.NFData ZMaterial where
        rnf
          = \ x__ ->
              Control.DeepSeq.deepseq (_ZMaterial'_unknownFields x__)
                (Control.DeepSeq.deepseq (_ZMaterial'materialId x__) (()))
{- | Fields :

    * 'Proto.Data_Fields.prefabId' @:: Lens' ZPrefab Data.Word.Word32@
 -}
data ZPrefab = ZPrefab{_ZPrefab'prefabId :: !Data.Word.Word32,
                       _ZPrefab'_unknownFields :: !Data.ProtoLens.FieldSet}
                 deriving (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ZPrefab where
        showsPrec _ __x __s
          = Prelude.showChar '{'
              (Prelude.showString (Data.ProtoLens.showMessageShort __x)
                 (Prelude.showChar '}' __s))
instance Lens.Labels.HasLens' ZPrefab "prefabId" (Data.Word.Word32)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _ZPrefab'prefabId
                 (\ x__ y__ -> x__{_ZPrefab'prefabId = y__}))
              Prelude.id
instance Data.ProtoLens.Message ZPrefab where
        messageName _ = Data.Text.pack "tarkin.data.ZPrefab"
        fieldsByTag
          = let prefabId__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "prefab_id"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "prefabId")))
                      :: Data.ProtoLens.FieldDescriptor ZPrefab
              in
              Data.Map.fromList
                [(Data.ProtoLens.Tag 1, prefabId__field_descriptor)]
        unknownFields
          = Lens.Family2.Unchecked.lens _ZPrefab'_unknownFields
              (\ x__ y__ -> x__{_ZPrefab'_unknownFields = y__})
        defMessage
          = ZPrefab{_ZPrefab'prefabId = Data.ProtoLens.fieldDefault,
                    _ZPrefab'_unknownFields = ([])}
instance Control.DeepSeq.NFData ZPrefab where
        rnf
          = \ x__ ->
              Control.DeepSeq.deepseq (_ZPrefab'_unknownFields x__)
                (Control.DeepSeq.deepseq (_ZPrefab'prefabId x__) (()))
{- | Fields :

    * 'Proto.Data_Fields.sizeDelta' @:: Lens' ZRectTransform ZVector2@
    * 'Proto.Data_Fields.maybe'sizeDelta' @:: Lens' ZRectTransform (Prelude.Maybe ZVector2)@
    * 'Proto.Data_Fields.anchorMin' @:: Lens' ZRectTransform ZVector2@
    * 'Proto.Data_Fields.maybe'anchorMin' @:: Lens' ZRectTransform (Prelude.Maybe ZVector2)@
    * 'Proto.Data_Fields.anchorMax' @:: Lens' ZRectTransform ZVector2@
    * 'Proto.Data_Fields.maybe'anchorMax' @:: Lens' ZRectTransform (Prelude.Maybe ZVector2)@
    * 'Proto.Data_Fields.pivot' @:: Lens' ZRectTransform ZVector2@
    * 'Proto.Data_Fields.maybe'pivot' @:: Lens' ZRectTransform (Prelude.Maybe ZVector2)@
 -}
data ZRectTransform = ZRectTransform{_ZRectTransform'sizeDelta ::
                                     !(Prelude.Maybe ZVector2),
                                     _ZRectTransform'anchorMin :: !(Prelude.Maybe ZVector2),
                                     _ZRectTransform'anchorMax :: !(Prelude.Maybe ZVector2),
                                     _ZRectTransform'pivot :: !(Prelude.Maybe ZVector2),
                                     _ZRectTransform'_unknownFields :: !Data.ProtoLens.FieldSet}
                        deriving (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ZRectTransform where
        showsPrec _ __x __s
          = Prelude.showChar '{'
              (Prelude.showString (Data.ProtoLens.showMessageShort __x)
                 (Prelude.showChar '}' __s))
instance Lens.Labels.HasLens' ZRectTransform "sizeDelta" (ZVector2)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _ZRectTransform'sizeDelta
                 (\ x__ y__ -> x__{_ZRectTransform'sizeDelta = y__}))
              (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Lens.Labels.HasLens' ZRectTransform "maybe'sizeDelta"
           (Prelude.Maybe ZVector2)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _ZRectTransform'sizeDelta
                 (\ x__ y__ -> x__{_ZRectTransform'sizeDelta = y__}))
              Prelude.id
instance Lens.Labels.HasLens' ZRectTransform "anchorMin" (ZVector2)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _ZRectTransform'anchorMin
                 (\ x__ y__ -> x__{_ZRectTransform'anchorMin = y__}))
              (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Lens.Labels.HasLens' ZRectTransform "maybe'anchorMin"
           (Prelude.Maybe ZVector2)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _ZRectTransform'anchorMin
                 (\ x__ y__ -> x__{_ZRectTransform'anchorMin = y__}))
              Prelude.id
instance Lens.Labels.HasLens' ZRectTransform "anchorMax" (ZVector2)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _ZRectTransform'anchorMax
                 (\ x__ y__ -> x__{_ZRectTransform'anchorMax = y__}))
              (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Lens.Labels.HasLens' ZRectTransform "maybe'anchorMax"
           (Prelude.Maybe ZVector2)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _ZRectTransform'anchorMax
                 (\ x__ y__ -> x__{_ZRectTransform'anchorMax = y__}))
              Prelude.id
instance Lens.Labels.HasLens' ZRectTransform "pivot" (ZVector2)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _ZRectTransform'pivot
                 (\ x__ y__ -> x__{_ZRectTransform'pivot = y__}))
              (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Lens.Labels.HasLens' ZRectTransform "maybe'pivot"
           (Prelude.Maybe ZVector2)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _ZRectTransform'pivot
                 (\ x__ y__ -> x__{_ZRectTransform'pivot = y__}))
              Prelude.id
instance Data.ProtoLens.Message ZRectTransform where
        messageName _ = Data.Text.pack "tarkin.data.ZRectTransform"
        fieldsByTag
          = let sizeDelta__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "size_delta"
                      (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                         Data.ProtoLens.FieldTypeDescriptor ZVector2)
                      (Data.ProtoLens.OptionalField
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "maybe'sizeDelta")))
                      :: Data.ProtoLens.FieldDescriptor ZRectTransform
                anchorMin__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "anchor_min"
                      (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                         Data.ProtoLens.FieldTypeDescriptor ZVector2)
                      (Data.ProtoLens.OptionalField
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "maybe'anchorMin")))
                      :: Data.ProtoLens.FieldDescriptor ZRectTransform
                anchorMax__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "anchor_max"
                      (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                         Data.ProtoLens.FieldTypeDescriptor ZVector2)
                      (Data.ProtoLens.OptionalField
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "maybe'anchorMax")))
                      :: Data.ProtoLens.FieldDescriptor ZRectTransform
                pivot__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "pivot"
                      (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                         Data.ProtoLens.FieldTypeDescriptor ZVector2)
                      (Data.ProtoLens.OptionalField
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "maybe'pivot")))
                      :: Data.ProtoLens.FieldDescriptor ZRectTransform
              in
              Data.Map.fromList
                [(Data.ProtoLens.Tag 1, sizeDelta__field_descriptor),
                 (Data.ProtoLens.Tag 2, anchorMin__field_descriptor),
                 (Data.ProtoLens.Tag 3, anchorMax__field_descriptor),
                 (Data.ProtoLens.Tag 4, pivot__field_descriptor)]
        unknownFields
          = Lens.Family2.Unchecked.lens _ZRectTransform'_unknownFields
              (\ x__ y__ -> x__{_ZRectTransform'_unknownFields = y__})
        defMessage
          = ZRectTransform{_ZRectTransform'sizeDelta = Prelude.Nothing,
                           _ZRectTransform'anchorMin = Prelude.Nothing,
                           _ZRectTransform'anchorMax = Prelude.Nothing,
                           _ZRectTransform'pivot = Prelude.Nothing,
                           _ZRectTransform'_unknownFields = ([])}
instance Control.DeepSeq.NFData ZRectTransform where
        rnf
          = \ x__ ->
              Control.DeepSeq.deepseq (_ZRectTransform'_unknownFields x__)
                (Control.DeepSeq.deepseq (_ZRectTransform'sizeDelta x__)
                   (Control.DeepSeq.deepseq (_ZRectTransform'anchorMin x__)
                      (Control.DeepSeq.deepseq (_ZRectTransform'anchorMax x__)
                         (Control.DeepSeq.deepseq (_ZRectTransform'pivot x__) (())))))
data ZRenderMode = UNKNOWN_RENDER_MODE
                 | SCREEN_SPACE_OVERLAY
                 | SCREEN_SPACE_CAMERA
                 | WORLD_SPACE
                 | ZRenderMode'Unrecognized !ZRenderMode'UnrecognizedValue
                     deriving (Prelude.Show, Prelude.Eq, Prelude.Ord)
newtype ZRenderMode'UnrecognizedValue = ZRenderMode'UnrecognizedValue Data.Int.Int32
                                          deriving (Prelude.Eq, Prelude.Ord, Prelude.Show)
instance Data.ProtoLens.MessageEnum ZRenderMode where
        maybeToEnum 0 = Prelude.Just UNKNOWN_RENDER_MODE
        maybeToEnum 1 = Prelude.Just SCREEN_SPACE_OVERLAY
        maybeToEnum 2 = Prelude.Just SCREEN_SPACE_CAMERA
        maybeToEnum 3 = Prelude.Just WORLD_SPACE
        maybeToEnum k
          = Prelude.Just
              (ZRenderMode'Unrecognized
                 (ZRenderMode'UnrecognizedValue (Prelude.fromIntegral k)))
        showEnum UNKNOWN_RENDER_MODE = "UNKNOWN_RENDER_MODE"
        showEnum SCREEN_SPACE_OVERLAY = "SCREEN_SPACE_OVERLAY"
        showEnum SCREEN_SPACE_CAMERA = "SCREEN_SPACE_CAMERA"
        showEnum WORLD_SPACE = "WORLD_SPACE"
        showEnum
          (ZRenderMode'Unrecognized (ZRenderMode'UnrecognizedValue k))
          = Prelude.show k
        readEnum "UNKNOWN_RENDER_MODE" = Prelude.Just UNKNOWN_RENDER_MODE
        readEnum "SCREEN_SPACE_OVERLAY" = Prelude.Just SCREEN_SPACE_OVERLAY
        readEnum "SCREEN_SPACE_CAMERA" = Prelude.Just SCREEN_SPACE_CAMERA
        readEnum "WORLD_SPACE" = Prelude.Just WORLD_SPACE
        readEnum k
          = (Prelude.>>=) (Text.Read.readMaybe k) Data.ProtoLens.maybeToEnum
instance Prelude.Bounded ZRenderMode where
        minBound = UNKNOWN_RENDER_MODE
        maxBound = WORLD_SPACE
instance Prelude.Enum ZRenderMode where
        toEnum k__
          = Prelude.maybe
              (Prelude.error
                 ((Prelude.++) "toEnum: unknown value for enum ZRenderMode: "
                    (Prelude.show k__)))
              Prelude.id
              (Data.ProtoLens.maybeToEnum k__)
        fromEnum UNKNOWN_RENDER_MODE = 0
        fromEnum SCREEN_SPACE_OVERLAY = 1
        fromEnum SCREEN_SPACE_CAMERA = 2
        fromEnum WORLD_SPACE = 3
        fromEnum
          (ZRenderMode'Unrecognized (ZRenderMode'UnrecognizedValue k))
          = Prelude.fromIntegral k
        succ WORLD_SPACE
          = Prelude.error
              "ZRenderMode.succ: bad argument WORLD_SPACE. This value would be out of bounds."
        succ UNKNOWN_RENDER_MODE = SCREEN_SPACE_OVERLAY
        succ SCREEN_SPACE_OVERLAY = SCREEN_SPACE_CAMERA
        succ SCREEN_SPACE_CAMERA = WORLD_SPACE
        succ _
          = Prelude.error
              "ZRenderMode.succ: bad argument: unrecognized value"
        pred UNKNOWN_RENDER_MODE
          = Prelude.error
              "ZRenderMode.pred: bad argument UNKNOWN_RENDER_MODE. This value would be out of bounds."
        pred SCREEN_SPACE_OVERLAY = UNKNOWN_RENDER_MODE
        pred SCREEN_SPACE_CAMERA = SCREEN_SPACE_OVERLAY
        pred WORLD_SPACE = SCREEN_SPACE_CAMERA
        pred _
          = Prelude.error
              "ZRenderMode.pred: bad argument: unrecognized value"
        enumFrom = Data.ProtoLens.Message.Enum.messageEnumFrom
        enumFromTo = Data.ProtoLens.Message.Enum.messageEnumFromTo
        enumFromThen = Data.ProtoLens.Message.Enum.messageEnumFromThen
        enumFromThenTo = Data.ProtoLens.Message.Enum.messageEnumFromThenTo
instance Data.ProtoLens.FieldDefault ZRenderMode where
        fieldDefault = UNKNOWN_RENDER_MODE
instance Control.DeepSeq.NFData ZRenderMode where
        rnf x__ = Prelude.seq x__ (())
{- | Fields :

    * 'Proto.Data_Fields.spriteId' @:: Lens' ZSprite Data.Word.Word32@
 -}
data ZSprite = ZSprite{_ZSprite'spriteId :: !Data.Word.Word32,
                       _ZSprite'_unknownFields :: !Data.ProtoLens.FieldSet}
                 deriving (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ZSprite where
        showsPrec _ __x __s
          = Prelude.showChar '{'
              (Prelude.showString (Data.ProtoLens.showMessageShort __x)
                 (Prelude.showChar '}' __s))
instance Lens.Labels.HasLens' ZSprite "spriteId" (Data.Word.Word32)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _ZSprite'spriteId
                 (\ x__ y__ -> x__{_ZSprite'spriteId = y__}))
              Prelude.id
instance Data.ProtoLens.Message ZSprite where
        messageName _ = Data.Text.pack "tarkin.data.ZSprite"
        fieldsByTag
          = let spriteId__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "sprite_id"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "spriteId")))
                      :: Data.ProtoLens.FieldDescriptor ZSprite
              in
              Data.Map.fromList
                [(Data.ProtoLens.Tag 1, spriteId__field_descriptor)]
        unknownFields
          = Lens.Family2.Unchecked.lens _ZSprite'_unknownFields
              (\ x__ y__ -> x__{_ZSprite'_unknownFields = y__})
        defMessage
          = ZSprite{_ZSprite'spriteId = Data.ProtoLens.fieldDefault,
                    _ZSprite'_unknownFields = ([])}
instance Control.DeepSeq.NFData ZSprite where
        rnf
          = \ x__ ->
              Control.DeepSeq.deepseq (_ZSprite'_unknownFields x__)
                (Control.DeepSeq.deepseq (_ZSprite'spriteId x__) (()))
{- | Fields :

    * 'Proto.Data_Fields.horizontalAxis' @:: Lens' ZStandaloneInputModule
  Proto.Google.Protobuf.Wrappers.StringValue@
    * 'Proto.Data_Fields.maybe'horizontalAxis' @:: Lens' ZStandaloneInputModule
  (Prelude.Maybe Proto.Google.Protobuf.Wrappers.StringValue)@
    * 'Proto.Data_Fields.verticalAxis' @:: Lens' ZStandaloneInputModule
  Proto.Google.Protobuf.Wrappers.StringValue@
    * 'Proto.Data_Fields.maybe'verticalAxis' @:: Lens' ZStandaloneInputModule
  (Prelude.Maybe Proto.Google.Protobuf.Wrappers.StringValue)@
    * 'Proto.Data_Fields.submitButton' @:: Lens' ZStandaloneInputModule
  Proto.Google.Protobuf.Wrappers.StringValue@
    * 'Proto.Data_Fields.maybe'submitButton' @:: Lens' ZStandaloneInputModule
  (Prelude.Maybe Proto.Google.Protobuf.Wrappers.StringValue)@
    * 'Proto.Data_Fields.cancelButton' @:: Lens' ZStandaloneInputModule
  Proto.Google.Protobuf.Wrappers.StringValue@
    * 'Proto.Data_Fields.maybe'cancelButton' @:: Lens' ZStandaloneInputModule
  (Prelude.Maybe Proto.Google.Protobuf.Wrappers.StringValue)@
    * 'Proto.Data_Fields.inputActionsPerSecond' @:: Lens' ZStandaloneInputModule
  Proto.Google.Protobuf.Wrappers.FloatValue@
    * 'Proto.Data_Fields.maybe'inputActionsPerSecond' @:: Lens' ZStandaloneInputModule
  (Prelude.Maybe Proto.Google.Protobuf.Wrappers.FloatValue)@
    * 'Proto.Data_Fields.repeatDelay' @:: Lens' ZStandaloneInputModule
  Proto.Google.Protobuf.Wrappers.FloatValue@
    * 'Proto.Data_Fields.maybe'repeatDelay' @:: Lens' ZStandaloneInputModule
  (Prelude.Maybe Proto.Google.Protobuf.Wrappers.FloatValue)@
    * 'Proto.Data_Fields.forceModuleActive' @:: Lens' ZStandaloneInputModule
  Proto.Google.Protobuf.Wrappers.BoolValue@
    * 'Proto.Data_Fields.maybe'forceModuleActive' @:: Lens' ZStandaloneInputModule
  (Prelude.Maybe Proto.Google.Protobuf.Wrappers.BoolValue)@
 -}
data ZStandaloneInputModule = ZStandaloneInputModule{_ZStandaloneInputModule'horizontalAxis
                                                     ::
                                                     !(Prelude.Maybe
                                                         Proto.Google.Protobuf.Wrappers.StringValue),
                                                     _ZStandaloneInputModule'verticalAxis ::
                                                     !(Prelude.Maybe
                                                         Proto.Google.Protobuf.Wrappers.StringValue),
                                                     _ZStandaloneInputModule'submitButton ::
                                                     !(Prelude.Maybe
                                                         Proto.Google.Protobuf.Wrappers.StringValue),
                                                     _ZStandaloneInputModule'cancelButton ::
                                                     !(Prelude.Maybe
                                                         Proto.Google.Protobuf.Wrappers.StringValue),
                                                     _ZStandaloneInputModule'inputActionsPerSecond
                                                     ::
                                                     !(Prelude.Maybe
                                                         Proto.Google.Protobuf.Wrappers.FloatValue),
                                                     _ZStandaloneInputModule'repeatDelay ::
                                                     !(Prelude.Maybe
                                                         Proto.Google.Protobuf.Wrappers.FloatValue),
                                                     _ZStandaloneInputModule'forceModuleActive ::
                                                     !(Prelude.Maybe
                                                         Proto.Google.Protobuf.Wrappers.BoolValue),
                                                     _ZStandaloneInputModule'_unknownFields ::
                                                     !Data.ProtoLens.FieldSet}
                                deriving (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ZStandaloneInputModule where
        showsPrec _ __x __s
          = Prelude.showChar '{'
              (Prelude.showString (Data.ProtoLens.showMessageShort __x)
                 (Prelude.showChar '}' __s))
instance Lens.Labels.HasLens' ZStandaloneInputModule
           "horizontalAxis"
           (Proto.Google.Protobuf.Wrappers.StringValue)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _ZStandaloneInputModule'horizontalAxis
                 (\ x__ y__ -> x__{_ZStandaloneInputModule'horizontalAxis = y__}))
              (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Lens.Labels.HasLens' ZStandaloneInputModule
           "maybe'horizontalAxis"
           (Prelude.Maybe Proto.Google.Protobuf.Wrappers.StringValue)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _ZStandaloneInputModule'horizontalAxis
                 (\ x__ y__ -> x__{_ZStandaloneInputModule'horizontalAxis = y__}))
              Prelude.id
instance Lens.Labels.HasLens' ZStandaloneInputModule "verticalAxis"
           (Proto.Google.Protobuf.Wrappers.StringValue)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _ZStandaloneInputModule'verticalAxis
                 (\ x__ y__ -> x__{_ZStandaloneInputModule'verticalAxis = y__}))
              (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Lens.Labels.HasLens' ZStandaloneInputModule
           "maybe'verticalAxis"
           (Prelude.Maybe Proto.Google.Protobuf.Wrappers.StringValue)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _ZStandaloneInputModule'verticalAxis
                 (\ x__ y__ -> x__{_ZStandaloneInputModule'verticalAxis = y__}))
              Prelude.id
instance Lens.Labels.HasLens' ZStandaloneInputModule "submitButton"
           (Proto.Google.Protobuf.Wrappers.StringValue)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _ZStandaloneInputModule'submitButton
                 (\ x__ y__ -> x__{_ZStandaloneInputModule'submitButton = y__}))
              (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Lens.Labels.HasLens' ZStandaloneInputModule
           "maybe'submitButton"
           (Prelude.Maybe Proto.Google.Protobuf.Wrappers.StringValue)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _ZStandaloneInputModule'submitButton
                 (\ x__ y__ -> x__{_ZStandaloneInputModule'submitButton = y__}))
              Prelude.id
instance Lens.Labels.HasLens' ZStandaloneInputModule "cancelButton"
           (Proto.Google.Protobuf.Wrappers.StringValue)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _ZStandaloneInputModule'cancelButton
                 (\ x__ y__ -> x__{_ZStandaloneInputModule'cancelButton = y__}))
              (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Lens.Labels.HasLens' ZStandaloneInputModule
           "maybe'cancelButton"
           (Prelude.Maybe Proto.Google.Protobuf.Wrappers.StringValue)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _ZStandaloneInputModule'cancelButton
                 (\ x__ y__ -> x__{_ZStandaloneInputModule'cancelButton = y__}))
              Prelude.id
instance Lens.Labels.HasLens' ZStandaloneInputModule
           "inputActionsPerSecond"
           (Proto.Google.Protobuf.Wrappers.FloatValue)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens
                 _ZStandaloneInputModule'inputActionsPerSecond
                 (\ x__ y__ ->
                    x__{_ZStandaloneInputModule'inputActionsPerSecond = y__}))
              (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Lens.Labels.HasLens' ZStandaloneInputModule
           "maybe'inputActionsPerSecond"
           (Prelude.Maybe Proto.Google.Protobuf.Wrappers.FloatValue)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens
                 _ZStandaloneInputModule'inputActionsPerSecond
                 (\ x__ y__ ->
                    x__{_ZStandaloneInputModule'inputActionsPerSecond = y__}))
              Prelude.id
instance Lens.Labels.HasLens' ZStandaloneInputModule "repeatDelay"
           (Proto.Google.Protobuf.Wrappers.FloatValue)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _ZStandaloneInputModule'repeatDelay
                 (\ x__ y__ -> x__{_ZStandaloneInputModule'repeatDelay = y__}))
              (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Lens.Labels.HasLens' ZStandaloneInputModule
           "maybe'repeatDelay"
           (Prelude.Maybe Proto.Google.Protobuf.Wrappers.FloatValue)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _ZStandaloneInputModule'repeatDelay
                 (\ x__ y__ -> x__{_ZStandaloneInputModule'repeatDelay = y__}))
              Prelude.id
instance Lens.Labels.HasLens' ZStandaloneInputModule
           "forceModuleActive"
           (Proto.Google.Protobuf.Wrappers.BoolValue)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens
                 _ZStandaloneInputModule'forceModuleActive
                 (\ x__ y__ ->
                    x__{_ZStandaloneInputModule'forceModuleActive = y__}))
              (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Lens.Labels.HasLens' ZStandaloneInputModule
           "maybe'forceModuleActive"
           (Prelude.Maybe Proto.Google.Protobuf.Wrappers.BoolValue)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens
                 _ZStandaloneInputModule'forceModuleActive
                 (\ x__ y__ ->
                    x__{_ZStandaloneInputModule'forceModuleActive = y__}))
              Prelude.id
instance Data.ProtoLens.Message ZStandaloneInputModule where
        messageName _ = Data.Text.pack "tarkin.data.ZStandaloneInputModule"
        fieldsByTag
          = let horizontalAxis__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "horizontal_axis"
                      (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                         Data.ProtoLens.FieldTypeDescriptor
                           Proto.Google.Protobuf.Wrappers.StringValue)
                      (Data.ProtoLens.OptionalField
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) ::
                               (Lens.Labels.Proxy#) "maybe'horizontalAxis")))
                      :: Data.ProtoLens.FieldDescriptor ZStandaloneInputModule
                verticalAxis__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "vertical_axis"
                      (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                         Data.ProtoLens.FieldTypeDescriptor
                           Proto.Google.Protobuf.Wrappers.StringValue)
                      (Data.ProtoLens.OptionalField
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) ::
                               (Lens.Labels.Proxy#) "maybe'verticalAxis")))
                      :: Data.ProtoLens.FieldDescriptor ZStandaloneInputModule
                submitButton__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "submit_button"
                      (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                         Data.ProtoLens.FieldTypeDescriptor
                           Proto.Google.Protobuf.Wrappers.StringValue)
                      (Data.ProtoLens.OptionalField
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) ::
                               (Lens.Labels.Proxy#) "maybe'submitButton")))
                      :: Data.ProtoLens.FieldDescriptor ZStandaloneInputModule
                cancelButton__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "cancel_button"
                      (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                         Data.ProtoLens.FieldTypeDescriptor
                           Proto.Google.Protobuf.Wrappers.StringValue)
                      (Data.ProtoLens.OptionalField
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) ::
                               (Lens.Labels.Proxy#) "maybe'cancelButton")))
                      :: Data.ProtoLens.FieldDescriptor ZStandaloneInputModule
                inputActionsPerSecond__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "input_actions_per_second"
                      (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                         Data.ProtoLens.FieldTypeDescriptor
                           Proto.Google.Protobuf.Wrappers.FloatValue)
                      (Data.ProtoLens.OptionalField
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) ::
                               (Lens.Labels.Proxy#) "maybe'inputActionsPerSecond")))
                      :: Data.ProtoLens.FieldDescriptor ZStandaloneInputModule
                repeatDelay__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "repeat_delay"
                      (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                         Data.ProtoLens.FieldTypeDescriptor
                           Proto.Google.Protobuf.Wrappers.FloatValue)
                      (Data.ProtoLens.OptionalField
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) ::
                               (Lens.Labels.Proxy#) "maybe'repeatDelay")))
                      :: Data.ProtoLens.FieldDescriptor ZStandaloneInputModule
                forceModuleActive__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "force_module_active"
                      (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                         Data.ProtoLens.FieldTypeDescriptor
                           Proto.Google.Protobuf.Wrappers.BoolValue)
                      (Data.ProtoLens.OptionalField
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) ::
                               (Lens.Labels.Proxy#) "maybe'forceModuleActive")))
                      :: Data.ProtoLens.FieldDescriptor ZStandaloneInputModule
              in
              Data.Map.fromList
                [(Data.ProtoLens.Tag 1, horizontalAxis__field_descriptor),
                 (Data.ProtoLens.Tag 2, verticalAxis__field_descriptor),
                 (Data.ProtoLens.Tag 3, submitButton__field_descriptor),
                 (Data.ProtoLens.Tag 4, cancelButton__field_descriptor),
                 (Data.ProtoLens.Tag 5, inputActionsPerSecond__field_descriptor),
                 (Data.ProtoLens.Tag 6, repeatDelay__field_descriptor),
                 (Data.ProtoLens.Tag 7, forceModuleActive__field_descriptor)]
        unknownFields
          = Lens.Family2.Unchecked.lens
              _ZStandaloneInputModule'_unknownFields
              (\ x__ y__ -> x__{_ZStandaloneInputModule'_unknownFields = y__})
        defMessage
          = ZStandaloneInputModule{_ZStandaloneInputModule'horizontalAxis =
                                     Prelude.Nothing,
                                   _ZStandaloneInputModule'verticalAxis = Prelude.Nothing,
                                   _ZStandaloneInputModule'submitButton = Prelude.Nothing,
                                   _ZStandaloneInputModule'cancelButton = Prelude.Nothing,
                                   _ZStandaloneInputModule'inputActionsPerSecond = Prelude.Nothing,
                                   _ZStandaloneInputModule'repeatDelay = Prelude.Nothing,
                                   _ZStandaloneInputModule'forceModuleActive = Prelude.Nothing,
                                   _ZStandaloneInputModule'_unknownFields = ([])}
instance Control.DeepSeq.NFData ZStandaloneInputModule where
        rnf
          = \ x__ ->
              Control.DeepSeq.deepseq
                (_ZStandaloneInputModule'_unknownFields x__)
                (Control.DeepSeq.deepseq
                   (_ZStandaloneInputModule'horizontalAxis x__)
                   (Control.DeepSeq.deepseq (_ZStandaloneInputModule'verticalAxis x__)
                      (Control.DeepSeq.deepseq (_ZStandaloneInputModule'submitButton x__)
                         (Control.DeepSeq.deepseq (_ZStandaloneInputModule'cancelButton x__)
                            (Control.DeepSeq.deepseq
                               (_ZStandaloneInputModule'inputActionsPerSecond x__)
                               (Control.DeepSeq.deepseq (_ZStandaloneInputModule'repeatDelay x__)
                                  (Control.DeepSeq.deepseq
                                     (_ZStandaloneInputModule'forceModuleActive x__)
                                     (()))))))))
{- | Fields :

    * 'Proto.Data_Fields.text' @:: Lens' ZText Proto.Google.Protobuf.Wrappers.StringValue@
    * 'Proto.Data_Fields.maybe'text' @:: Lens' ZText
  (Prelude.Maybe Proto.Google.Protobuf.Wrappers.StringValue)@
    * 'Proto.Data_Fields.font' @:: Lens' ZText ZFont@
    * 'Proto.Data_Fields.maybe'font' @:: Lens' ZText (Prelude.Maybe ZFont)@
    * 'Proto.Data_Fields.fontStyle' @:: Lens' ZText ZText'FontStyle@
    * 'Proto.Data_Fields.fontSize' @:: Lens' ZText Proto.Google.Protobuf.Wrappers.Int32Value@
    * 'Proto.Data_Fields.maybe'fontSize' @:: Lens' ZText
  (Prelude.Maybe Proto.Google.Protobuf.Wrappers.Int32Value)@
    * 'Proto.Data_Fields.lineSpacing' @:: Lens' ZText Proto.Google.Protobuf.Wrappers.FloatValue@
    * 'Proto.Data_Fields.maybe'lineSpacing' @:: Lens' ZText
  (Prelude.Maybe Proto.Google.Protobuf.Wrappers.FloatValue)@
    * 'Proto.Data_Fields.supportRichText' @:: Lens' ZText Proto.Google.Protobuf.Wrappers.BoolValue@
    * 'Proto.Data_Fields.maybe'supportRichText' @:: Lens' ZText
  (Prelude.Maybe Proto.Google.Protobuf.Wrappers.BoolValue)@
    * 'Proto.Data_Fields.alignment' @:: Lens' ZText ZTextAnchor@
    * 'Proto.Data_Fields.alignByGeometry' @:: Lens' ZText Proto.Google.Protobuf.Wrappers.BoolValue@
    * 'Proto.Data_Fields.maybe'alignByGeometry' @:: Lens' ZText
  (Prelude.Maybe Proto.Google.Protobuf.Wrappers.BoolValue)@
    * 'Proto.Data_Fields.horizontalOverflow' @:: Lens' ZText ZText'HorizontalWrapMode@
    * 'Proto.Data_Fields.verticalOverflow' @:: Lens' ZText ZText'VerticalWrapMode@
    * 'Proto.Data_Fields.resizeTextForBestFit' @:: Lens' ZText Proto.Google.Protobuf.Wrappers.BoolValue@
    * 'Proto.Data_Fields.maybe'resizeTextForBestFit' @:: Lens' ZText
  (Prelude.Maybe Proto.Google.Protobuf.Wrappers.BoolValue)@
 -}
data ZText = ZText{_ZText'text ::
                   !(Prelude.Maybe Proto.Google.Protobuf.Wrappers.StringValue),
                   _ZText'font :: !(Prelude.Maybe ZFont),
                   _ZText'fontStyle :: !ZText'FontStyle,
                   _ZText'fontSize ::
                   !(Prelude.Maybe Proto.Google.Protobuf.Wrappers.Int32Value),
                   _ZText'lineSpacing ::
                   !(Prelude.Maybe Proto.Google.Protobuf.Wrappers.FloatValue),
                   _ZText'supportRichText ::
                   !(Prelude.Maybe Proto.Google.Protobuf.Wrappers.BoolValue),
                   _ZText'alignment :: !ZTextAnchor,
                   _ZText'alignByGeometry ::
                   !(Prelude.Maybe Proto.Google.Protobuf.Wrappers.BoolValue),
                   _ZText'horizontalOverflow :: !ZText'HorizontalWrapMode,
                   _ZText'verticalOverflow :: !ZText'VerticalWrapMode,
                   _ZText'resizeTextForBestFit ::
                   !(Prelude.Maybe Proto.Google.Protobuf.Wrappers.BoolValue),
                   _ZText'_unknownFields :: !Data.ProtoLens.FieldSet}
               deriving (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ZText where
        showsPrec _ __x __s
          = Prelude.showChar '{'
              (Prelude.showString (Data.ProtoLens.showMessageShort __x)
                 (Prelude.showChar '}' __s))
instance Lens.Labels.HasLens' ZText "text"
           (Proto.Google.Protobuf.Wrappers.StringValue)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _ZText'text
                 (\ x__ y__ -> x__{_ZText'text = y__}))
              (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Lens.Labels.HasLens' ZText "maybe'text"
           (Prelude.Maybe Proto.Google.Protobuf.Wrappers.StringValue)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _ZText'text
                 (\ x__ y__ -> x__{_ZText'text = y__}))
              Prelude.id
instance Lens.Labels.HasLens' ZText "font" (ZFont) where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _ZText'font
                 (\ x__ y__ -> x__{_ZText'font = y__}))
              (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Lens.Labels.HasLens' ZText "maybe'font"
           (Prelude.Maybe ZFont)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _ZText'font
                 (\ x__ y__ -> x__{_ZText'font = y__}))
              Prelude.id
instance Lens.Labels.HasLens' ZText "fontStyle" (ZText'FontStyle)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _ZText'fontStyle
                 (\ x__ y__ -> x__{_ZText'fontStyle = y__}))
              Prelude.id
instance Lens.Labels.HasLens' ZText "fontSize"
           (Proto.Google.Protobuf.Wrappers.Int32Value)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _ZText'fontSize
                 (\ x__ y__ -> x__{_ZText'fontSize = y__}))
              (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Lens.Labels.HasLens' ZText "maybe'fontSize"
           (Prelude.Maybe Proto.Google.Protobuf.Wrappers.Int32Value)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _ZText'fontSize
                 (\ x__ y__ -> x__{_ZText'fontSize = y__}))
              Prelude.id
instance Lens.Labels.HasLens' ZText "lineSpacing"
           (Proto.Google.Protobuf.Wrappers.FloatValue)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _ZText'lineSpacing
                 (\ x__ y__ -> x__{_ZText'lineSpacing = y__}))
              (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Lens.Labels.HasLens' ZText "maybe'lineSpacing"
           (Prelude.Maybe Proto.Google.Protobuf.Wrappers.FloatValue)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _ZText'lineSpacing
                 (\ x__ y__ -> x__{_ZText'lineSpacing = y__}))
              Prelude.id
instance Lens.Labels.HasLens' ZText "supportRichText"
           (Proto.Google.Protobuf.Wrappers.BoolValue)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _ZText'supportRichText
                 (\ x__ y__ -> x__{_ZText'supportRichText = y__}))
              (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Lens.Labels.HasLens' ZText "maybe'supportRichText"
           (Prelude.Maybe Proto.Google.Protobuf.Wrappers.BoolValue)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _ZText'supportRichText
                 (\ x__ y__ -> x__{_ZText'supportRichText = y__}))
              Prelude.id
instance Lens.Labels.HasLens' ZText "alignment" (ZTextAnchor) where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _ZText'alignment
                 (\ x__ y__ -> x__{_ZText'alignment = y__}))
              Prelude.id
instance Lens.Labels.HasLens' ZText "alignByGeometry"
           (Proto.Google.Protobuf.Wrappers.BoolValue)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _ZText'alignByGeometry
                 (\ x__ y__ -> x__{_ZText'alignByGeometry = y__}))
              (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Lens.Labels.HasLens' ZText "maybe'alignByGeometry"
           (Prelude.Maybe Proto.Google.Protobuf.Wrappers.BoolValue)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _ZText'alignByGeometry
                 (\ x__ y__ -> x__{_ZText'alignByGeometry = y__}))
              Prelude.id
instance Lens.Labels.HasLens' ZText "horizontalOverflow"
           (ZText'HorizontalWrapMode)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _ZText'horizontalOverflow
                 (\ x__ y__ -> x__{_ZText'horizontalOverflow = y__}))
              Prelude.id
instance Lens.Labels.HasLens' ZText "verticalOverflow"
           (ZText'VerticalWrapMode)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _ZText'verticalOverflow
                 (\ x__ y__ -> x__{_ZText'verticalOverflow = y__}))
              Prelude.id
instance Lens.Labels.HasLens' ZText "resizeTextForBestFit"
           (Proto.Google.Protobuf.Wrappers.BoolValue)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _ZText'resizeTextForBestFit
                 (\ x__ y__ -> x__{_ZText'resizeTextForBestFit = y__}))
              (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Lens.Labels.HasLens' ZText "maybe'resizeTextForBestFit"
           (Prelude.Maybe Proto.Google.Protobuf.Wrappers.BoolValue)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _ZText'resizeTextForBestFit
                 (\ x__ y__ -> x__{_ZText'resizeTextForBestFit = y__}))
              Prelude.id
instance Data.ProtoLens.Message ZText where
        messageName _ = Data.Text.pack "tarkin.data.ZText"
        fieldsByTag
          = let text__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "text"
                      (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                         Data.ProtoLens.FieldTypeDescriptor
                           Proto.Google.Protobuf.Wrappers.StringValue)
                      (Data.ProtoLens.OptionalField
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "maybe'text")))
                      :: Data.ProtoLens.FieldDescriptor ZText
                font__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "font"
                      (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                         Data.ProtoLens.FieldTypeDescriptor ZFont)
                      (Data.ProtoLens.OptionalField
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "maybe'font")))
                      :: Data.ProtoLens.FieldDescriptor ZText
                fontStyle__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "font_style"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                         Data.ProtoLens.FieldTypeDescriptor ZText'FontStyle)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "fontStyle")))
                      :: Data.ProtoLens.FieldDescriptor ZText
                fontSize__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "font_size"
                      (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                         Data.ProtoLens.FieldTypeDescriptor
                           Proto.Google.Protobuf.Wrappers.Int32Value)
                      (Data.ProtoLens.OptionalField
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "maybe'fontSize")))
                      :: Data.ProtoLens.FieldDescriptor ZText
                lineSpacing__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "line_spacing"
                      (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                         Data.ProtoLens.FieldTypeDescriptor
                           Proto.Google.Protobuf.Wrappers.FloatValue)
                      (Data.ProtoLens.OptionalField
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) ::
                               (Lens.Labels.Proxy#) "maybe'lineSpacing")))
                      :: Data.ProtoLens.FieldDescriptor ZText
                supportRichText__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "support_rich_text"
                      (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                         Data.ProtoLens.FieldTypeDescriptor
                           Proto.Google.Protobuf.Wrappers.BoolValue)
                      (Data.ProtoLens.OptionalField
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) ::
                               (Lens.Labels.Proxy#) "maybe'supportRichText")))
                      :: Data.ProtoLens.FieldDescriptor ZText
                alignment__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "alignment"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                         Data.ProtoLens.FieldTypeDescriptor ZTextAnchor)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "alignment")))
                      :: Data.ProtoLens.FieldDescriptor ZText
                alignByGeometry__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "align_by_geometry"
                      (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                         Data.ProtoLens.FieldTypeDescriptor
                           Proto.Google.Protobuf.Wrappers.BoolValue)
                      (Data.ProtoLens.OptionalField
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) ::
                               (Lens.Labels.Proxy#) "maybe'alignByGeometry")))
                      :: Data.ProtoLens.FieldDescriptor ZText
                horizontalOverflow__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "horizontal_overflow"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                         Data.ProtoLens.FieldTypeDescriptor ZText'HorizontalWrapMode)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) ::
                               (Lens.Labels.Proxy#) "horizontalOverflow")))
                      :: Data.ProtoLens.FieldDescriptor ZText
                verticalOverflow__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "vertical_overflow"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                         Data.ProtoLens.FieldTypeDescriptor ZText'VerticalWrapMode)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "verticalOverflow")))
                      :: Data.ProtoLens.FieldDescriptor ZText
                resizeTextForBestFit__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "resize_text_for_best_fit"
                      (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                         Data.ProtoLens.FieldTypeDescriptor
                           Proto.Google.Protobuf.Wrappers.BoolValue)
                      (Data.ProtoLens.OptionalField
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) ::
                               (Lens.Labels.Proxy#) "maybe'resizeTextForBestFit")))
                      :: Data.ProtoLens.FieldDescriptor ZText
              in
              Data.Map.fromList
                [(Data.ProtoLens.Tag 1, text__field_descriptor),
                 (Data.ProtoLens.Tag 2, font__field_descriptor),
                 (Data.ProtoLens.Tag 3, fontStyle__field_descriptor),
                 (Data.ProtoLens.Tag 4, fontSize__field_descriptor),
                 (Data.ProtoLens.Tag 5, lineSpacing__field_descriptor),
                 (Data.ProtoLens.Tag 6, supportRichText__field_descriptor),
                 (Data.ProtoLens.Tag 7, alignment__field_descriptor),
                 (Data.ProtoLens.Tag 8, alignByGeometry__field_descriptor),
                 (Data.ProtoLens.Tag 9, horizontalOverflow__field_descriptor),
                 (Data.ProtoLens.Tag 10, verticalOverflow__field_descriptor),
                 (Data.ProtoLens.Tag 11, resizeTextForBestFit__field_descriptor)]
        unknownFields
          = Lens.Family2.Unchecked.lens _ZText'_unknownFields
              (\ x__ y__ -> x__{_ZText'_unknownFields = y__})
        defMessage
          = ZText{_ZText'text = Prelude.Nothing,
                  _ZText'font = Prelude.Nothing,
                  _ZText'fontStyle = Data.ProtoLens.fieldDefault,
                  _ZText'fontSize = Prelude.Nothing,
                  _ZText'lineSpacing = Prelude.Nothing,
                  _ZText'supportRichText = Prelude.Nothing,
                  _ZText'alignment = Data.ProtoLens.fieldDefault,
                  _ZText'alignByGeometry = Prelude.Nothing,
                  _ZText'horizontalOverflow = Data.ProtoLens.fieldDefault,
                  _ZText'verticalOverflow = Data.ProtoLens.fieldDefault,
                  _ZText'resizeTextForBestFit = Prelude.Nothing,
                  _ZText'_unknownFields = ([])}
instance Control.DeepSeq.NFData ZText where
        rnf
          = \ x__ ->
              Control.DeepSeq.deepseq (_ZText'_unknownFields x__)
                (Control.DeepSeq.deepseq (_ZText'text x__)
                   (Control.DeepSeq.deepseq (_ZText'font x__)
                      (Control.DeepSeq.deepseq (_ZText'fontStyle x__)
                         (Control.DeepSeq.deepseq (_ZText'fontSize x__)
                            (Control.DeepSeq.deepseq (_ZText'lineSpacing x__)
                               (Control.DeepSeq.deepseq (_ZText'supportRichText x__)
                                  (Control.DeepSeq.deepseq (_ZText'alignment x__)
                                     (Control.DeepSeq.deepseq (_ZText'alignByGeometry x__)
                                        (Control.DeepSeq.deepseq (_ZText'horizontalOverflow x__)
                                           (Control.DeepSeq.deepseq (_ZText'verticalOverflow x__)
                                              (Control.DeepSeq.deepseq
                                                 (_ZText'resizeTextForBestFit x__)
                                                 (()))))))))))))
data ZText'FontStyle = ZText'UNKNOWN_FONT_STYLE
                     | ZText'NORMAL
                     | ZText'BOLD
                     | ZText'ITALIC
                     | ZText'BOLD_AND_ITALIC
                     | ZText'FontStyle'Unrecognized !ZText'FontStyle'UnrecognizedValue
                         deriving (Prelude.Show, Prelude.Eq, Prelude.Ord)
newtype ZText'FontStyle'UnrecognizedValue = ZText'FontStyle'UnrecognizedValue Data.Int.Int32
                                              deriving (Prelude.Eq, Prelude.Ord, Prelude.Show)
instance Data.ProtoLens.MessageEnum ZText'FontStyle where
        maybeToEnum 0 = Prelude.Just ZText'UNKNOWN_FONT_STYLE
        maybeToEnum 1 = Prelude.Just ZText'NORMAL
        maybeToEnum 2 = Prelude.Just ZText'BOLD
        maybeToEnum 3 = Prelude.Just ZText'ITALIC
        maybeToEnum 4 = Prelude.Just ZText'BOLD_AND_ITALIC
        maybeToEnum k
          = Prelude.Just
              (ZText'FontStyle'Unrecognized
                 (ZText'FontStyle'UnrecognizedValue (Prelude.fromIntegral k)))
        showEnum ZText'UNKNOWN_FONT_STYLE = "UNKNOWN_FONT_STYLE"
        showEnum ZText'NORMAL = "NORMAL"
        showEnum ZText'BOLD = "BOLD"
        showEnum ZText'ITALIC = "ITALIC"
        showEnum ZText'BOLD_AND_ITALIC = "BOLD_AND_ITALIC"
        showEnum
          (ZText'FontStyle'Unrecognized
             (ZText'FontStyle'UnrecognizedValue k))
          = Prelude.show k
        readEnum "UNKNOWN_FONT_STYLE"
          = Prelude.Just ZText'UNKNOWN_FONT_STYLE
        readEnum "NORMAL" = Prelude.Just ZText'NORMAL
        readEnum "BOLD" = Prelude.Just ZText'BOLD
        readEnum "ITALIC" = Prelude.Just ZText'ITALIC
        readEnum "BOLD_AND_ITALIC" = Prelude.Just ZText'BOLD_AND_ITALIC
        readEnum k
          = (Prelude.>>=) (Text.Read.readMaybe k) Data.ProtoLens.maybeToEnum
instance Prelude.Bounded ZText'FontStyle where
        minBound = ZText'UNKNOWN_FONT_STYLE
        maxBound = ZText'BOLD_AND_ITALIC
instance Prelude.Enum ZText'FontStyle where
        toEnum k__
          = Prelude.maybe
              (Prelude.error
                 ((Prelude.++) "toEnum: unknown value for enum FontStyle: "
                    (Prelude.show k__)))
              Prelude.id
              (Data.ProtoLens.maybeToEnum k__)
        fromEnum ZText'UNKNOWN_FONT_STYLE = 0
        fromEnum ZText'NORMAL = 1
        fromEnum ZText'BOLD = 2
        fromEnum ZText'ITALIC = 3
        fromEnum ZText'BOLD_AND_ITALIC = 4
        fromEnum
          (ZText'FontStyle'Unrecognized
             (ZText'FontStyle'UnrecognizedValue k))
          = Prelude.fromIntegral k
        succ ZText'BOLD_AND_ITALIC
          = Prelude.error
              "ZText'FontStyle.succ: bad argument ZText'BOLD_AND_ITALIC. This value would be out of bounds."
        succ ZText'UNKNOWN_FONT_STYLE = ZText'NORMAL
        succ ZText'NORMAL = ZText'BOLD
        succ ZText'BOLD = ZText'ITALIC
        succ ZText'ITALIC = ZText'BOLD_AND_ITALIC
        succ _
          = Prelude.error
              "ZText'FontStyle.succ: bad argument: unrecognized value"
        pred ZText'UNKNOWN_FONT_STYLE
          = Prelude.error
              "ZText'FontStyle.pred: bad argument ZText'UNKNOWN_FONT_STYLE. This value would be out of bounds."
        pred ZText'NORMAL = ZText'UNKNOWN_FONT_STYLE
        pred ZText'BOLD = ZText'NORMAL
        pred ZText'ITALIC = ZText'BOLD
        pred ZText'BOLD_AND_ITALIC = ZText'ITALIC
        pred _
          = Prelude.error
              "ZText'FontStyle.pred: bad argument: unrecognized value"
        enumFrom = Data.ProtoLens.Message.Enum.messageEnumFrom
        enumFromTo = Data.ProtoLens.Message.Enum.messageEnumFromTo
        enumFromThen = Data.ProtoLens.Message.Enum.messageEnumFromThen
        enumFromThenTo = Data.ProtoLens.Message.Enum.messageEnumFromThenTo
instance Data.ProtoLens.FieldDefault ZText'FontStyle where
        fieldDefault = ZText'UNKNOWN_FONT_STYLE
instance Control.DeepSeq.NFData ZText'FontStyle where
        rnf x__ = Prelude.seq x__ (())
data ZText'HorizontalWrapMode = ZText'UNKNOWN_HORIZONTAL_WRAP_MODE
                              | ZText'WRAP
                              | ZText'HORIZONTAL_OVERFLOW
                              | ZText'HorizontalWrapMode'Unrecognized !ZText'HorizontalWrapMode'UnrecognizedValue
                                  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord)
newtype ZText'HorizontalWrapMode'UnrecognizedValue = ZText'HorizontalWrapMode'UnrecognizedValue Data.Int.Int32
                                                       deriving (Prelude.Eq, Prelude.Ord,
                                                                 Prelude.Show)
instance Data.ProtoLens.MessageEnum ZText'HorizontalWrapMode where
        maybeToEnum 0 = Prelude.Just ZText'UNKNOWN_HORIZONTAL_WRAP_MODE
        maybeToEnum 1 = Prelude.Just ZText'WRAP
        maybeToEnum 2 = Prelude.Just ZText'HORIZONTAL_OVERFLOW
        maybeToEnum k
          = Prelude.Just
              (ZText'HorizontalWrapMode'Unrecognized
                 (ZText'HorizontalWrapMode'UnrecognizedValue
                    (Prelude.fromIntegral k)))
        showEnum ZText'UNKNOWN_HORIZONTAL_WRAP_MODE
          = "UNKNOWN_HORIZONTAL_WRAP_MODE"
        showEnum ZText'WRAP = "WRAP"
        showEnum ZText'HORIZONTAL_OVERFLOW = "HORIZONTAL_OVERFLOW"
        showEnum
          (ZText'HorizontalWrapMode'Unrecognized
             (ZText'HorizontalWrapMode'UnrecognizedValue k))
          = Prelude.show k
        readEnum "UNKNOWN_HORIZONTAL_WRAP_MODE"
          = Prelude.Just ZText'UNKNOWN_HORIZONTAL_WRAP_MODE
        readEnum "WRAP" = Prelude.Just ZText'WRAP
        readEnum "HORIZONTAL_OVERFLOW"
          = Prelude.Just ZText'HORIZONTAL_OVERFLOW
        readEnum k
          = (Prelude.>>=) (Text.Read.readMaybe k) Data.ProtoLens.maybeToEnum
instance Prelude.Bounded ZText'HorizontalWrapMode where
        minBound = ZText'UNKNOWN_HORIZONTAL_WRAP_MODE
        maxBound = ZText'HORIZONTAL_OVERFLOW
instance Prelude.Enum ZText'HorizontalWrapMode where
        toEnum k__
          = Prelude.maybe
              (Prelude.error
                 ((Prelude.++) "toEnum: unknown value for enum HorizontalWrapMode: "
                    (Prelude.show k__)))
              Prelude.id
              (Data.ProtoLens.maybeToEnum k__)
        fromEnum ZText'UNKNOWN_HORIZONTAL_WRAP_MODE = 0
        fromEnum ZText'WRAP = 1
        fromEnum ZText'HORIZONTAL_OVERFLOW = 2
        fromEnum
          (ZText'HorizontalWrapMode'Unrecognized
             (ZText'HorizontalWrapMode'UnrecognizedValue k))
          = Prelude.fromIntegral k
        succ ZText'HORIZONTAL_OVERFLOW
          = Prelude.error
              "ZText'HorizontalWrapMode.succ: bad argument ZText'HORIZONTAL_OVERFLOW. This value would be out of bounds."
        succ ZText'UNKNOWN_HORIZONTAL_WRAP_MODE = ZText'WRAP
        succ ZText'WRAP = ZText'HORIZONTAL_OVERFLOW
        succ _
          = Prelude.error
              "ZText'HorizontalWrapMode.succ: bad argument: unrecognized value"
        pred ZText'UNKNOWN_HORIZONTAL_WRAP_MODE
          = Prelude.error
              "ZText'HorizontalWrapMode.pred: bad argument ZText'UNKNOWN_HORIZONTAL_WRAP_MODE. This value would be out of bounds."
        pred ZText'WRAP = ZText'UNKNOWN_HORIZONTAL_WRAP_MODE
        pred ZText'HORIZONTAL_OVERFLOW = ZText'WRAP
        pred _
          = Prelude.error
              "ZText'HorizontalWrapMode.pred: bad argument: unrecognized value"
        enumFrom = Data.ProtoLens.Message.Enum.messageEnumFrom
        enumFromTo = Data.ProtoLens.Message.Enum.messageEnumFromTo
        enumFromThen = Data.ProtoLens.Message.Enum.messageEnumFromThen
        enumFromThenTo = Data.ProtoLens.Message.Enum.messageEnumFromThenTo
instance Data.ProtoLens.FieldDefault ZText'HorizontalWrapMode where
        fieldDefault = ZText'UNKNOWN_HORIZONTAL_WRAP_MODE
instance Control.DeepSeq.NFData ZText'HorizontalWrapMode where
        rnf x__ = Prelude.seq x__ (())
data ZText'VerticalWrapMode = ZText'UNKNOWN_VERTICAL_WRAP_MODE
                            | ZText'TRUNCATE
                            | ZText'VERTICAL_OVERFLOW
                            | ZText'VerticalWrapMode'Unrecognized !ZText'VerticalWrapMode'UnrecognizedValue
                                deriving (Prelude.Show, Prelude.Eq, Prelude.Ord)
newtype ZText'VerticalWrapMode'UnrecognizedValue = ZText'VerticalWrapMode'UnrecognizedValue Data.Int.Int32
                                                     deriving (Prelude.Eq, Prelude.Ord,
                                                               Prelude.Show)
instance Data.ProtoLens.MessageEnum ZText'VerticalWrapMode where
        maybeToEnum 0 = Prelude.Just ZText'UNKNOWN_VERTICAL_WRAP_MODE
        maybeToEnum 1 = Prelude.Just ZText'TRUNCATE
        maybeToEnum 2 = Prelude.Just ZText'VERTICAL_OVERFLOW
        maybeToEnum k
          = Prelude.Just
              (ZText'VerticalWrapMode'Unrecognized
                 (ZText'VerticalWrapMode'UnrecognizedValue
                    (Prelude.fromIntegral k)))
        showEnum ZText'UNKNOWN_VERTICAL_WRAP_MODE
          = "UNKNOWN_VERTICAL_WRAP_MODE"
        showEnum ZText'TRUNCATE = "TRUNCATE"
        showEnum ZText'VERTICAL_OVERFLOW = "VERTICAL_OVERFLOW"
        showEnum
          (ZText'VerticalWrapMode'Unrecognized
             (ZText'VerticalWrapMode'UnrecognizedValue k))
          = Prelude.show k
        readEnum "UNKNOWN_VERTICAL_WRAP_MODE"
          = Prelude.Just ZText'UNKNOWN_VERTICAL_WRAP_MODE
        readEnum "TRUNCATE" = Prelude.Just ZText'TRUNCATE
        readEnum "VERTICAL_OVERFLOW" = Prelude.Just ZText'VERTICAL_OVERFLOW
        readEnum k
          = (Prelude.>>=) (Text.Read.readMaybe k) Data.ProtoLens.maybeToEnum
instance Prelude.Bounded ZText'VerticalWrapMode where
        minBound = ZText'UNKNOWN_VERTICAL_WRAP_MODE
        maxBound = ZText'VERTICAL_OVERFLOW
instance Prelude.Enum ZText'VerticalWrapMode where
        toEnum k__
          = Prelude.maybe
              (Prelude.error
                 ((Prelude.++) "toEnum: unknown value for enum VerticalWrapMode: "
                    (Prelude.show k__)))
              Prelude.id
              (Data.ProtoLens.maybeToEnum k__)
        fromEnum ZText'UNKNOWN_VERTICAL_WRAP_MODE = 0
        fromEnum ZText'TRUNCATE = 1
        fromEnum ZText'VERTICAL_OVERFLOW = 2
        fromEnum
          (ZText'VerticalWrapMode'Unrecognized
             (ZText'VerticalWrapMode'UnrecognizedValue k))
          = Prelude.fromIntegral k
        succ ZText'VERTICAL_OVERFLOW
          = Prelude.error
              "ZText'VerticalWrapMode.succ: bad argument ZText'VERTICAL_OVERFLOW. This value would be out of bounds."
        succ ZText'UNKNOWN_VERTICAL_WRAP_MODE = ZText'TRUNCATE
        succ ZText'TRUNCATE = ZText'VERTICAL_OVERFLOW
        succ _
          = Prelude.error
              "ZText'VerticalWrapMode.succ: bad argument: unrecognized value"
        pred ZText'UNKNOWN_VERTICAL_WRAP_MODE
          = Prelude.error
              "ZText'VerticalWrapMode.pred: bad argument ZText'UNKNOWN_VERTICAL_WRAP_MODE. This value would be out of bounds."
        pred ZText'TRUNCATE = ZText'UNKNOWN_VERTICAL_WRAP_MODE
        pred ZText'VERTICAL_OVERFLOW = ZText'TRUNCATE
        pred _
          = Prelude.error
              "ZText'VerticalWrapMode.pred: bad argument: unrecognized value"
        enumFrom = Data.ProtoLens.Message.Enum.messageEnumFrom
        enumFromTo = Data.ProtoLens.Message.Enum.messageEnumFromTo
        enumFromThen = Data.ProtoLens.Message.Enum.messageEnumFromThen
        enumFromThenTo = Data.ProtoLens.Message.Enum.messageEnumFromThenTo
instance Data.ProtoLens.FieldDefault ZText'VerticalWrapMode where
        fieldDefault = ZText'UNKNOWN_VERTICAL_WRAP_MODE
instance Control.DeepSeq.NFData ZText'VerticalWrapMode where
        rnf x__ = Prelude.seq x__ (())
data ZTextAnchor = UNKNOWN_TEXT_ANCHOR
                 | UPPER_LEFT
                 | UPPER_CENTER
                 | UPPER_RIGHT
                 | MIDDLE_LEFT
                 | MIDDLE_CENTER
                 | MIDDLE_RIGHT
                 | LOWER_LEFT
                 | LOWER_CENTER
                 | LOWER_RIGHT
                 | ZTextAnchor'Unrecognized !ZTextAnchor'UnrecognizedValue
                     deriving (Prelude.Show, Prelude.Eq, Prelude.Ord)
newtype ZTextAnchor'UnrecognizedValue = ZTextAnchor'UnrecognizedValue Data.Int.Int32
                                          deriving (Prelude.Eq, Prelude.Ord, Prelude.Show)
instance Data.ProtoLens.MessageEnum ZTextAnchor where
        maybeToEnum 0 = Prelude.Just UNKNOWN_TEXT_ANCHOR
        maybeToEnum 1 = Prelude.Just UPPER_LEFT
        maybeToEnum 2 = Prelude.Just UPPER_CENTER
        maybeToEnum 3 = Prelude.Just UPPER_RIGHT
        maybeToEnum 4 = Prelude.Just MIDDLE_LEFT
        maybeToEnum 5 = Prelude.Just MIDDLE_CENTER
        maybeToEnum 6 = Prelude.Just MIDDLE_RIGHT
        maybeToEnum 7 = Prelude.Just LOWER_LEFT
        maybeToEnum 8 = Prelude.Just LOWER_CENTER
        maybeToEnum 9 = Prelude.Just LOWER_RIGHT
        maybeToEnum k
          = Prelude.Just
              (ZTextAnchor'Unrecognized
                 (ZTextAnchor'UnrecognizedValue (Prelude.fromIntegral k)))
        showEnum UNKNOWN_TEXT_ANCHOR = "UNKNOWN_TEXT_ANCHOR"
        showEnum UPPER_LEFT = "UPPER_LEFT"
        showEnum UPPER_CENTER = "UPPER_CENTER"
        showEnum UPPER_RIGHT = "UPPER_RIGHT"
        showEnum MIDDLE_LEFT = "MIDDLE_LEFT"
        showEnum MIDDLE_CENTER = "MIDDLE_CENTER"
        showEnum MIDDLE_RIGHT = "MIDDLE_RIGHT"
        showEnum LOWER_LEFT = "LOWER_LEFT"
        showEnum LOWER_CENTER = "LOWER_CENTER"
        showEnum LOWER_RIGHT = "LOWER_RIGHT"
        showEnum
          (ZTextAnchor'Unrecognized (ZTextAnchor'UnrecognizedValue k))
          = Prelude.show k
        readEnum "UNKNOWN_TEXT_ANCHOR" = Prelude.Just UNKNOWN_TEXT_ANCHOR
        readEnum "UPPER_LEFT" = Prelude.Just UPPER_LEFT
        readEnum "UPPER_CENTER" = Prelude.Just UPPER_CENTER
        readEnum "UPPER_RIGHT" = Prelude.Just UPPER_RIGHT
        readEnum "MIDDLE_LEFT" = Prelude.Just MIDDLE_LEFT
        readEnum "MIDDLE_CENTER" = Prelude.Just MIDDLE_CENTER
        readEnum "MIDDLE_RIGHT" = Prelude.Just MIDDLE_RIGHT
        readEnum "LOWER_LEFT" = Prelude.Just LOWER_LEFT
        readEnum "LOWER_CENTER" = Prelude.Just LOWER_CENTER
        readEnum "LOWER_RIGHT" = Prelude.Just LOWER_RIGHT
        readEnum k
          = (Prelude.>>=) (Text.Read.readMaybe k) Data.ProtoLens.maybeToEnum
instance Prelude.Bounded ZTextAnchor where
        minBound = UNKNOWN_TEXT_ANCHOR
        maxBound = LOWER_RIGHT
instance Prelude.Enum ZTextAnchor where
        toEnum k__
          = Prelude.maybe
              (Prelude.error
                 ((Prelude.++) "toEnum: unknown value for enum ZTextAnchor: "
                    (Prelude.show k__)))
              Prelude.id
              (Data.ProtoLens.maybeToEnum k__)
        fromEnum UNKNOWN_TEXT_ANCHOR = 0
        fromEnum UPPER_LEFT = 1
        fromEnum UPPER_CENTER = 2
        fromEnum UPPER_RIGHT = 3
        fromEnum MIDDLE_LEFT = 4
        fromEnum MIDDLE_CENTER = 5
        fromEnum MIDDLE_RIGHT = 6
        fromEnum LOWER_LEFT = 7
        fromEnum LOWER_CENTER = 8
        fromEnum LOWER_RIGHT = 9
        fromEnum
          (ZTextAnchor'Unrecognized (ZTextAnchor'UnrecognizedValue k))
          = Prelude.fromIntegral k
        succ LOWER_RIGHT
          = Prelude.error
              "ZTextAnchor.succ: bad argument LOWER_RIGHT. This value would be out of bounds."
        succ UNKNOWN_TEXT_ANCHOR = UPPER_LEFT
        succ UPPER_LEFT = UPPER_CENTER
        succ UPPER_CENTER = UPPER_RIGHT
        succ UPPER_RIGHT = MIDDLE_LEFT
        succ MIDDLE_LEFT = MIDDLE_CENTER
        succ MIDDLE_CENTER = MIDDLE_RIGHT
        succ MIDDLE_RIGHT = LOWER_LEFT
        succ LOWER_LEFT = LOWER_CENTER
        succ LOWER_CENTER = LOWER_RIGHT
        succ _
          = Prelude.error
              "ZTextAnchor.succ: bad argument: unrecognized value"
        pred UNKNOWN_TEXT_ANCHOR
          = Prelude.error
              "ZTextAnchor.pred: bad argument UNKNOWN_TEXT_ANCHOR. This value would be out of bounds."
        pred UPPER_LEFT = UNKNOWN_TEXT_ANCHOR
        pred UPPER_CENTER = UPPER_LEFT
        pred UPPER_RIGHT = UPPER_CENTER
        pred MIDDLE_LEFT = UPPER_RIGHT
        pred MIDDLE_CENTER = MIDDLE_LEFT
        pred MIDDLE_RIGHT = MIDDLE_CENTER
        pred LOWER_LEFT = MIDDLE_RIGHT
        pred LOWER_CENTER = LOWER_LEFT
        pred LOWER_RIGHT = LOWER_CENTER
        pred _
          = Prelude.error
              "ZTextAnchor.pred: bad argument: unrecognized value"
        enumFrom = Data.ProtoLens.Message.Enum.messageEnumFrom
        enumFromTo = Data.ProtoLens.Message.Enum.messageEnumFromTo
        enumFromThen = Data.ProtoLens.Message.Enum.messageEnumFromThen
        enumFromThenTo = Data.ProtoLens.Message.Enum.messageEnumFromThenTo
instance Data.ProtoLens.FieldDefault ZTextAnchor where
        fieldDefault = UNKNOWN_TEXT_ANCHOR
instance Control.DeepSeq.NFData ZTextAnchor where
        rnf x__ = Prelude.seq x__ (())
{- | Fields :

    * 'Proto.Data_Fields.localPosition' @:: Lens' ZTransform ZVector3@
    * 'Proto.Data_Fields.maybe'localPosition' @:: Lens' ZTransform (Prelude.Maybe ZVector3)@
    * 'Proto.Data_Fields.localEulerAngles' @:: Lens' ZTransform ZVector3@
    * 'Proto.Data_Fields.maybe'localEulerAngles' @:: Lens' ZTransform (Prelude.Maybe ZVector3)@
    * 'Proto.Data_Fields.localScale' @:: Lens' ZTransform ZVector3@
    * 'Proto.Data_Fields.maybe'localScale' @:: Lens' ZTransform (Prelude.Maybe ZVector3)@
    * 'Proto.Data_Fields.maybe'transform' @:: Lens' ZTransform (Prelude.Maybe ZTransform'Transform)@
    * 'Proto.Data_Fields.maybe'rectTransform' @:: Lens' ZTransform (Prelude.Maybe ZRectTransform)@
    * 'Proto.Data_Fields.rectTransform' @:: Lens' ZTransform ZRectTransform@
 -}
data ZTransform = ZTransform{_ZTransform'localPosition ::
                             !(Prelude.Maybe ZVector3),
                             _ZTransform'localEulerAngles :: !(Prelude.Maybe ZVector3),
                             _ZTransform'localScale :: !(Prelude.Maybe ZVector3),
                             _ZTransform'transform :: !(Prelude.Maybe ZTransform'Transform),
                             _ZTransform'_unknownFields :: !Data.ProtoLens.FieldSet}
                    deriving (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ZTransform where
        showsPrec _ __x __s
          = Prelude.showChar '{'
              (Prelude.showString (Data.ProtoLens.showMessageShort __x)
                 (Prelude.showChar '}' __s))
data ZTransform'Transform = ZTransform'RectTransform !ZRectTransform
                              deriving (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Lens.Labels.HasLens' ZTransform "localPosition" (ZVector3)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _ZTransform'localPosition
                 (\ x__ y__ -> x__{_ZTransform'localPosition = y__}))
              (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Lens.Labels.HasLens' ZTransform "maybe'localPosition"
           (Prelude.Maybe ZVector3)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _ZTransform'localPosition
                 (\ x__ y__ -> x__{_ZTransform'localPosition = y__}))
              Prelude.id
instance Lens.Labels.HasLens' ZTransform "localEulerAngles"
           (ZVector3)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _ZTransform'localEulerAngles
                 (\ x__ y__ -> x__{_ZTransform'localEulerAngles = y__}))
              (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Lens.Labels.HasLens' ZTransform "maybe'localEulerAngles"
           (Prelude.Maybe ZVector3)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _ZTransform'localEulerAngles
                 (\ x__ y__ -> x__{_ZTransform'localEulerAngles = y__}))
              Prelude.id
instance Lens.Labels.HasLens' ZTransform "localScale" (ZVector3)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _ZTransform'localScale
                 (\ x__ y__ -> x__{_ZTransform'localScale = y__}))
              (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Lens.Labels.HasLens' ZTransform "maybe'localScale"
           (Prelude.Maybe ZVector3)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _ZTransform'localScale
                 (\ x__ y__ -> x__{_ZTransform'localScale = y__}))
              Prelude.id
instance Lens.Labels.HasLens' ZTransform "maybe'transform"
           (Prelude.Maybe ZTransform'Transform)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _ZTransform'transform
                 (\ x__ y__ -> x__{_ZTransform'transform = y__}))
              Prelude.id
instance Lens.Labels.HasLens' ZTransform "maybe'rectTransform"
           (Prelude.Maybe ZRectTransform)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _ZTransform'transform
                 (\ x__ y__ -> x__{_ZTransform'transform = y__}))
              (Lens.Family2.Unchecked.lens
                 (\ x__ ->
                    case x__ of
                        Prelude.Just (ZTransform'RectTransform x__val) -> Prelude.Just
                                                                            x__val
                        _otherwise -> Prelude.Nothing)
                 (\ _ y__ -> Prelude.fmap ZTransform'RectTransform y__))
instance Lens.Labels.HasLens' ZTransform "rectTransform"
           (ZRectTransform)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _ZTransform'transform
                 (\ x__ y__ -> x__{_ZTransform'transform = y__}))
              ((Prelude..)
                 (Lens.Family2.Unchecked.lens
                    (\ x__ ->
                       case x__ of
                           Prelude.Just (ZTransform'RectTransform x__val) -> Prelude.Just
                                                                               x__val
                           _otherwise -> Prelude.Nothing)
                    (\ _ y__ -> Prelude.fmap ZTransform'RectTransform y__))
                 (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Message ZTransform where
        messageName _ = Data.Text.pack "tarkin.data.ZTransform"
        fieldsByTag
          = let localPosition__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "local_position"
                      (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                         Data.ProtoLens.FieldTypeDescriptor ZVector3)
                      (Data.ProtoLens.OptionalField
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) ::
                               (Lens.Labels.Proxy#) "maybe'localPosition")))
                      :: Data.ProtoLens.FieldDescriptor ZTransform
                localEulerAngles__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "local_euler_angles"
                      (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                         Data.ProtoLens.FieldTypeDescriptor ZVector3)
                      (Data.ProtoLens.OptionalField
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) ::
                               (Lens.Labels.Proxy#) "maybe'localEulerAngles")))
                      :: Data.ProtoLens.FieldDescriptor ZTransform
                localScale__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "local_scale"
                      (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                         Data.ProtoLens.FieldTypeDescriptor ZVector3)
                      (Data.ProtoLens.OptionalField
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "maybe'localScale")))
                      :: Data.ProtoLens.FieldDescriptor ZTransform
                rectTransform__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "rect_transform"
                      (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                         Data.ProtoLens.FieldTypeDescriptor ZRectTransform)
                      (Data.ProtoLens.OptionalField
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) ::
                               (Lens.Labels.Proxy#) "maybe'rectTransform")))
                      :: Data.ProtoLens.FieldDescriptor ZTransform
              in
              Data.Map.fromList
                [(Data.ProtoLens.Tag 2, localPosition__field_descriptor),
                 (Data.ProtoLens.Tag 3, localEulerAngles__field_descriptor),
                 (Data.ProtoLens.Tag 4, localScale__field_descriptor),
                 (Data.ProtoLens.Tag 1, rectTransform__field_descriptor)]
        unknownFields
          = Lens.Family2.Unchecked.lens _ZTransform'_unknownFields
              (\ x__ y__ -> x__{_ZTransform'_unknownFields = y__})
        defMessage
          = ZTransform{_ZTransform'localPosition = Prelude.Nothing,
                       _ZTransform'localEulerAngles = Prelude.Nothing,
                       _ZTransform'localScale = Prelude.Nothing,
                       _ZTransform'transform = Prelude.Nothing,
                       _ZTransform'_unknownFields = ([])}
instance Control.DeepSeq.NFData ZTransform where
        rnf
          = \ x__ ->
              Control.DeepSeq.deepseq (_ZTransform'_unknownFields x__)
                (Control.DeepSeq.deepseq (_ZTransform'localPosition x__)
                   (Control.DeepSeq.deepseq (_ZTransform'localEulerAngles x__)
                      (Control.DeepSeq.deepseq (_ZTransform'localScale x__)
                         (Control.DeepSeq.deepseq (_ZTransform'transform x__) (())))))
instance Control.DeepSeq.NFData ZTransform'Transform where
        rnf (ZTransform'RectTransform x__) = Control.DeepSeq.rnf x__
_ZTransform'RectTransform ::
                          Lens.Labels.Prism.Prism' ZTransform'Transform ZRectTransform
_ZTransform'RectTransform
  = Lens.Labels.Prism.prism' ZTransform'RectTransform
      (\ p__ ->
         case p__ of
             ZTransform'RectTransform p__val -> Prelude.Just p__val)
{- | Fields :

    * 'Proto.Data_Fields.x' @:: Lens' ZVector2 Prelude.Float@
    * 'Proto.Data_Fields.y' @:: Lens' ZVector2 Prelude.Float@
 -}
data ZVector2 = ZVector2{_ZVector2'x :: !Prelude.Float,
                         _ZVector2'y :: !Prelude.Float,
                         _ZVector2'_unknownFields :: !Data.ProtoLens.FieldSet}
                  deriving (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ZVector2 where
        showsPrec _ __x __s
          = Prelude.showChar '{'
              (Prelude.showString (Data.ProtoLens.showMessageShort __x)
                 (Prelude.showChar '}' __s))
instance Lens.Labels.HasLens' ZVector2 "x" (Prelude.Float) where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _ZVector2'x
                 (\ x__ y__ -> x__{_ZVector2'x = y__}))
              Prelude.id
instance Lens.Labels.HasLens' ZVector2 "y" (Prelude.Float) where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _ZVector2'y
                 (\ x__ y__ -> x__{_ZVector2'y = y__}))
              Prelude.id
instance Data.ProtoLens.Message ZVector2 where
        messageName _ = Data.Text.pack "tarkin.data.ZVector2"
        fieldsByTag
          = let x__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "x"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.FloatField ::
                         Data.ProtoLens.FieldTypeDescriptor Prelude.Float)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "x")))
                      :: Data.ProtoLens.FieldDescriptor ZVector2
                y__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "y"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.FloatField ::
                         Data.ProtoLens.FieldTypeDescriptor Prelude.Float)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "y")))
                      :: Data.ProtoLens.FieldDescriptor ZVector2
              in
              Data.Map.fromList
                [(Data.ProtoLens.Tag 1, x__field_descriptor),
                 (Data.ProtoLens.Tag 2, y__field_descriptor)]
        unknownFields
          = Lens.Family2.Unchecked.lens _ZVector2'_unknownFields
              (\ x__ y__ -> x__{_ZVector2'_unknownFields = y__})
        defMessage
          = ZVector2{_ZVector2'x = Data.ProtoLens.fieldDefault,
                     _ZVector2'y = Data.ProtoLens.fieldDefault,
                     _ZVector2'_unknownFields = ([])}
instance Control.DeepSeq.NFData ZVector2 where
        rnf
          = \ x__ ->
              Control.DeepSeq.deepseq (_ZVector2'_unknownFields x__)
                (Control.DeepSeq.deepseq (_ZVector2'x x__)
                   (Control.DeepSeq.deepseq (_ZVector2'y x__) (())))
{- | Fields :

    * 'Proto.Data_Fields.x' @:: Lens' ZVector3 Prelude.Float@
    * 'Proto.Data_Fields.y' @:: Lens' ZVector3 Prelude.Float@
    * 'Proto.Data_Fields.z' @:: Lens' ZVector3 Prelude.Float@
 -}
data ZVector3 = ZVector3{_ZVector3'x :: !Prelude.Float,
                         _ZVector3'y :: !Prelude.Float, _ZVector3'z :: !Prelude.Float,
                         _ZVector3'_unknownFields :: !Data.ProtoLens.FieldSet}
                  deriving (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ZVector3 where
        showsPrec _ __x __s
          = Prelude.showChar '{'
              (Prelude.showString (Data.ProtoLens.showMessageShort __x)
                 (Prelude.showChar '}' __s))
instance Lens.Labels.HasLens' ZVector3 "x" (Prelude.Float) where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _ZVector3'x
                 (\ x__ y__ -> x__{_ZVector3'x = y__}))
              Prelude.id
instance Lens.Labels.HasLens' ZVector3 "y" (Prelude.Float) where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _ZVector3'y
                 (\ x__ y__ -> x__{_ZVector3'y = y__}))
              Prelude.id
instance Lens.Labels.HasLens' ZVector3 "z" (Prelude.Float) where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _ZVector3'z
                 (\ x__ y__ -> x__{_ZVector3'z = y__}))
              Prelude.id
instance Data.ProtoLens.Message ZVector3 where
        messageName _ = Data.Text.pack "tarkin.data.ZVector3"
        fieldsByTag
          = let x__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "x"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.FloatField ::
                         Data.ProtoLens.FieldTypeDescriptor Prelude.Float)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "x")))
                      :: Data.ProtoLens.FieldDescriptor ZVector3
                y__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "y"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.FloatField ::
                         Data.ProtoLens.FieldTypeDescriptor Prelude.Float)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "y")))
                      :: Data.ProtoLens.FieldDescriptor ZVector3
                z__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "z"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.FloatField ::
                         Data.ProtoLens.FieldTypeDescriptor Prelude.Float)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "z")))
                      :: Data.ProtoLens.FieldDescriptor ZVector3
              in
              Data.Map.fromList
                [(Data.ProtoLens.Tag 1, x__field_descriptor),
                 (Data.ProtoLens.Tag 2, y__field_descriptor),
                 (Data.ProtoLens.Tag 3, z__field_descriptor)]
        unknownFields
          = Lens.Family2.Unchecked.lens _ZVector3'_unknownFields
              (\ x__ y__ -> x__{_ZVector3'_unknownFields = y__})
        defMessage
          = ZVector3{_ZVector3'x = Data.ProtoLens.fieldDefault,
                     _ZVector3'y = Data.ProtoLens.fieldDefault,
                     _ZVector3'z = Data.ProtoLens.fieldDefault,
                     _ZVector3'_unknownFields = ([])}
instance Control.DeepSeq.NFData ZVector3 where
        rnf
          = \ x__ ->
              Control.DeepSeq.deepseq (_ZVector3'_unknownFields x__)
                (Control.DeepSeq.deepseq (_ZVector3'x x__)
                   (Control.DeepSeq.deepseq (_ZVector3'y x__)
                      (Control.DeepSeq.deepseq (_ZVector3'z x__) (()))))