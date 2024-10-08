// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'content_wrapper.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$ContentWrapperCWProxy {
  ContentWrapper text(String? text);

  ContentWrapper role(String? role);

  ContentWrapper image(Uint8List? image);

  ContentWrapper isStarred(bool isStarred);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ContentWrapper(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ContentWrapper(...).copyWith(id: 12, name: "My name")
  /// ````
  ContentWrapper call({
    String? text,
    String? role,
    Uint8List? image,
    bool? isStarred,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfContentWrapper.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfContentWrapper.copyWith.fieldName(...)`
class _$ContentWrapperCWProxyImpl implements _$ContentWrapperCWProxy {
  const _$ContentWrapperCWProxyImpl(this._value);

  final ContentWrapper _value;

  @override
  ContentWrapper text(String? text) => this(text: text);

  @override
  ContentWrapper role(String? role) => this(role: role);

  @override
  ContentWrapper image(Uint8List? image) => this(image: image);

  @override
  ContentWrapper isStarred(bool isStarred) => this(isStarred: isStarred);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ContentWrapper(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ContentWrapper(...).copyWith(id: 12, name: "My name")
  /// ````
  ContentWrapper call({
    Object? text = const $CopyWithPlaceholder(),
    Object? role = const $CopyWithPlaceholder(),
    Object? image = const $CopyWithPlaceholder(),
    Object? isStarred = const $CopyWithPlaceholder(),
  }) {
    return ContentWrapper(
      text: text == const $CopyWithPlaceholder()
          ? _value.text
          // ignore: cast_nullable_to_non_nullable
          : text as String?,
      role: role == const $CopyWithPlaceholder()
          ? _value.role
          // ignore: cast_nullable_to_non_nullable
          : role as String?,
      image: image == const $CopyWithPlaceholder()
          ? _value.image
          // ignore: cast_nullable_to_non_nullable
          : image as Uint8List?,
      isStarred: isStarred == const $CopyWithPlaceholder() || isStarred == null
          ? _value.isStarred
          // ignore: cast_nullable_to_non_nullable
          : isStarred as bool,
    );
  }
}

extension $ContentWrapperCopyWith on ContentWrapper {
  /// Returns a callable class that can be used as follows: `instanceOfContentWrapper.copyWith(...)` or like so:`instanceOfContentWrapper.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$ContentWrapperCWProxy get copyWith => _$ContentWrapperCWProxyImpl(this);
}

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ContentWrapperAdapter extends TypeAdapter<ContentWrapper> {
  @override
  final int typeId = 1;

  @override
  ContentWrapper read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ContentWrapper(
      text: fields[0] as String?,
      role: fields[1] as String?,
      image: fields[2] as Uint8List?,
      isStarred: fields[3] as bool,
    );
  }

  @override
  void write(BinaryWriter writer, ContentWrapper obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.text)
      ..writeByte(1)
      ..write(obj.role)
      ..writeByte(2)
      ..write(obj.image)
      ..writeByte(3)
      ..write(obj.isStarred);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ContentWrapperAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
