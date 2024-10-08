// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_model.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$ChatModelCWProxy {
  ChatModel contentList(List<ContentWrapper?> contentList);

  ChatModel chatTitle(String? chatTitle);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ChatModel(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ChatModel(...).copyWith(id: 12, name: "My name")
  /// ````
  ChatModel call({
    List<ContentWrapper?>? contentList,
    String? chatTitle,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfChatModel.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfChatModel.copyWith.fieldName(...)`
class _$ChatModelCWProxyImpl implements _$ChatModelCWProxy {
  const _$ChatModelCWProxyImpl(this._value);

  final ChatModel _value;

  @override
  ChatModel contentList(List<ContentWrapper?> contentList) =>
      this(contentList: contentList);

  @override
  ChatModel chatTitle(String? chatTitle) => this(chatTitle: chatTitle);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ChatModel(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ChatModel(...).copyWith(id: 12, name: "My name")
  /// ````
  ChatModel call({
    Object? contentList = const $CopyWithPlaceholder(),
    Object? chatTitle = const $CopyWithPlaceholder(),
  }) {
    return ChatModel(
      contentList:
          contentList == const $CopyWithPlaceholder() || contentList == null
              ? _value.contentList
              // ignore: cast_nullable_to_non_nullable
              : contentList as List<ContentWrapper?>,
      chatTitle: chatTitle == const $CopyWithPlaceholder()
          ? _value.chatTitle
          // ignore: cast_nullable_to_non_nullable
          : chatTitle as String?,
    );
  }
}

extension $ChatModelCopyWith on ChatModel {
  /// Returns a callable class that can be used as follows: `instanceOfChatModel.copyWith(...)` or like so:`instanceOfChatModel.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$ChatModelCWProxy get copyWith => _$ChatModelCWProxyImpl(this);
}

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ChatModelAdapter extends TypeAdapter<ChatModel> {
  @override
  final int typeId = 0;

  @override
  ChatModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ChatModel(
      contentList: (fields[0] as List).cast<ContentWrapper?>(),
      chatTitle: fields[1] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, ChatModel obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.contentList)
      ..writeByte(1)
      ..write(obj.chatTitle);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ChatModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
