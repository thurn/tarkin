{- This file was auto-generated from person.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies,
  UndecidableInstances, GeneralizedNewtypeDeriving,
  MultiParamTypeClasses, FlexibleContexts, FlexibleInstances,
  PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports#-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports#-}
module Proto.Person_Fields where
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

addresses ::
          forall f s a .
            (Prelude.Functor f, Lens.Labels.HasLens' s "addresses" a) =>
            Lens.Family2.LensLike' f s a
addresses
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "addresses")
age ::
    forall f s a .
      (Prelude.Functor f, Lens.Labels.HasLens' s "age" a) =>
      Lens.Family2.LensLike' f s a
age
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "age")
name ::
     forall f s a .
       (Prelude.Functor f, Lens.Labels.HasLens' s "name" a) =>
       Lens.Family2.LensLike' f s a
name
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "name")
street ::
       forall f s a .
         (Prelude.Functor f, Lens.Labels.HasLens' s "street" a) =>
         Lens.Family2.LensLike' f s a
street
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "street")
zipCode ::
        forall f s a .
          (Prelude.Functor f, Lens.Labels.HasLens' s "zipCode" a) =>
          Lens.Family2.LensLike' f s a
zipCode
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "zipCode")