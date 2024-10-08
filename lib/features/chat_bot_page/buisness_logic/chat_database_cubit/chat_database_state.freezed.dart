// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_database_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ChatDatabaseState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadingChatSession,
    required TResult Function(String error) error,
    required TResult Function(ContentWrapper content) messageStarred,
    required TResult Function(List<ChatModel> chatModelList) chatSessionsLoaded,
    required TResult Function(ChatModel chatModel) singleChatSessionLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadingChatSession,
    TResult? Function(String error)? error,
    TResult? Function(ContentWrapper content)? messageStarred,
    TResult? Function(List<ChatModel> chatModelList)? chatSessionsLoaded,
    TResult? Function(ChatModel chatModel)? singleChatSessionLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingChatSession,
    TResult Function(String error)? error,
    TResult Function(ContentWrapper content)? messageStarred,
    TResult Function(List<ChatModel> chatModelList)? chatSessionsLoaded,
    TResult Function(ChatModel chatModel)? singleChatSessionLoaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadingChatSession value) loadingChatSession,
    required TResult Function(_Error value) error,
    required TResult Function(_MessageStarred value) messageStarred,
    required TResult Function(_ChatSessionsLoaded value) chatSessionsLoaded,
    required TResult Function(_SingleChatSessionLoaded value)
        singleChatSessionLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadingChatSession value)? loadingChatSession,
    TResult? Function(_Error value)? error,
    TResult? Function(_MessageStarred value)? messageStarred,
    TResult? Function(_ChatSessionsLoaded value)? chatSessionsLoaded,
    TResult? Function(_SingleChatSessionLoaded value)? singleChatSessionLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadingChatSession value)? loadingChatSession,
    TResult Function(_Error value)? error,
    TResult Function(_MessageStarred value)? messageStarred,
    TResult Function(_ChatSessionsLoaded value)? chatSessionsLoaded,
    TResult Function(_SingleChatSessionLoaded value)? singleChatSessionLoaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatDatabaseStateCopyWith<$Res> {
  factory $ChatDatabaseStateCopyWith(
          ChatDatabaseState value, $Res Function(ChatDatabaseState) then) =
      _$ChatDatabaseStateCopyWithImpl<$Res, ChatDatabaseState>;
}

/// @nodoc
class _$ChatDatabaseStateCopyWithImpl<$Res, $Val extends ChatDatabaseState>
    implements $ChatDatabaseStateCopyWith<$Res> {
  _$ChatDatabaseStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$ChatDatabaseStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'ChatDatabaseState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadingChatSession,
    required TResult Function(String error) error,
    required TResult Function(ContentWrapper content) messageStarred,
    required TResult Function(List<ChatModel> chatModelList) chatSessionsLoaded,
    required TResult Function(ChatModel chatModel) singleChatSessionLoaded,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadingChatSession,
    TResult? Function(String error)? error,
    TResult? Function(ContentWrapper content)? messageStarred,
    TResult? Function(List<ChatModel> chatModelList)? chatSessionsLoaded,
    TResult? Function(ChatModel chatModel)? singleChatSessionLoaded,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingChatSession,
    TResult Function(String error)? error,
    TResult Function(ContentWrapper content)? messageStarred,
    TResult Function(List<ChatModel> chatModelList)? chatSessionsLoaded,
    TResult Function(ChatModel chatModel)? singleChatSessionLoaded,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadingChatSession value) loadingChatSession,
    required TResult Function(_Error value) error,
    required TResult Function(_MessageStarred value) messageStarred,
    required TResult Function(_ChatSessionsLoaded value) chatSessionsLoaded,
    required TResult Function(_SingleChatSessionLoaded value)
        singleChatSessionLoaded,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadingChatSession value)? loadingChatSession,
    TResult? Function(_Error value)? error,
    TResult? Function(_MessageStarred value)? messageStarred,
    TResult? Function(_ChatSessionsLoaded value)? chatSessionsLoaded,
    TResult? Function(_SingleChatSessionLoaded value)? singleChatSessionLoaded,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadingChatSession value)? loadingChatSession,
    TResult Function(_Error value)? error,
    TResult Function(_MessageStarred value)? messageStarred,
    TResult Function(_ChatSessionsLoaded value)? chatSessionsLoaded,
    TResult Function(_SingleChatSessionLoaded value)? singleChatSessionLoaded,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements ChatDatabaseState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$LoadingChatSessionImplCopyWith<$Res> {
  factory _$$LoadingChatSessionImplCopyWith(_$LoadingChatSessionImpl value,
          $Res Function(_$LoadingChatSessionImpl) then) =
      __$$LoadingChatSessionImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingChatSessionImplCopyWithImpl<$Res>
    extends _$ChatDatabaseStateCopyWithImpl<$Res, _$LoadingChatSessionImpl>
    implements _$$LoadingChatSessionImplCopyWith<$Res> {
  __$$LoadingChatSessionImplCopyWithImpl(_$LoadingChatSessionImpl _value,
      $Res Function(_$LoadingChatSessionImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingChatSessionImpl implements _LoadingChatSession {
  const _$LoadingChatSessionImpl();

  @override
  String toString() {
    return 'ChatDatabaseState.loadingChatSession()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingChatSessionImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadingChatSession,
    required TResult Function(String error) error,
    required TResult Function(ContentWrapper content) messageStarred,
    required TResult Function(List<ChatModel> chatModelList) chatSessionsLoaded,
    required TResult Function(ChatModel chatModel) singleChatSessionLoaded,
  }) {
    return loadingChatSession();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadingChatSession,
    TResult? Function(String error)? error,
    TResult? Function(ContentWrapper content)? messageStarred,
    TResult? Function(List<ChatModel> chatModelList)? chatSessionsLoaded,
    TResult? Function(ChatModel chatModel)? singleChatSessionLoaded,
  }) {
    return loadingChatSession?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingChatSession,
    TResult Function(String error)? error,
    TResult Function(ContentWrapper content)? messageStarred,
    TResult Function(List<ChatModel> chatModelList)? chatSessionsLoaded,
    TResult Function(ChatModel chatModel)? singleChatSessionLoaded,
    required TResult orElse(),
  }) {
    if (loadingChatSession != null) {
      return loadingChatSession();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadingChatSession value) loadingChatSession,
    required TResult Function(_Error value) error,
    required TResult Function(_MessageStarred value) messageStarred,
    required TResult Function(_ChatSessionsLoaded value) chatSessionsLoaded,
    required TResult Function(_SingleChatSessionLoaded value)
        singleChatSessionLoaded,
  }) {
    return loadingChatSession(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadingChatSession value)? loadingChatSession,
    TResult? Function(_Error value)? error,
    TResult? Function(_MessageStarred value)? messageStarred,
    TResult? Function(_ChatSessionsLoaded value)? chatSessionsLoaded,
    TResult? Function(_SingleChatSessionLoaded value)? singleChatSessionLoaded,
  }) {
    return loadingChatSession?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadingChatSession value)? loadingChatSession,
    TResult Function(_Error value)? error,
    TResult Function(_MessageStarred value)? messageStarred,
    TResult Function(_ChatSessionsLoaded value)? chatSessionsLoaded,
    TResult Function(_SingleChatSessionLoaded value)? singleChatSessionLoaded,
    required TResult orElse(),
  }) {
    if (loadingChatSession != null) {
      return loadingChatSession(this);
    }
    return orElse();
  }
}

abstract class _LoadingChatSession implements ChatDatabaseState {
  const factory _LoadingChatSession() = _$LoadingChatSessionImpl;
}

/// @nodoc
abstract class _$$ErrorImplCopyWith<$Res> {
  factory _$$ErrorImplCopyWith(
          _$ErrorImpl value, $Res Function(_$ErrorImpl) then) =
      __$$ErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res>
    extends _$ChatDatabaseStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$ErrorImpl(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorImpl implements _Error {
  const _$ErrorImpl(this.error);

  @override
  final String error;

  @override
  String toString() {
    return 'ChatDatabaseState.error(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      __$$ErrorImplCopyWithImpl<_$ErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadingChatSession,
    required TResult Function(String error) error,
    required TResult Function(ContentWrapper content) messageStarred,
    required TResult Function(List<ChatModel> chatModelList) chatSessionsLoaded,
    required TResult Function(ChatModel chatModel) singleChatSessionLoaded,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadingChatSession,
    TResult? Function(String error)? error,
    TResult? Function(ContentWrapper content)? messageStarred,
    TResult? Function(List<ChatModel> chatModelList)? chatSessionsLoaded,
    TResult? Function(ChatModel chatModel)? singleChatSessionLoaded,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingChatSession,
    TResult Function(String error)? error,
    TResult Function(ContentWrapper content)? messageStarred,
    TResult Function(List<ChatModel> chatModelList)? chatSessionsLoaded,
    TResult Function(ChatModel chatModel)? singleChatSessionLoaded,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadingChatSession value) loadingChatSession,
    required TResult Function(_Error value) error,
    required TResult Function(_MessageStarred value) messageStarred,
    required TResult Function(_ChatSessionsLoaded value) chatSessionsLoaded,
    required TResult Function(_SingleChatSessionLoaded value)
        singleChatSessionLoaded,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadingChatSession value)? loadingChatSession,
    TResult? Function(_Error value)? error,
    TResult? Function(_MessageStarred value)? messageStarred,
    TResult? Function(_ChatSessionsLoaded value)? chatSessionsLoaded,
    TResult? Function(_SingleChatSessionLoaded value)? singleChatSessionLoaded,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadingChatSession value)? loadingChatSession,
    TResult Function(_Error value)? error,
    TResult Function(_MessageStarred value)? messageStarred,
    TResult Function(_ChatSessionsLoaded value)? chatSessionsLoaded,
    TResult Function(_SingleChatSessionLoaded value)? singleChatSessionLoaded,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements ChatDatabaseState {
  const factory _Error(final String error) = _$ErrorImpl;

  String get error;
  @JsonKey(ignore: true)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MessageStarredImplCopyWith<$Res> {
  factory _$$MessageStarredImplCopyWith(_$MessageStarredImpl value,
          $Res Function(_$MessageStarredImpl) then) =
      __$$MessageStarredImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ContentWrapper content});
}

/// @nodoc
class __$$MessageStarredImplCopyWithImpl<$Res>
    extends _$ChatDatabaseStateCopyWithImpl<$Res, _$MessageStarredImpl>
    implements _$$MessageStarredImplCopyWith<$Res> {
  __$$MessageStarredImplCopyWithImpl(
      _$MessageStarredImpl _value, $Res Function(_$MessageStarredImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? content = null,
  }) {
    return _then(_$MessageStarredImpl(
      null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as ContentWrapper,
    ));
  }
}

/// @nodoc

class _$MessageStarredImpl implements _MessageStarred {
  const _$MessageStarredImpl(this.content);

  @override
  final ContentWrapper content;

  @override
  String toString() {
    return 'ChatDatabaseState.messageStarred(content: $content)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MessageStarredImpl &&
            (identical(other.content, content) || other.content == content));
  }

  @override
  int get hashCode => Object.hash(runtimeType, content);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MessageStarredImplCopyWith<_$MessageStarredImpl> get copyWith =>
      __$$MessageStarredImplCopyWithImpl<_$MessageStarredImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadingChatSession,
    required TResult Function(String error) error,
    required TResult Function(ContentWrapper content) messageStarred,
    required TResult Function(List<ChatModel> chatModelList) chatSessionsLoaded,
    required TResult Function(ChatModel chatModel) singleChatSessionLoaded,
  }) {
    return messageStarred(content);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadingChatSession,
    TResult? Function(String error)? error,
    TResult? Function(ContentWrapper content)? messageStarred,
    TResult? Function(List<ChatModel> chatModelList)? chatSessionsLoaded,
    TResult? Function(ChatModel chatModel)? singleChatSessionLoaded,
  }) {
    return messageStarred?.call(content);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingChatSession,
    TResult Function(String error)? error,
    TResult Function(ContentWrapper content)? messageStarred,
    TResult Function(List<ChatModel> chatModelList)? chatSessionsLoaded,
    TResult Function(ChatModel chatModel)? singleChatSessionLoaded,
    required TResult orElse(),
  }) {
    if (messageStarred != null) {
      return messageStarred(content);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadingChatSession value) loadingChatSession,
    required TResult Function(_Error value) error,
    required TResult Function(_MessageStarred value) messageStarred,
    required TResult Function(_ChatSessionsLoaded value) chatSessionsLoaded,
    required TResult Function(_SingleChatSessionLoaded value)
        singleChatSessionLoaded,
  }) {
    return messageStarred(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadingChatSession value)? loadingChatSession,
    TResult? Function(_Error value)? error,
    TResult? Function(_MessageStarred value)? messageStarred,
    TResult? Function(_ChatSessionsLoaded value)? chatSessionsLoaded,
    TResult? Function(_SingleChatSessionLoaded value)? singleChatSessionLoaded,
  }) {
    return messageStarred?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadingChatSession value)? loadingChatSession,
    TResult Function(_Error value)? error,
    TResult Function(_MessageStarred value)? messageStarred,
    TResult Function(_ChatSessionsLoaded value)? chatSessionsLoaded,
    TResult Function(_SingleChatSessionLoaded value)? singleChatSessionLoaded,
    required TResult orElse(),
  }) {
    if (messageStarred != null) {
      return messageStarred(this);
    }
    return orElse();
  }
}

abstract class _MessageStarred implements ChatDatabaseState {
  const factory _MessageStarred(final ContentWrapper content) =
      _$MessageStarredImpl;

  ContentWrapper get content;
  @JsonKey(ignore: true)
  _$$MessageStarredImplCopyWith<_$MessageStarredImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChatSessionsLoadedImplCopyWith<$Res> {
  factory _$$ChatSessionsLoadedImplCopyWith(_$ChatSessionsLoadedImpl value,
          $Res Function(_$ChatSessionsLoadedImpl) then) =
      __$$ChatSessionsLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<ChatModel> chatModelList});
}

/// @nodoc
class __$$ChatSessionsLoadedImplCopyWithImpl<$Res>
    extends _$ChatDatabaseStateCopyWithImpl<$Res, _$ChatSessionsLoadedImpl>
    implements _$$ChatSessionsLoadedImplCopyWith<$Res> {
  __$$ChatSessionsLoadedImplCopyWithImpl(_$ChatSessionsLoadedImpl _value,
      $Res Function(_$ChatSessionsLoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chatModelList = null,
  }) {
    return _then(_$ChatSessionsLoadedImpl(
      null == chatModelList
          ? _value._chatModelList
          : chatModelList // ignore: cast_nullable_to_non_nullable
              as List<ChatModel>,
    ));
  }
}

/// @nodoc

class _$ChatSessionsLoadedImpl implements _ChatSessionsLoaded {
  const _$ChatSessionsLoadedImpl(final List<ChatModel> chatModelList)
      : _chatModelList = chatModelList;

  final List<ChatModel> _chatModelList;
  @override
  List<ChatModel> get chatModelList {
    if (_chatModelList is EqualUnmodifiableListView) return _chatModelList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_chatModelList);
  }

  @override
  String toString() {
    return 'ChatDatabaseState.chatSessionsLoaded(chatModelList: $chatModelList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatSessionsLoadedImpl &&
            const DeepCollectionEquality()
                .equals(other._chatModelList, _chatModelList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_chatModelList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatSessionsLoadedImplCopyWith<_$ChatSessionsLoadedImpl> get copyWith =>
      __$$ChatSessionsLoadedImplCopyWithImpl<_$ChatSessionsLoadedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadingChatSession,
    required TResult Function(String error) error,
    required TResult Function(ContentWrapper content) messageStarred,
    required TResult Function(List<ChatModel> chatModelList) chatSessionsLoaded,
    required TResult Function(ChatModel chatModel) singleChatSessionLoaded,
  }) {
    return chatSessionsLoaded(chatModelList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadingChatSession,
    TResult? Function(String error)? error,
    TResult? Function(ContentWrapper content)? messageStarred,
    TResult? Function(List<ChatModel> chatModelList)? chatSessionsLoaded,
    TResult? Function(ChatModel chatModel)? singleChatSessionLoaded,
  }) {
    return chatSessionsLoaded?.call(chatModelList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingChatSession,
    TResult Function(String error)? error,
    TResult Function(ContentWrapper content)? messageStarred,
    TResult Function(List<ChatModel> chatModelList)? chatSessionsLoaded,
    TResult Function(ChatModel chatModel)? singleChatSessionLoaded,
    required TResult orElse(),
  }) {
    if (chatSessionsLoaded != null) {
      return chatSessionsLoaded(chatModelList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadingChatSession value) loadingChatSession,
    required TResult Function(_Error value) error,
    required TResult Function(_MessageStarred value) messageStarred,
    required TResult Function(_ChatSessionsLoaded value) chatSessionsLoaded,
    required TResult Function(_SingleChatSessionLoaded value)
        singleChatSessionLoaded,
  }) {
    return chatSessionsLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadingChatSession value)? loadingChatSession,
    TResult? Function(_Error value)? error,
    TResult? Function(_MessageStarred value)? messageStarred,
    TResult? Function(_ChatSessionsLoaded value)? chatSessionsLoaded,
    TResult? Function(_SingleChatSessionLoaded value)? singleChatSessionLoaded,
  }) {
    return chatSessionsLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadingChatSession value)? loadingChatSession,
    TResult Function(_Error value)? error,
    TResult Function(_MessageStarred value)? messageStarred,
    TResult Function(_ChatSessionsLoaded value)? chatSessionsLoaded,
    TResult Function(_SingleChatSessionLoaded value)? singleChatSessionLoaded,
    required TResult orElse(),
  }) {
    if (chatSessionsLoaded != null) {
      return chatSessionsLoaded(this);
    }
    return orElse();
  }
}

abstract class _ChatSessionsLoaded implements ChatDatabaseState {
  const factory _ChatSessionsLoaded(final List<ChatModel> chatModelList) =
      _$ChatSessionsLoadedImpl;

  List<ChatModel> get chatModelList;
  @JsonKey(ignore: true)
  _$$ChatSessionsLoadedImplCopyWith<_$ChatSessionsLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SingleChatSessionLoadedImplCopyWith<$Res> {
  factory _$$SingleChatSessionLoadedImplCopyWith(
          _$SingleChatSessionLoadedImpl value,
          $Res Function(_$SingleChatSessionLoadedImpl) then) =
      __$$SingleChatSessionLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ChatModel chatModel});
}

/// @nodoc
class __$$SingleChatSessionLoadedImplCopyWithImpl<$Res>
    extends _$ChatDatabaseStateCopyWithImpl<$Res, _$SingleChatSessionLoadedImpl>
    implements _$$SingleChatSessionLoadedImplCopyWith<$Res> {
  __$$SingleChatSessionLoadedImplCopyWithImpl(
      _$SingleChatSessionLoadedImpl _value,
      $Res Function(_$SingleChatSessionLoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chatModel = null,
  }) {
    return _then(_$SingleChatSessionLoadedImpl(
      null == chatModel
          ? _value.chatModel
          : chatModel // ignore: cast_nullable_to_non_nullable
              as ChatModel,
    ));
  }
}

/// @nodoc

class _$SingleChatSessionLoadedImpl implements _SingleChatSessionLoaded {
  const _$SingleChatSessionLoadedImpl(this.chatModel);

  @override
  final ChatModel chatModel;

  @override
  String toString() {
    return 'ChatDatabaseState.singleChatSessionLoaded(chatModel: $chatModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SingleChatSessionLoadedImpl &&
            (identical(other.chatModel, chatModel) ||
                other.chatModel == chatModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, chatModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SingleChatSessionLoadedImplCopyWith<_$SingleChatSessionLoadedImpl>
      get copyWith => __$$SingleChatSessionLoadedImplCopyWithImpl<
          _$SingleChatSessionLoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadingChatSession,
    required TResult Function(String error) error,
    required TResult Function(ContentWrapper content) messageStarred,
    required TResult Function(List<ChatModel> chatModelList) chatSessionsLoaded,
    required TResult Function(ChatModel chatModel) singleChatSessionLoaded,
  }) {
    return singleChatSessionLoaded(chatModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadingChatSession,
    TResult? Function(String error)? error,
    TResult? Function(ContentWrapper content)? messageStarred,
    TResult? Function(List<ChatModel> chatModelList)? chatSessionsLoaded,
    TResult? Function(ChatModel chatModel)? singleChatSessionLoaded,
  }) {
    return singleChatSessionLoaded?.call(chatModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingChatSession,
    TResult Function(String error)? error,
    TResult Function(ContentWrapper content)? messageStarred,
    TResult Function(List<ChatModel> chatModelList)? chatSessionsLoaded,
    TResult Function(ChatModel chatModel)? singleChatSessionLoaded,
    required TResult orElse(),
  }) {
    if (singleChatSessionLoaded != null) {
      return singleChatSessionLoaded(chatModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadingChatSession value) loadingChatSession,
    required TResult Function(_Error value) error,
    required TResult Function(_MessageStarred value) messageStarred,
    required TResult Function(_ChatSessionsLoaded value) chatSessionsLoaded,
    required TResult Function(_SingleChatSessionLoaded value)
        singleChatSessionLoaded,
  }) {
    return singleChatSessionLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadingChatSession value)? loadingChatSession,
    TResult? Function(_Error value)? error,
    TResult? Function(_MessageStarred value)? messageStarred,
    TResult? Function(_ChatSessionsLoaded value)? chatSessionsLoaded,
    TResult? Function(_SingleChatSessionLoaded value)? singleChatSessionLoaded,
  }) {
    return singleChatSessionLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadingChatSession value)? loadingChatSession,
    TResult Function(_Error value)? error,
    TResult Function(_MessageStarred value)? messageStarred,
    TResult Function(_ChatSessionsLoaded value)? chatSessionsLoaded,
    TResult Function(_SingleChatSessionLoaded value)? singleChatSessionLoaded,
    required TResult orElse(),
  }) {
    if (singleChatSessionLoaded != null) {
      return singleChatSessionLoaded(this);
    }
    return orElse();
  }
}

abstract class _SingleChatSessionLoaded implements ChatDatabaseState {
  const factory _SingleChatSessionLoaded(final ChatModel chatModel) =
      _$SingleChatSessionLoadedImpl;

  ChatModel get chatModel;
  @JsonKey(ignore: true)
  _$$SingleChatSessionLoadedImplCopyWith<_$SingleChatSessionLoadedImpl>
      get copyWith => throw _privateConstructorUsedError;
}
