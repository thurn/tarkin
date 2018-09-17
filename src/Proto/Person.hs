{- This file was auto-generated from person.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies,
  UndecidableInstances, GeneralizedNewtypeDeriving,
  MultiParamTypeClasses, FlexibleContexts, FlexibleInstances,
  PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports#-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports#-}
module Proto.Person (Address(), Person()) where
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

{- | Fields :

    * 'Proto.Person_Fields.street' @:: Lens' Address Data.Text.Text@
    * 'Proto.Person_Fields.zipCode' @:: Lens' Address Data.Text.Text@
 -}
data Address = Address{_Address'street :: !Data.Text.Text,
                       _Address'zipCode :: !Data.Text.Text,
                       _Address'_unknownFields :: !Data.ProtoLens.FieldSet}
                 deriving (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Address where
        showsPrec _ __x __s
          = Prelude.showChar '{'
              (Prelude.showString (Data.ProtoLens.showMessageShort __x)
                 (Prelude.showChar '}' __s))
instance Lens.Labels.HasLens' Address "street" (Data.Text.Text)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _Address'street
                 (\ x__ y__ -> x__{_Address'street = y__}))
              Prelude.id
instance Lens.Labels.HasLens' Address "zipCode" (Data.Text.Text)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _Address'zipCode
                 (\ x__ y__ -> x__{_Address'zipCode = y__}))
              Prelude.id
instance Data.ProtoLens.Message Address where
        messageName _ = Data.Text.pack "Address"
        fieldsByTag
          = let street__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "street"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "street")))
                      :: Data.ProtoLens.FieldDescriptor Address
                zipCode__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "zip_code"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "zipCode")))
                      :: Data.ProtoLens.FieldDescriptor Address
              in
              Data.Map.fromList
                [(Data.ProtoLens.Tag 1, street__field_descriptor),
                 (Data.ProtoLens.Tag 2, zipCode__field_descriptor)]
        unknownFields
          = Lens.Family2.Unchecked.lens _Address'_unknownFields
              (\ x__ y__ -> x__{_Address'_unknownFields = y__})
        defMessage
          = Address{_Address'street = Data.ProtoLens.fieldDefault,
                    _Address'zipCode = Data.ProtoLens.fieldDefault,
                    _Address'_unknownFields = ([])}
instance Control.DeepSeq.NFData Address where
        rnf
          = \ x__ ->
              Control.DeepSeq.deepseq (_Address'_unknownFields x__)
                (Control.DeepSeq.deepseq (_Address'street x__)
                   (Control.DeepSeq.deepseq (_Address'zipCode x__) (())))
{- | Fields :

    * 'Proto.Person_Fields.name' @:: Lens' Person Data.Text.Text@
    * 'Proto.Person_Fields.age' @:: Lens' Person Data.Int.Int32@
    * 'Proto.Person_Fields.addresses' @:: Lens' Person [Address]@
 -}
data Person = Person{_Person'name :: !Data.Text.Text,
                     _Person'age :: !Data.Int.Int32, _Person'addresses :: ![Address],
                     _Person'_unknownFields :: !Data.ProtoLens.FieldSet}
                deriving (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Person where
        showsPrec _ __x __s
          = Prelude.showChar '{'
              (Prelude.showString (Data.ProtoLens.showMessageShort __x)
                 (Prelude.showChar '}' __s))
instance Lens.Labels.HasLens' Person "name" (Data.Text.Text) where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _Person'name
                 (\ x__ y__ -> x__{_Person'name = y__}))
              Prelude.id
instance Lens.Labels.HasLens' Person "age" (Data.Int.Int32) where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _Person'age
                 (\ x__ y__ -> x__{_Person'age = y__}))
              Prelude.id
instance Lens.Labels.HasLens' Person "addresses" ([Address]) where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _Person'addresses
                 (\ x__ y__ -> x__{_Person'addresses = y__}))
              Prelude.id
instance Data.ProtoLens.Message Person where
        messageName _ = Data.Text.pack "Person"
        fieldsByTag
          = let name__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "name"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "name")))
                      :: Data.ProtoLens.FieldDescriptor Person
                age__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "age"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "age")))
                      :: Data.ProtoLens.FieldDescriptor Person
                addresses__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "addresses"
                      (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                         Data.ProtoLens.FieldTypeDescriptor Address)
                      (Data.ProtoLens.RepeatedField Data.ProtoLens.Unpacked
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "addresses")))
                      :: Data.ProtoLens.FieldDescriptor Person
              in
              Data.Map.fromList
                [(Data.ProtoLens.Tag 1, name__field_descriptor),
                 (Data.ProtoLens.Tag 2, age__field_descriptor),
                 (Data.ProtoLens.Tag 3, addresses__field_descriptor)]
        unknownFields
          = Lens.Family2.Unchecked.lens _Person'_unknownFields
              (\ x__ y__ -> x__{_Person'_unknownFields = y__})
        defMessage
          = Person{_Person'name = Data.ProtoLens.fieldDefault,
                   _Person'age = Data.ProtoLens.fieldDefault, _Person'addresses = [],
                   _Person'_unknownFields = ([])}
instance Control.DeepSeq.NFData Person where
        rnf
          = \ x__ ->
              Control.DeepSeq.deepseq (_Person'_unknownFields x__)
                (Control.DeepSeq.deepseq (_Person'name x__)
                   (Control.DeepSeq.deepseq (_Person'age x__)
                      (Control.DeepSeq.deepseq (_Person'addresses x__) (()))))