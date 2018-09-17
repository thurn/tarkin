{- This file was auto-generated from data.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies,
  UndecidableInstances, GeneralizedNewtypeDeriving,
  MultiParamTypeClasses, FlexibleContexts, FlexibleInstances,
  PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports#-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports#-}
module Proto.Data (Request(), Response()) where
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