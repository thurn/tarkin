{- This file was auto-generated from google/protobuf/wrappers.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies,
  UndecidableInstances, GeneralizedNewtypeDeriving,
  MultiParamTypeClasses, FlexibleContexts, FlexibleInstances,
  PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports#-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports#-}
module Proto.Google.Protobuf.Wrappers
       (BoolValue(), BytesValue(), DoubleValue(), FloatValue(),
        Int32Value(), Int64Value(), StringValue(), UInt32Value(),
        UInt64Value())
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

{- | Fields :

    * 'Proto.Google.Protobuf.Wrappers_Fields.value' @:: Lens' BoolValue Prelude.Bool@
 -}
data BoolValue = BoolValue{_BoolValue'value :: !Prelude.Bool,
                           _BoolValue'_unknownFields :: !Data.ProtoLens.FieldSet}
                   deriving (Prelude.Eq, Prelude.Ord)
instance Prelude.Show BoolValue where
        showsPrec _ __x __s
          = Prelude.showChar '{'
              (Prelude.showString (Data.ProtoLens.showMessageShort __x)
                 (Prelude.showChar '}' __s))
instance Lens.Labels.HasLens' BoolValue "value" (Prelude.Bool)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _BoolValue'value
                 (\ x__ y__ -> x__{_BoolValue'value = y__}))
              Prelude.id
instance Data.ProtoLens.Message BoolValue where
        messageName _ = Data.Text.pack "google.protobuf.BoolValue"
        fieldsByTag
          = let value__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "value"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                         Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "value")))
                      :: Data.ProtoLens.FieldDescriptor BoolValue
              in
              Data.Map.fromList [(Data.ProtoLens.Tag 1, value__field_descriptor)]
        unknownFields
          = Lens.Family2.Unchecked.lens _BoolValue'_unknownFields
              (\ x__ y__ -> x__{_BoolValue'_unknownFields = y__})
        defMessage
          = BoolValue{_BoolValue'value = Data.ProtoLens.fieldDefault,
                      _BoolValue'_unknownFields = ([])}
instance Control.DeepSeq.NFData BoolValue where
        rnf
          = \ x__ ->
              Control.DeepSeq.deepseq (_BoolValue'_unknownFields x__)
                (Control.DeepSeq.deepseq (_BoolValue'value x__) (()))
{- | Fields :

    * 'Proto.Google.Protobuf.Wrappers_Fields.value' @:: Lens' BytesValue Data.ByteString.ByteString@
 -}
data BytesValue = BytesValue{_BytesValue'value ::
                             !Data.ByteString.ByteString,
                             _BytesValue'_unknownFields :: !Data.ProtoLens.FieldSet}
                    deriving (Prelude.Eq, Prelude.Ord)
instance Prelude.Show BytesValue where
        showsPrec _ __x __s
          = Prelude.showChar '{'
              (Prelude.showString (Data.ProtoLens.showMessageShort __x)
                 (Prelude.showChar '}' __s))
instance Lens.Labels.HasLens' BytesValue "value"
           (Data.ByteString.ByteString)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _BytesValue'value
                 (\ x__ y__ -> x__{_BytesValue'value = y__}))
              Prelude.id
instance Data.ProtoLens.Message BytesValue where
        messageName _ = Data.Text.pack "google.protobuf.BytesValue"
        fieldsByTag
          = let value__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "value"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.BytesField ::
                         Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "value")))
                      :: Data.ProtoLens.FieldDescriptor BytesValue
              in
              Data.Map.fromList [(Data.ProtoLens.Tag 1, value__field_descriptor)]
        unknownFields
          = Lens.Family2.Unchecked.lens _BytesValue'_unknownFields
              (\ x__ y__ -> x__{_BytesValue'_unknownFields = y__})
        defMessage
          = BytesValue{_BytesValue'value = Data.ProtoLens.fieldDefault,
                       _BytesValue'_unknownFields = ([])}
instance Control.DeepSeq.NFData BytesValue where
        rnf
          = \ x__ ->
              Control.DeepSeq.deepseq (_BytesValue'_unknownFields x__)
                (Control.DeepSeq.deepseq (_BytesValue'value x__) (()))
{- | Fields :

    * 'Proto.Google.Protobuf.Wrappers_Fields.value' @:: Lens' DoubleValue Prelude.Double@
 -}
data DoubleValue = DoubleValue{_DoubleValue'value ::
                               !Prelude.Double,
                               _DoubleValue'_unknownFields :: !Data.ProtoLens.FieldSet}
                     deriving (Prelude.Eq, Prelude.Ord)
instance Prelude.Show DoubleValue where
        showsPrec _ __x __s
          = Prelude.showChar '{'
              (Prelude.showString (Data.ProtoLens.showMessageShort __x)
                 (Prelude.showChar '}' __s))
instance Lens.Labels.HasLens' DoubleValue "value" (Prelude.Double)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _DoubleValue'value
                 (\ x__ y__ -> x__{_DoubleValue'value = y__}))
              Prelude.id
instance Data.ProtoLens.Message DoubleValue where
        messageName _ = Data.Text.pack "google.protobuf.DoubleValue"
        fieldsByTag
          = let value__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "value"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.DoubleField ::
                         Data.ProtoLens.FieldTypeDescriptor Prelude.Double)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "value")))
                      :: Data.ProtoLens.FieldDescriptor DoubleValue
              in
              Data.Map.fromList [(Data.ProtoLens.Tag 1, value__field_descriptor)]
        unknownFields
          = Lens.Family2.Unchecked.lens _DoubleValue'_unknownFields
              (\ x__ y__ -> x__{_DoubleValue'_unknownFields = y__})
        defMessage
          = DoubleValue{_DoubleValue'value = Data.ProtoLens.fieldDefault,
                        _DoubleValue'_unknownFields = ([])}
instance Control.DeepSeq.NFData DoubleValue where
        rnf
          = \ x__ ->
              Control.DeepSeq.deepseq (_DoubleValue'_unknownFields x__)
                (Control.DeepSeq.deepseq (_DoubleValue'value x__) (()))
{- | Fields :

    * 'Proto.Google.Protobuf.Wrappers_Fields.value' @:: Lens' FloatValue Prelude.Float@
 -}
data FloatValue = FloatValue{_FloatValue'value :: !Prelude.Float,
                             _FloatValue'_unknownFields :: !Data.ProtoLens.FieldSet}
                    deriving (Prelude.Eq, Prelude.Ord)
instance Prelude.Show FloatValue where
        showsPrec _ __x __s
          = Prelude.showChar '{'
              (Prelude.showString (Data.ProtoLens.showMessageShort __x)
                 (Prelude.showChar '}' __s))
instance Lens.Labels.HasLens' FloatValue "value" (Prelude.Float)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _FloatValue'value
                 (\ x__ y__ -> x__{_FloatValue'value = y__}))
              Prelude.id
instance Data.ProtoLens.Message FloatValue where
        messageName _ = Data.Text.pack "google.protobuf.FloatValue"
        fieldsByTag
          = let value__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "value"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.FloatField ::
                         Data.ProtoLens.FieldTypeDescriptor Prelude.Float)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "value")))
                      :: Data.ProtoLens.FieldDescriptor FloatValue
              in
              Data.Map.fromList [(Data.ProtoLens.Tag 1, value__field_descriptor)]
        unknownFields
          = Lens.Family2.Unchecked.lens _FloatValue'_unknownFields
              (\ x__ y__ -> x__{_FloatValue'_unknownFields = y__})
        defMessage
          = FloatValue{_FloatValue'value = Data.ProtoLens.fieldDefault,
                       _FloatValue'_unknownFields = ([])}
instance Control.DeepSeq.NFData FloatValue where
        rnf
          = \ x__ ->
              Control.DeepSeq.deepseq (_FloatValue'_unknownFields x__)
                (Control.DeepSeq.deepseq (_FloatValue'value x__) (()))
{- | Fields :

    * 'Proto.Google.Protobuf.Wrappers_Fields.value' @:: Lens' Int32Value Data.Int.Int32@
 -}
data Int32Value = Int32Value{_Int32Value'value :: !Data.Int.Int32,
                             _Int32Value'_unknownFields :: !Data.ProtoLens.FieldSet}
                    deriving (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Int32Value where
        showsPrec _ __x __s
          = Prelude.showChar '{'
              (Prelude.showString (Data.ProtoLens.showMessageShort __x)
                 (Prelude.showChar '}' __s))
instance Lens.Labels.HasLens' Int32Value "value" (Data.Int.Int32)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _Int32Value'value
                 (\ x__ y__ -> x__{_Int32Value'value = y__}))
              Prelude.id
instance Data.ProtoLens.Message Int32Value where
        messageName _ = Data.Text.pack "google.protobuf.Int32Value"
        fieldsByTag
          = let value__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "value"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "value")))
                      :: Data.ProtoLens.FieldDescriptor Int32Value
              in
              Data.Map.fromList [(Data.ProtoLens.Tag 1, value__field_descriptor)]
        unknownFields
          = Lens.Family2.Unchecked.lens _Int32Value'_unknownFields
              (\ x__ y__ -> x__{_Int32Value'_unknownFields = y__})
        defMessage
          = Int32Value{_Int32Value'value = Data.ProtoLens.fieldDefault,
                       _Int32Value'_unknownFields = ([])}
instance Control.DeepSeq.NFData Int32Value where
        rnf
          = \ x__ ->
              Control.DeepSeq.deepseq (_Int32Value'_unknownFields x__)
                (Control.DeepSeq.deepseq (_Int32Value'value x__) (()))
{- | Fields :

    * 'Proto.Google.Protobuf.Wrappers_Fields.value' @:: Lens' Int64Value Data.Int.Int64@
 -}
data Int64Value = Int64Value{_Int64Value'value :: !Data.Int.Int64,
                             _Int64Value'_unknownFields :: !Data.ProtoLens.FieldSet}
                    deriving (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Int64Value where
        showsPrec _ __x __s
          = Prelude.showChar '{'
              (Prelude.showString (Data.ProtoLens.showMessageShort __x)
                 (Prelude.showChar '}' __s))
instance Lens.Labels.HasLens' Int64Value "value" (Data.Int.Int64)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _Int64Value'value
                 (\ x__ y__ -> x__{_Int64Value'value = y__}))
              Prelude.id
instance Data.ProtoLens.Message Int64Value where
        messageName _ = Data.Text.pack "google.protobuf.Int64Value"
        fieldsByTag
          = let value__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "value"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "value")))
                      :: Data.ProtoLens.FieldDescriptor Int64Value
              in
              Data.Map.fromList [(Data.ProtoLens.Tag 1, value__field_descriptor)]
        unknownFields
          = Lens.Family2.Unchecked.lens _Int64Value'_unknownFields
              (\ x__ y__ -> x__{_Int64Value'_unknownFields = y__})
        defMessage
          = Int64Value{_Int64Value'value = Data.ProtoLens.fieldDefault,
                       _Int64Value'_unknownFields = ([])}
instance Control.DeepSeq.NFData Int64Value where
        rnf
          = \ x__ ->
              Control.DeepSeq.deepseq (_Int64Value'_unknownFields x__)
                (Control.DeepSeq.deepseq (_Int64Value'value x__) (()))
{- | Fields :

    * 'Proto.Google.Protobuf.Wrappers_Fields.value' @:: Lens' StringValue Data.Text.Text@
 -}
data StringValue = StringValue{_StringValue'value ::
                               !Data.Text.Text,
                               _StringValue'_unknownFields :: !Data.ProtoLens.FieldSet}
                     deriving (Prelude.Eq, Prelude.Ord)
instance Prelude.Show StringValue where
        showsPrec _ __x __s
          = Prelude.showChar '{'
              (Prelude.showString (Data.ProtoLens.showMessageShort __x)
                 (Prelude.showChar '}' __s))
instance Lens.Labels.HasLens' StringValue "value" (Data.Text.Text)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _StringValue'value
                 (\ x__ y__ -> x__{_StringValue'value = y__}))
              Prelude.id
instance Data.ProtoLens.Message StringValue where
        messageName _ = Data.Text.pack "google.protobuf.StringValue"
        fieldsByTag
          = let value__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "value"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "value")))
                      :: Data.ProtoLens.FieldDescriptor StringValue
              in
              Data.Map.fromList [(Data.ProtoLens.Tag 1, value__field_descriptor)]
        unknownFields
          = Lens.Family2.Unchecked.lens _StringValue'_unknownFields
              (\ x__ y__ -> x__{_StringValue'_unknownFields = y__})
        defMessage
          = StringValue{_StringValue'value = Data.ProtoLens.fieldDefault,
                        _StringValue'_unknownFields = ([])}
instance Control.DeepSeq.NFData StringValue where
        rnf
          = \ x__ ->
              Control.DeepSeq.deepseq (_StringValue'_unknownFields x__)
                (Control.DeepSeq.deepseq (_StringValue'value x__) (()))
{- | Fields :

    * 'Proto.Google.Protobuf.Wrappers_Fields.value' @:: Lens' UInt32Value Data.Word.Word32@
 -}
data UInt32Value = UInt32Value{_UInt32Value'value ::
                               !Data.Word.Word32,
                               _UInt32Value'_unknownFields :: !Data.ProtoLens.FieldSet}
                     deriving (Prelude.Eq, Prelude.Ord)
instance Prelude.Show UInt32Value where
        showsPrec _ __x __s
          = Prelude.showChar '{'
              (Prelude.showString (Data.ProtoLens.showMessageShort __x)
                 (Prelude.showChar '}' __s))
instance Lens.Labels.HasLens' UInt32Value "value"
           (Data.Word.Word32)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _UInt32Value'value
                 (\ x__ y__ -> x__{_UInt32Value'value = y__}))
              Prelude.id
instance Data.ProtoLens.Message UInt32Value where
        messageName _ = Data.Text.pack "google.protobuf.UInt32Value"
        fieldsByTag
          = let value__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "value"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "value")))
                      :: Data.ProtoLens.FieldDescriptor UInt32Value
              in
              Data.Map.fromList [(Data.ProtoLens.Tag 1, value__field_descriptor)]
        unknownFields
          = Lens.Family2.Unchecked.lens _UInt32Value'_unknownFields
              (\ x__ y__ -> x__{_UInt32Value'_unknownFields = y__})
        defMessage
          = UInt32Value{_UInt32Value'value = Data.ProtoLens.fieldDefault,
                        _UInt32Value'_unknownFields = ([])}
instance Control.DeepSeq.NFData UInt32Value where
        rnf
          = \ x__ ->
              Control.DeepSeq.deepseq (_UInt32Value'_unknownFields x__)
                (Control.DeepSeq.deepseq (_UInt32Value'value x__) (()))
{- | Fields :

    * 'Proto.Google.Protobuf.Wrappers_Fields.value' @:: Lens' UInt64Value Data.Word.Word64@
 -}
data UInt64Value = UInt64Value{_UInt64Value'value ::
                               !Data.Word.Word64,
                               _UInt64Value'_unknownFields :: !Data.ProtoLens.FieldSet}
                     deriving (Prelude.Eq, Prelude.Ord)
instance Prelude.Show UInt64Value where
        showsPrec _ __x __s
          = Prelude.showChar '{'
              (Prelude.showString (Data.ProtoLens.showMessageShort __x)
                 (Prelude.showChar '}' __s))
instance Lens.Labels.HasLens' UInt64Value "value"
           (Data.Word.Word64)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _UInt64Value'value
                 (\ x__ y__ -> x__{_UInt64Value'value = y__}))
              Prelude.id
instance Data.ProtoLens.Message UInt64Value where
        messageName _ = Data.Text.pack "google.protobuf.UInt64Value"
        fieldsByTag
          = let value__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "value"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "value")))
                      :: Data.ProtoLens.FieldDescriptor UInt64Value
              in
              Data.Map.fromList [(Data.ProtoLens.Tag 1, value__field_descriptor)]
        unknownFields
          = Lens.Family2.Unchecked.lens _UInt64Value'_unknownFields
              (\ x__ y__ -> x__{_UInt64Value'_unknownFields = y__})
        defMessage
          = UInt64Value{_UInt64Value'value = Data.ProtoLens.fieldDefault,
                        _UInt64Value'_unknownFields = ([])}
instance Control.DeepSeq.NFData UInt64Value where
        rnf
          = \ x__ ->
              Control.DeepSeq.deepseq (_UInt64Value'_unknownFields x__)
                (Control.DeepSeq.deepseq (_UInt64Value'value x__) (()))