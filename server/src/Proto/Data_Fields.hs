{- This file was auto-generated from data.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies,
  UndecidableInstances, GeneralizedNewtypeDeriving,
  MultiParamTypeClasses, FlexibleContexts, FlexibleInstances,
  PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports#-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports#-}
module Proto.Data_Fields where
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

a ::
  forall f s a . (Prelude.Functor f, Lens.Labels.HasLens' s "a" a) =>
    Lens.Family2.LensLike' f s a
a = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "a")
additionalShaderChannels ::
                         forall f s a .
                           (Prelude.Functor f,
                            Lens.Labels.HasLens' s "additionalShaderChannels" a) =>
                           Lens.Family2.LensLike' f s a
additionalShaderChannels
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) ::
         (Lens.Labels.Proxy#) "additionalShaderChannels")
alignByGeometry ::
                forall f s a .
                  (Prelude.Functor f, Lens.Labels.HasLens' s "alignByGeometry" a) =>
                  Lens.Family2.LensLike' f s a
alignByGeometry
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "alignByGeometry")
alignment ::
          forall f s a .
            (Prelude.Functor f, Lens.Labels.HasLens' s "alignment" a) =>
            Lens.Family2.LensLike' f s a
alignment
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "alignment")
anchorMax ::
          forall f s a .
            (Prelude.Functor f, Lens.Labels.HasLens' s "anchorMax" a) =>
            Lens.Family2.LensLike' f s a
anchorMax
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "anchorMax")
anchorMin ::
          forall f s a .
            (Prelude.Functor f, Lens.Labels.HasLens' s "anchorMin" a) =>
            Lens.Family2.LensLike' f s a
anchorMin
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "anchorMin")
assetPath ::
          forall f s a .
            (Prelude.Functor f, Lens.Labels.HasLens' s "assetPath" a) =>
            Lens.Family2.LensLike' f s a
assetPath
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "assetPath")
b ::
  forall f s a . (Prelude.Functor f, Lens.Labels.HasLens' s "b" a) =>
    Lens.Family2.LensLike' f s a
b = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "b")
behaviour ::
          forall f s a .
            (Prelude.Functor f, Lens.Labels.HasLens' s "behaviour" a) =>
            Lens.Family2.LensLike' f s a
behaviour
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "behaviour")
blockingObjects ::
                forall f s a .
                  (Prelude.Functor f, Lens.Labels.HasLens' s "blockingObjects" a) =>
                  Lens.Family2.LensLike' f s a
blockingObjects
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "blockingObjects")
button ::
       forall f s a .
         (Prelude.Functor f, Lens.Labels.HasLens' s "button" a) =>
         Lens.Family2.LensLike' f s a
button
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "button")
cancelButton ::
             forall f s a .
               (Prelude.Functor f, Lens.Labels.HasLens' s "cancelButton" a) =>
               Lens.Family2.LensLike' f s a
cancelButton
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "cancelButton")
canvas ::
       forall f s a .
         (Prelude.Functor f, Lens.Labels.HasLens' s "canvas" a) =>
         Lens.Family2.LensLike' f s a
canvas
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "canvas")
canvasRenderer ::
               forall f s a .
                 (Prelude.Functor f, Lens.Labels.HasLens' s "canvasRenderer" a) =>
                 Lens.Family2.LensLike' f s a
canvasRenderer
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "canvasRenderer")
canvasScaler ::
             forall f s a .
               (Prelude.Functor f, Lens.Labels.HasLens' s "canvasScaler" a) =>
               Lens.Family2.LensLike' f s a
canvasScaler
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "canvasScaler")
color ::
      forall f s a .
        (Prelude.Functor f, Lens.Labels.HasLens' s "color" a) =>
        Lens.Family2.LensLike' f s a
color
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "color")
components ::
           forall f s a .
             (Prelude.Functor f, Lens.Labels.HasLens' s "components" a) =>
             Lens.Family2.LensLike' f s a
components
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "components")
componentsToRemove ::
                   forall f s a .
                     (Prelude.Functor f,
                      Lens.Labels.HasLens' s "componentsToRemove" a) =>
                     Lens.Family2.LensLike' f s a
componentsToRemove
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "componentsToRemove")
createGameObjects ::
                  forall f s a .
                    (Prelude.Functor f,
                     Lens.Labels.HasLens' s "createGameObjects" a) =>
                    Lens.Family2.LensLike' f s a
createGameObjects
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "createGameObjects")
cullTransparentMesh ::
                    forall f s a .
                      (Prelude.Functor f,
                       Lens.Labels.HasLens' s "cullTransparentMesh" a) =>
                      Lens.Family2.LensLike' f s a
cullTransparentMesh
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) ::
         (Lens.Labels.Proxy#) "cullTransparentMesh")
destroyGameObjects ::
                   forall f s a .
                     (Prelude.Functor f,
                      Lens.Labels.HasLens' s "destroyGameObjects" a) =>
                     Lens.Family2.LensLike' f s a
destroyGameObjects
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "destroyGameObjects")
enabled ::
        forall f s a .
          (Prelude.Functor f, Lens.Labels.HasLens' s "enabled" a) =>
          Lens.Family2.LensLike' f s a
enabled
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "enabled")
eventSystem ::
            forall f s a .
              (Prelude.Functor f, Lens.Labels.HasLens' s "eventSystem" a) =>
              Lens.Family2.LensLike' f s a
eventSystem
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "eventSystem")
fillCenter ::
           forall f s a .
             (Prelude.Functor f, Lens.Labels.HasLens' s "fillCenter" a) =>
             Lens.Family2.LensLike' f s a
fillCenter
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "fillCenter")
firstName ::
          forall f s a .
            (Prelude.Functor f, Lens.Labels.HasLens' s "firstName" a) =>
            Lens.Family2.LensLike' f s a
firstName
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "firstName")
firstNumber ::
            forall f s a .
              (Prelude.Functor f, Lens.Labels.HasLens' s "firstNumber" a) =>
              Lens.Family2.LensLike' f s a
firstNumber
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "firstNumber")
firstSelectedGameObject ::
                        forall f s a .
                          (Prelude.Functor f,
                           Lens.Labels.HasLens' s "firstSelectedGameObject" a) =>
                          Lens.Family2.LensLike' f s a
firstSelectedGameObject
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) ::
         (Lens.Labels.Proxy#) "firstSelectedGameObject")
font ::
     forall f s a .
       (Prelude.Functor f, Lens.Labels.HasLens' s "font" a) =>
       Lens.Family2.LensLike' f s a
font
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "font")
fontId ::
       forall f s a .
         (Prelude.Functor f, Lens.Labels.HasLens' s "fontId" a) =>
         Lens.Family2.LensLike' f s a
fontId
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "fontId")
fontSize ::
         forall f s a .
           (Prelude.Functor f, Lens.Labels.HasLens' s "fontSize" a) =>
           Lens.Family2.LensLike' f s a
fontSize
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "fontSize")
fontStyle ::
          forall f s a .
            (Prelude.Functor f, Lens.Labels.HasLens' s "fontStyle" a) =>
            Lens.Family2.LensLike' f s a
fontStyle
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "fontStyle")
forceModuleActive ::
                  forall f s a .
                    (Prelude.Functor f,
                     Lens.Labels.HasLens' s "forceModuleActive" a) =>
                    Lens.Family2.LensLike' f s a
forceModuleActive
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "forceModuleActive")
g ::
  forall f s a . (Prelude.Functor f, Lens.Labels.HasLens' s "g" a) =>
    Lens.Family2.LensLike' f s a
g = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "g")
gameObject ::
           forall f s a .
             (Prelude.Functor f, Lens.Labels.HasLens' s "gameObject" a) =>
             Lens.Family2.LensLike' f s a
gameObject
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "gameObject")
gameObjectId ::
             forall f s a .
               (Prelude.Functor f, Lens.Labels.HasLens' s "gameObjectId" a) =>
               Lens.Family2.LensLike' f s a
gameObjectId
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "gameObjectId")
graphic ::
        forall f s a .
          (Prelude.Functor f, Lens.Labels.HasLens' s "graphic" a) =>
          Lens.Family2.LensLike' f s a
graphic
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "graphic")
graphicRaycaster ::
                 forall f s a .
                   (Prelude.Functor f, Lens.Labels.HasLens' s "graphicRaycaster" a) =>
                   Lens.Family2.LensLike' f s a
graphicRaycaster
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "graphicRaycaster")
horizontalAxis ::
               forall f s a .
                 (Prelude.Functor f, Lens.Labels.HasLens' s "horizontalAxis" a) =>
                 Lens.Family2.LensLike' f s a
horizontalAxis
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "horizontalAxis")
horizontalOverflow ::
                   forall f s a .
                     (Prelude.Functor f,
                      Lens.Labels.HasLens' s "horizontalOverflow" a) =>
                     Lens.Family2.LensLike' f s a
horizontalOverflow
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "horizontalOverflow")
ignoreReversedGraphics ::
                       forall f s a .
                         (Prelude.Functor f,
                          Lens.Labels.HasLens' s "ignoreReversedGraphics" a) =>
                         Lens.Family2.LensLike' f s a
ignoreReversedGraphics
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) ::
         (Lens.Labels.Proxy#) "ignoreReversedGraphics")
image ::
      forall f s a .
        (Prelude.Functor f, Lens.Labels.HasLens' s "image" a) =>
        Lens.Family2.LensLike' f s a
image
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "image")
inputActionsPerSecond ::
                      forall f s a .
                        (Prelude.Functor f,
                         Lens.Labels.HasLens' s "inputActionsPerSecond" a) =>
                        Lens.Family2.LensLike' f s a
inputActionsPerSecond
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) ::
         (Lens.Labels.Proxy#) "inputActionsPerSecond")
interactable ::
             forall f s a .
               (Prelude.Functor f, Lens.Labels.HasLens' s "interactable" a) =>
               Lens.Family2.LensLike' f s a
interactable
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "interactable")
lastName ::
         forall f s a .
           (Prelude.Functor f, Lens.Labels.HasLens' s "lastName" a) =>
           Lens.Family2.LensLike' f s a
lastName
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "lastName")
lineSpacing ::
            forall f s a .
              (Prelude.Functor f, Lens.Labels.HasLens' s "lineSpacing" a) =>
              Lens.Family2.LensLike' f s a
lineSpacing
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "lineSpacing")
loadAssets ::
           forall f s a .
             (Prelude.Functor f, Lens.Labels.HasLens' s "loadAssets" a) =>
             Lens.Family2.LensLike' f s a
loadAssets
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "loadAssets")
localEulerAngles ::
                 forall f s a .
                   (Prelude.Functor f, Lens.Labels.HasLens' s "localEulerAngles" a) =>
                   Lens.Family2.LensLike' f s a
localEulerAngles
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "localEulerAngles")
localPosition ::
              forall f s a .
                (Prelude.Functor f, Lens.Labels.HasLens' s "localPosition" a) =>
                Lens.Family2.LensLike' f s a
localPosition
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "localPosition")
localScale ::
           forall f s a .
             (Prelude.Functor f, Lens.Labels.HasLens' s "localScale" a) =>
             Lens.Family2.LensLike' f s a
localScale
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "localScale")
maskable ::
         forall f s a .
           (Prelude.Functor f, Lens.Labels.HasLens' s "maskable" a) =>
           Lens.Family2.LensLike' f s a
maskable
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "maskable")
maskableGraphic ::
                forall f s a .
                  (Prelude.Functor f, Lens.Labels.HasLens' s "maskableGraphic" a) =>
                  Lens.Family2.LensLike' f s a
maskableGraphic
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "maskableGraphic")
matchWidthOrHeight ::
                   forall f s a .
                     (Prelude.Functor f,
                      Lens.Labels.HasLens' s "matchWidthOrHeight" a) =>
                     Lens.Family2.LensLike' f s a
matchWidthOrHeight
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "matchWidthOrHeight")
material ::
         forall f s a .
           (Prelude.Functor f, Lens.Labels.HasLens' s "material" a) =>
           Lens.Family2.LensLike' f s a
material
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "material")
materialId ::
           forall f s a .
             (Prelude.Functor f, Lens.Labels.HasLens' s "materialId" a) =>
             Lens.Family2.LensLike' f s a
materialId
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "materialId")
maybe'alignByGeometry ::
                      forall f s a .
                        (Prelude.Functor f,
                         Lens.Labels.HasLens' s "maybe'alignByGeometry" a) =>
                        Lens.Family2.LensLike' f s a
maybe'alignByGeometry
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) ::
         (Lens.Labels.Proxy#) "maybe'alignByGeometry")
maybe'anchorMax ::
                forall f s a .
                  (Prelude.Functor f, Lens.Labels.HasLens' s "maybe'anchorMax" a) =>
                  Lens.Family2.LensLike' f s a
maybe'anchorMax
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "maybe'anchorMax")
maybe'anchorMin ::
                forall f s a .
                  (Prelude.Functor f, Lens.Labels.HasLens' s "maybe'anchorMin" a) =>
                  Lens.Family2.LensLike' f s a
maybe'anchorMin
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "maybe'anchorMin")
maybe'asset ::
            forall f s a .
              (Prelude.Functor f, Lens.Labels.HasLens' s "maybe'asset" a) =>
              Lens.Family2.LensLike' f s a
maybe'asset
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "maybe'asset")
maybe'behaviour ::
                forall f s a .
                  (Prelude.Functor f, Lens.Labels.HasLens' s "maybe'behaviour" a) =>
                  Lens.Family2.LensLike' f s a
maybe'behaviour
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "maybe'behaviour")
maybe'button ::
             forall f s a .
               (Prelude.Functor f, Lens.Labels.HasLens' s "maybe'button" a) =>
               Lens.Family2.LensLike' f s a
maybe'button
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "maybe'button")
maybe'cancelButton ::
                   forall f s a .
                     (Prelude.Functor f,
                      Lens.Labels.HasLens' s "maybe'cancelButton" a) =>
                     Lens.Family2.LensLike' f s a
maybe'cancelButton
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "maybe'cancelButton")
maybe'canvas ::
             forall f s a .
               (Prelude.Functor f, Lens.Labels.HasLens' s "maybe'canvas" a) =>
               Lens.Family2.LensLike' f s a
maybe'canvas
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "maybe'canvas")
maybe'canvasRenderer ::
                     forall f s a .
                       (Prelude.Functor f,
                        Lens.Labels.HasLens' s "maybe'canvasRenderer" a) =>
                       Lens.Family2.LensLike' f s a
maybe'canvasRenderer
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) ::
         (Lens.Labels.Proxy#) "maybe'canvasRenderer")
maybe'canvasScaler ::
                   forall f s a .
                     (Prelude.Functor f,
                      Lens.Labels.HasLens' s "maybe'canvasScaler" a) =>
                     Lens.Family2.LensLike' f s a
maybe'canvasScaler
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "maybe'canvasScaler")
maybe'color ::
            forall f s a .
              (Prelude.Functor f, Lens.Labels.HasLens' s "maybe'color" a) =>
              Lens.Family2.LensLike' f s a
maybe'color
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "maybe'color")
maybe'component ::
                forall f s a .
                  (Prelude.Functor f, Lens.Labels.HasLens' s "maybe'component" a) =>
                  Lens.Family2.LensLike' f s a
maybe'component
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "maybe'component")
maybe'cullTransparentMesh ::
                          forall f s a .
                            (Prelude.Functor f,
                             Lens.Labels.HasLens' s "maybe'cullTransparentMesh" a) =>
                            Lens.Family2.LensLike' f s a
maybe'cullTransparentMesh
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) ::
         (Lens.Labels.Proxy#) "maybe'cullTransparentMesh")
maybe'enabled ::
              forall f s a .
                (Prelude.Functor f, Lens.Labels.HasLens' s "maybe'enabled" a) =>
                Lens.Family2.LensLike' f s a
maybe'enabled
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "maybe'enabled")
maybe'eventSystem ::
                  forall f s a .
                    (Prelude.Functor f,
                     Lens.Labels.HasLens' s "maybe'eventSystem" a) =>
                    Lens.Family2.LensLike' f s a
maybe'eventSystem
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "maybe'eventSystem")
maybe'fillCenter ::
                 forall f s a .
                   (Prelude.Functor f, Lens.Labels.HasLens' s "maybe'fillCenter" a) =>
                   Lens.Family2.LensLike' f s a
maybe'fillCenter
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "maybe'fillCenter")
maybe'firstSelectedGameObject ::
                              forall f s a .
                                (Prelude.Functor f,
                                 Lens.Labels.HasLens' s "maybe'firstSelectedGameObject" a) =>
                                Lens.Family2.LensLike' f s a
maybe'firstSelectedGameObject
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) ::
         (Lens.Labels.Proxy#) "maybe'firstSelectedGameObject")
maybe'font ::
           forall f s a .
             (Prelude.Functor f, Lens.Labels.HasLens' s "maybe'font" a) =>
             Lens.Family2.LensLike' f s a
maybe'font
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "maybe'font")
maybe'fontSize ::
               forall f s a .
                 (Prelude.Functor f, Lens.Labels.HasLens' s "maybe'fontSize" a) =>
                 Lens.Family2.LensLike' f s a
maybe'fontSize
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "maybe'fontSize")
maybe'forceModuleActive ::
                        forall f s a .
                          (Prelude.Functor f,
                           Lens.Labels.HasLens' s "maybe'forceModuleActive" a) =>
                          Lens.Family2.LensLike' f s a
maybe'forceModuleActive
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) ::
         (Lens.Labels.Proxy#) "maybe'forceModuleActive")
maybe'gameObject ::
                 forall f s a .
                   (Prelude.Functor f, Lens.Labels.HasLens' s "maybe'gameObject" a) =>
                   Lens.Family2.LensLike' f s a
maybe'gameObject
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "maybe'gameObject")
maybe'graphic ::
              forall f s a .
                (Prelude.Functor f, Lens.Labels.HasLens' s "maybe'graphic" a) =>
                Lens.Family2.LensLike' f s a
maybe'graphic
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "maybe'graphic")
maybe'graphicRaycaster ::
                       forall f s a .
                         (Prelude.Functor f,
                          Lens.Labels.HasLens' s "maybe'graphicRaycaster" a) =>
                         Lens.Family2.LensLike' f s a
maybe'graphicRaycaster
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) ::
         (Lens.Labels.Proxy#) "maybe'graphicRaycaster")
maybe'horizontalAxis ::
                     forall f s a .
                       (Prelude.Functor f,
                        Lens.Labels.HasLens' s "maybe'horizontalAxis" a) =>
                       Lens.Family2.LensLike' f s a
maybe'horizontalAxis
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) ::
         (Lens.Labels.Proxy#) "maybe'horizontalAxis")
maybe'ignoreReversedGraphics ::
                             forall f s a .
                               (Prelude.Functor f,
                                Lens.Labels.HasLens' s "maybe'ignoreReversedGraphics" a) =>
                               Lens.Family2.LensLike' f s a
maybe'ignoreReversedGraphics
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) ::
         (Lens.Labels.Proxy#) "maybe'ignoreReversedGraphics")
maybe'image ::
            forall f s a .
              (Prelude.Functor f, Lens.Labels.HasLens' s "maybe'image" a) =>
              Lens.Family2.LensLike' f s a
maybe'image
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "maybe'image")
maybe'inputActionsPerSecond ::
                            forall f s a .
                              (Prelude.Functor f,
                               Lens.Labels.HasLens' s "maybe'inputActionsPerSecond" a) =>
                              Lens.Family2.LensLike' f s a
maybe'inputActionsPerSecond
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) ::
         (Lens.Labels.Proxy#) "maybe'inputActionsPerSecond")
maybe'interactable ::
                   forall f s a .
                     (Prelude.Functor f,
                      Lens.Labels.HasLens' s "maybe'interactable" a) =>
                     Lens.Family2.LensLike' f s a
maybe'interactable
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "maybe'interactable")
maybe'lineSpacing ::
                  forall f s a .
                    (Prelude.Functor f,
                     Lens.Labels.HasLens' s "maybe'lineSpacing" a) =>
                    Lens.Family2.LensLike' f s a
maybe'lineSpacing
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "maybe'lineSpacing")
maybe'localEulerAngles ::
                       forall f s a .
                         (Prelude.Functor f,
                          Lens.Labels.HasLens' s "maybe'localEulerAngles" a) =>
                         Lens.Family2.LensLike' f s a
maybe'localEulerAngles
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) ::
         (Lens.Labels.Proxy#) "maybe'localEulerAngles")
maybe'localPosition ::
                    forall f s a .
                      (Prelude.Functor f,
                       Lens.Labels.HasLens' s "maybe'localPosition" a) =>
                      Lens.Family2.LensLike' f s a
maybe'localPosition
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) ::
         (Lens.Labels.Proxy#) "maybe'localPosition")
maybe'localScale ::
                 forall f s a .
                   (Prelude.Functor f, Lens.Labels.HasLens' s "maybe'localScale" a) =>
                   Lens.Family2.LensLike' f s a
maybe'localScale
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "maybe'localScale")
maybe'maskable ::
               forall f s a .
                 (Prelude.Functor f, Lens.Labels.HasLens' s "maybe'maskable" a) =>
                 Lens.Family2.LensLike' f s a
maybe'maskable
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "maybe'maskable")
maybe'maskableGraphic ::
                      forall f s a .
                        (Prelude.Functor f,
                         Lens.Labels.HasLens' s "maybe'maskableGraphic" a) =>
                        Lens.Family2.LensLike' f s a
maybe'maskableGraphic
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) ::
         (Lens.Labels.Proxy#) "maybe'maskableGraphic")
maybe'matchWidthOrHeight ::
                         forall f s a .
                           (Prelude.Functor f,
                            Lens.Labels.HasLens' s "maybe'matchWidthOrHeight" a) =>
                           Lens.Family2.LensLike' f s a
maybe'matchWidthOrHeight
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) ::
         (Lens.Labels.Proxy#) "maybe'matchWidthOrHeight")
maybe'material ::
               forall f s a .
                 (Prelude.Functor f, Lens.Labels.HasLens' s "maybe'material" a) =>
                 Lens.Family2.LensLike' f s a
maybe'material
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "maybe'material")
maybe'parentGameObject ::
                       forall f s a .
                         (Prelude.Functor f,
                          Lens.Labels.HasLens' s "maybe'parentGameObject" a) =>
                         Lens.Family2.LensLike' f s a
maybe'parentGameObject
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) ::
         (Lens.Labels.Proxy#) "maybe'parentGameObject")
maybe'pivot ::
            forall f s a .
              (Prelude.Functor f, Lens.Labels.HasLens' s "maybe'pivot" a) =>
              Lens.Family2.LensLike' f s a
maybe'pivot
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "maybe'pivot")
maybe'pixelDragThreshold ::
                         forall f s a .
                           (Prelude.Functor f,
                            Lens.Labels.HasLens' s "maybe'pixelDragThreshold" a) =>
                           Lens.Family2.LensLike' f s a
maybe'pixelDragThreshold
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) ::
         (Lens.Labels.Proxy#) "maybe'pixelDragThreshold")
maybe'pixelPerfect ::
                   forall f s a .
                     (Prelude.Functor f,
                      Lens.Labels.HasLens' s "maybe'pixelPerfect" a) =>
                     Lens.Family2.LensLike' f s a
maybe'pixelPerfect
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "maybe'pixelPerfect")
maybe'prefab ::
             forall f s a .
               (Prelude.Functor f, Lens.Labels.HasLens' s "maybe'prefab" a) =>
               Lens.Family2.LensLike' f s a
maybe'prefab
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "maybe'prefab")
maybe'preserveAspect ::
                     forall f s a .
                       (Prelude.Functor f,
                        Lens.Labels.HasLens' s "maybe'preserveAspect" a) =>
                       Lens.Family2.LensLike' f s a
maybe'preserveAspect
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) ::
         (Lens.Labels.Proxy#) "maybe'preserveAspect")
maybe'raycastTarget ::
                    forall f s a .
                      (Prelude.Functor f,
                       Lens.Labels.HasLens' s "maybe'raycastTarget" a) =>
                      Lens.Family2.LensLike' f s a
maybe'raycastTarget
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) ::
         (Lens.Labels.Proxy#) "maybe'raycastTarget")
maybe'rectTransform ::
                    forall f s a .
                      (Prelude.Functor f,
                       Lens.Labels.HasLens' s "maybe'rectTransform" a) =>
                      Lens.Family2.LensLike' f s a
maybe'rectTransform
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) ::
         (Lens.Labels.Proxy#) "maybe'rectTransform")
maybe'referencePixelsPerUnit ::
                             forall f s a .
                               (Prelude.Functor f,
                                Lens.Labels.HasLens' s "maybe'referencePixelsPerUnit" a) =>
                               Lens.Family2.LensLike' f s a
maybe'referencePixelsPerUnit
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) ::
         (Lens.Labels.Proxy#) "maybe'referencePixelsPerUnit")
maybe'referenceResolution ::
                          forall f s a .
                            (Prelude.Functor f,
                             Lens.Labels.HasLens' s "maybe'referenceResolution" a) =>
                            Lens.Family2.LensLike' f s a
maybe'referenceResolution
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) ::
         (Lens.Labels.Proxy#) "maybe'referenceResolution")
maybe'repeatDelay ::
                  forall f s a .
                    (Prelude.Functor f,
                     Lens.Labels.HasLens' s "maybe'repeatDelay" a) =>
                    Lens.Family2.LensLike' f s a
maybe'repeatDelay
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "maybe'repeatDelay")
maybe'resizeTextForBestFit ::
                           forall f s a .
                             (Prelude.Functor f,
                              Lens.Labels.HasLens' s "maybe'resizeTextForBestFit" a) =>
                             Lens.Family2.LensLike' f s a
maybe'resizeTextForBestFit
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) ::
         (Lens.Labels.Proxy#) "maybe'resizeTextForBestFit")
maybe'scaleFactor ::
                  forall f s a .
                    (Prelude.Functor f,
                     Lens.Labels.HasLens' s "maybe'scaleFactor" a) =>
                    Lens.Family2.LensLike' f s a
maybe'scaleFactor
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "maybe'scaleFactor")
maybe'sendNavigationEvents ::
                           forall f s a .
                             (Prelude.Functor f,
                              Lens.Labels.HasLens' s "maybe'sendNavigationEvents" a) =>
                             Lens.Family2.LensLike' f s a
maybe'sendNavigationEvents
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) ::
         (Lens.Labels.Proxy#) "maybe'sendNavigationEvents")
maybe'sizeDelta ::
                forall f s a .
                  (Prelude.Functor f, Lens.Labels.HasLens' s "maybe'sizeDelta" a) =>
                  Lens.Family2.LensLike' f s a
maybe'sizeDelta
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "maybe'sizeDelta")
maybe'sortingOrder ::
                   forall f s a .
                     (Prelude.Functor f,
                      Lens.Labels.HasLens' s "maybe'sortingOrder" a) =>
                     Lens.Family2.LensLike' f s a
maybe'sortingOrder
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "maybe'sortingOrder")
maybe'sprite ::
             forall f s a .
               (Prelude.Functor f, Lens.Labels.HasLens' s "maybe'sprite" a) =>
               Lens.Family2.LensLike' f s a
maybe'sprite
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "maybe'sprite")
maybe'standaloneInputModule ::
                            forall f s a .
                              (Prelude.Functor f,
                               Lens.Labels.HasLens' s "maybe'standaloneInputModule" a) =>
                              Lens.Family2.LensLike' f s a
maybe'standaloneInputModule
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) ::
         (Lens.Labels.Proxy#) "maybe'standaloneInputModule")
maybe'submitButton ::
                   forall f s a .
                     (Prelude.Functor f,
                      Lens.Labels.HasLens' s "maybe'submitButton" a) =>
                     Lens.Family2.LensLike' f s a
maybe'submitButton
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "maybe'submitButton")
maybe'supportRichText ::
                      forall f s a .
                        (Prelude.Functor f,
                         Lens.Labels.HasLens' s "maybe'supportRichText" a) =>
                        Lens.Family2.LensLike' f s a
maybe'supportRichText
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) ::
         (Lens.Labels.Proxy#) "maybe'supportRichText")
maybe'targetDisplay ::
                    forall f s a .
                      (Prelude.Functor f,
                       Lens.Labels.HasLens' s "maybe'targetDisplay" a) =>
                      Lens.Family2.LensLike' f s a
maybe'targetDisplay
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) ::
         (Lens.Labels.Proxy#) "maybe'targetDisplay")
maybe'text ::
           forall f s a .
             (Prelude.Functor f, Lens.Labels.HasLens' s "maybe'text" a) =>
             Lens.Family2.LensLike' f s a
maybe'text
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "maybe'text")
maybe'transform ::
                forall f s a .
                  (Prelude.Functor f, Lens.Labels.HasLens' s "maybe'transform" a) =>
                  Lens.Family2.LensLike' f s a
maybe'transform
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "maybe'transform")
maybe'verticalAxis ::
                   forall f s a .
                     (Prelude.Functor f,
                      Lens.Labels.HasLens' s "maybe'verticalAxis" a) =>
                     Lens.Family2.LensLike' f s a
maybe'verticalAxis
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "maybe'verticalAxis")
name ::
     forall f s a .
       (Prelude.Functor f, Lens.Labels.HasLens' s "name" a) =>
       Lens.Family2.LensLike' f s a
name
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "name")
newObjectId ::
            forall f s a .
              (Prelude.Functor f, Lens.Labels.HasLens' s "newObjectId" a) =>
              Lens.Family2.LensLike' f s a
newObjectId
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "newObjectId")
otherNumber ::
            forall f s a .
              (Prelude.Functor f, Lens.Labels.HasLens' s "otherNumber" a) =>
              Lens.Family2.LensLike' f s a
otherNumber
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "otherNumber")
parentGameObject ::
                 forall f s a .
                   (Prelude.Functor f, Lens.Labels.HasLens' s "parentGameObject" a) =>
                   Lens.Family2.LensLike' f s a
parentGameObject
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "parentGameObject")
pivot ::
      forall f s a .
        (Prelude.Functor f, Lens.Labels.HasLens' s "pivot" a) =>
        Lens.Family2.LensLike' f s a
pivot
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "pivot")
pixelDragThreshold ::
                   forall f s a .
                     (Prelude.Functor f,
                      Lens.Labels.HasLens' s "pixelDragThreshold" a) =>
                     Lens.Family2.LensLike' f s a
pixelDragThreshold
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "pixelDragThreshold")
pixelPerfect ::
             forall f s a .
               (Prelude.Functor f, Lens.Labels.HasLens' s "pixelPerfect" a) =>
               Lens.Family2.LensLike' f s a
pixelPerfect
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "pixelPerfect")
prefab ::
       forall f s a .
         (Prelude.Functor f, Lens.Labels.HasLens' s "prefab" a) =>
         Lens.Family2.LensLike' f s a
prefab
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "prefab")
prefabId ::
         forall f s a .
           (Prelude.Functor f, Lens.Labels.HasLens' s "prefabId" a) =>
           Lens.Family2.LensLike' f s a
prefabId
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "prefabId")
preserveAspect ::
               forall f s a .
                 (Prelude.Functor f, Lens.Labels.HasLens' s "preserveAspect" a) =>
                 Lens.Family2.LensLike' f s a
preserveAspect
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "preserveAspect")
r ::
  forall f s a . (Prelude.Functor f, Lens.Labels.HasLens' s "r" a) =>
    Lens.Family2.LensLike' f s a
r = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "r")
raycastTarget ::
              forall f s a .
                (Prelude.Functor f, Lens.Labels.HasLens' s "raycastTarget" a) =>
                Lens.Family2.LensLike' f s a
raycastTarget
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "raycastTarget")
rectTransform ::
              forall f s a .
                (Prelude.Functor f, Lens.Labels.HasLens' s "rectTransform" a) =>
                Lens.Family2.LensLike' f s a
rectTransform
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "rectTransform")
referencePixelsPerUnit ::
                       forall f s a .
                         (Prelude.Functor f,
                          Lens.Labels.HasLens' s "referencePixelsPerUnit" a) =>
                         Lens.Family2.LensLike' f s a
referencePixelsPerUnit
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) ::
         (Lens.Labels.Proxy#) "referencePixelsPerUnit")
referenceResolution ::
                    forall f s a .
                      (Prelude.Functor f,
                       Lens.Labels.HasLens' s "referenceResolution" a) =>
                      Lens.Family2.LensLike' f s a
referenceResolution
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) ::
         (Lens.Labels.Proxy#) "referenceResolution")
renderMode ::
           forall f s a .
             (Prelude.Functor f, Lens.Labels.HasLens' s "renderMode" a) =>
             Lens.Family2.LensLike' f s a
renderMode
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "renderMode")
repeatDelay ::
            forall f s a .
              (Prelude.Functor f, Lens.Labels.HasLens' s "repeatDelay" a) =>
              Lens.Family2.LensLike' f s a
repeatDelay
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "repeatDelay")
resizeTextForBestFit ::
                     forall f s a .
                       (Prelude.Functor f,
                        Lens.Labels.HasLens' s "resizeTextForBestFit" a) =>
                       Lens.Family2.LensLike' f s a
resizeTextForBestFit
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) ::
         (Lens.Labels.Proxy#) "resizeTextForBestFit")
scaleFactor ::
            forall f s a .
              (Prelude.Functor f, Lens.Labels.HasLens' s "scaleFactor" a) =>
              Lens.Family2.LensLike' f s a
scaleFactor
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "scaleFactor")
screenMatchMode ::
                forall f s a .
                  (Prelude.Functor f, Lens.Labels.HasLens' s "screenMatchMode" a) =>
                  Lens.Family2.LensLike' f s a
screenMatchMode
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "screenMatchMode")
sendNavigationEvents ::
                     forall f s a .
                       (Prelude.Functor f,
                        Lens.Labels.HasLens' s "sendNavigationEvents" a) =>
                       Lens.Family2.LensLike' f s a
sendNavigationEvents
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) ::
         (Lens.Labels.Proxy#) "sendNavigationEvents")
sizeDelta ::
          forall f s a .
            (Prelude.Functor f, Lens.Labels.HasLens' s "sizeDelta" a) =>
            Lens.Family2.LensLike' f s a
sizeDelta
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "sizeDelta")
sortingOrder ::
             forall f s a .
               (Prelude.Functor f, Lens.Labels.HasLens' s "sortingOrder" a) =>
               Lens.Family2.LensLike' f s a
sortingOrder
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "sortingOrder")
sprite ::
       forall f s a .
         (Prelude.Functor f, Lens.Labels.HasLens' s "sprite" a) =>
         Lens.Family2.LensLike' f s a
sprite
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "sprite")
spriteId ::
         forall f s a .
           (Prelude.Functor f, Lens.Labels.HasLens' s "spriteId" a) =>
           Lens.Family2.LensLike' f s a
spriteId
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "spriteId")
standaloneInputModule ::
                      forall f s a .
                        (Prelude.Functor f,
                         Lens.Labels.HasLens' s "standaloneInputModule" a) =>
                        Lens.Family2.LensLike' f s a
standaloneInputModule
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) ::
         (Lens.Labels.Proxy#) "standaloneInputModule")
submitButton ::
             forall f s a .
               (Prelude.Functor f, Lens.Labels.HasLens' s "submitButton" a) =>
               Lens.Family2.LensLike' f s a
submitButton
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "submitButton")
supportRichText ::
                forall f s a .
                  (Prelude.Functor f, Lens.Labels.HasLens' s "supportRichText" a) =>
                  Lens.Family2.LensLike' f s a
supportRichText
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "supportRichText")
systemCommands ::
               forall f s a .
                 (Prelude.Functor f, Lens.Labels.HasLens' s "systemCommands" a) =>
                 Lens.Family2.LensLike' f s a
systemCommands
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "systemCommands")
targetDisplay ::
              forall f s a .
                (Prelude.Functor f, Lens.Labels.HasLens' s "targetDisplay" a) =>
                Lens.Family2.LensLike' f s a
targetDisplay
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "targetDisplay")
text ::
     forall f s a .
       (Prelude.Functor f, Lens.Labels.HasLens' s "text" a) =>
       Lens.Family2.LensLike' f s a
text
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "text")
transform ::
          forall f s a .
            (Prelude.Functor f, Lens.Labels.HasLens' s "transform" a) =>
            Lens.Family2.LensLike' f s a
transform
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "transform")
uiScaleMode ::
            forall f s a .
              (Prelude.Functor f, Lens.Labels.HasLens' s "uiScaleMode" a) =>
              Lens.Family2.LensLike' f s a
uiScaleMode
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "uiScaleMode")
updateGameObjects ::
                  forall f s a .
                    (Prelude.Functor f,
                     Lens.Labels.HasLens' s "updateGameObjects" a) =>
                    Lens.Family2.LensLike' f s a
updateGameObjects
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "updateGameObjects")
verticalAxis ::
             forall f s a .
               (Prelude.Functor f, Lens.Labels.HasLens' s "verticalAxis" a) =>
               Lens.Family2.LensLike' f s a
verticalAxis
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "verticalAxis")
verticalOverflow ::
                 forall f s a .
                   (Prelude.Functor f, Lens.Labels.HasLens' s "verticalOverflow" a) =>
                   Lens.Family2.LensLike' f s a
verticalOverflow
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "verticalOverflow")
x ::
  forall f s a . (Prelude.Functor f, Lens.Labels.HasLens' s "x" a) =>
    Lens.Family2.LensLike' f s a
x = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "x")
y ::
  forall f s a . (Prelude.Functor f, Lens.Labels.HasLens' s "y" a) =>
    Lens.Family2.LensLike' f s a
y = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "y")
z ::
  forall f s a . (Prelude.Functor f, Lens.Labels.HasLens' s "z" a) =>
    Lens.Family2.LensLike' f s a
z = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "z")