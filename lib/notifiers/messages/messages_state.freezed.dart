// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'messages_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$MessagesStateTearOff {
  const _$MessagesStateTearOff();

// ignore: unused_element
  _MessagesState call({List<MessageState> messages, bool isLoading = false}) {
    return _MessagesState(
      messages: messages,
      isLoading: isLoading,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $MessagesState = _$MessagesStateTearOff();

/// @nodoc
mixin _$MessagesState {
  List<MessageState> get messages;
  bool get isLoading;

  $MessagesStateCopyWith<MessagesState> get copyWith;
}

/// @nodoc
abstract class $MessagesStateCopyWith<$Res> {
  factory $MessagesStateCopyWith(
          MessagesState value, $Res Function(MessagesState) then) =
      _$MessagesStateCopyWithImpl<$Res>;
  $Res call({List<MessageState> messages, bool isLoading});
}

/// @nodoc
class _$MessagesStateCopyWithImpl<$Res>
    implements $MessagesStateCopyWith<$Res> {
  _$MessagesStateCopyWithImpl(this._value, this._then);

  final MessagesState _value;
  // ignore: unused_field
  final $Res Function(MessagesState) _then;

  @override
  $Res call({
    Object messages = freezed,
    Object isLoading = freezed,
  }) {
    return _then(_value.copyWith(
      messages: messages == freezed
          ? _value.messages
          : messages as List<MessageState>,
      isLoading: isLoading == freezed ? _value.isLoading : isLoading as bool,
    ));
  }
}

/// @nodoc
abstract class _$MessagesStateCopyWith<$Res>
    implements $MessagesStateCopyWith<$Res> {
  factory _$MessagesStateCopyWith(
          _MessagesState value, $Res Function(_MessagesState) then) =
      __$MessagesStateCopyWithImpl<$Res>;
  @override
  $Res call({List<MessageState> messages, bool isLoading});
}

/// @nodoc
class __$MessagesStateCopyWithImpl<$Res>
    extends _$MessagesStateCopyWithImpl<$Res>
    implements _$MessagesStateCopyWith<$Res> {
  __$MessagesStateCopyWithImpl(
      _MessagesState _value, $Res Function(_MessagesState) _then)
      : super(_value, (v) => _then(v as _MessagesState));

  @override
  _MessagesState get _value => super._value as _MessagesState;

  @override
  $Res call({
    Object messages = freezed,
    Object isLoading = freezed,
  }) {
    return _then(_MessagesState(
      messages: messages == freezed
          ? _value.messages
          : messages as List<MessageState>,
      isLoading: isLoading == freezed ? _value.isLoading : isLoading as bool,
    ));
  }
}

/// @nodoc
class _$_MessagesState implements _MessagesState {
  _$_MessagesState({this.messages, this.isLoading = false})
      : assert(isLoading != null);

  @override
  final List<MessageState> messages;
  @JsonKey(defaultValue: false)
  @override
  final bool isLoading;

  @override
  String toString() {
    return 'MessagesState(messages: $messages, isLoading: $isLoading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _MessagesState &&
            (identical(other.messages, messages) ||
                const DeepCollectionEquality()
                    .equals(other.messages, messages)) &&
            (identical(other.isLoading, isLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isLoading, isLoading)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(messages) ^
      const DeepCollectionEquality().hash(isLoading);

  @override
  _$MessagesStateCopyWith<_MessagesState> get copyWith =>
      __$MessagesStateCopyWithImpl<_MessagesState>(this, _$identity);
}

abstract class _MessagesState implements MessagesState {
  factory _MessagesState({List<MessageState> messages, bool isLoading}) =
      _$_MessagesState;

  @override
  List<MessageState> get messages;
  @override
  bool get isLoading;
  @override
  _$MessagesStateCopyWith<_MessagesState> get copyWith;
}

/// @nodoc
class _$MessageStateTearOff {
  const _$MessageStateTearOff();

// ignore: unused_element
  _MessageState call(
      {String messageId,
      String userId,
      String text,
      DateTime createdAt,
      bool isRead = false}) {
    return _MessageState(
      messageId: messageId,
      userId: userId,
      text: text,
      createdAt: createdAt,
      isRead: isRead,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $MessageState = _$MessageStateTearOff();

/// @nodoc
mixin _$MessageState {
  String get messageId;
  String get userId;
  String get text;
  DateTime get createdAt;
  bool get isRead;

  $MessageStateCopyWith<MessageState> get copyWith;
}

/// @nodoc
abstract class $MessageStateCopyWith<$Res> {
  factory $MessageStateCopyWith(
          MessageState value, $Res Function(MessageState) then) =
      _$MessageStateCopyWithImpl<$Res>;
  $Res call(
      {String messageId,
      String userId,
      String text,
      DateTime createdAt,
      bool isRead});
}

/// @nodoc
class _$MessageStateCopyWithImpl<$Res> implements $MessageStateCopyWith<$Res> {
  _$MessageStateCopyWithImpl(this._value, this._then);

  final MessageState _value;
  // ignore: unused_field
  final $Res Function(MessageState) _then;

  @override
  $Res call({
    Object messageId = freezed,
    Object userId = freezed,
    Object text = freezed,
    Object createdAt = freezed,
    Object isRead = freezed,
  }) {
    return _then(_value.copyWith(
      messageId: messageId == freezed ? _value.messageId : messageId as String,
      userId: userId == freezed ? _value.userId : userId as String,
      text: text == freezed ? _value.text : text as String,
      createdAt:
          createdAt == freezed ? _value.createdAt : createdAt as DateTime,
      isRead: isRead == freezed ? _value.isRead : isRead as bool,
    ));
  }
}

/// @nodoc
abstract class _$MessageStateCopyWith<$Res>
    implements $MessageStateCopyWith<$Res> {
  factory _$MessageStateCopyWith(
          _MessageState value, $Res Function(_MessageState) then) =
      __$MessageStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {String messageId,
      String userId,
      String text,
      DateTime createdAt,
      bool isRead});
}

/// @nodoc
class __$MessageStateCopyWithImpl<$Res> extends _$MessageStateCopyWithImpl<$Res>
    implements _$MessageStateCopyWith<$Res> {
  __$MessageStateCopyWithImpl(
      _MessageState _value, $Res Function(_MessageState) _then)
      : super(_value, (v) => _then(v as _MessageState));

  @override
  _MessageState get _value => super._value as _MessageState;

  @override
  $Res call({
    Object messageId = freezed,
    Object userId = freezed,
    Object text = freezed,
    Object createdAt = freezed,
    Object isRead = freezed,
  }) {
    return _then(_MessageState(
      messageId: messageId == freezed ? _value.messageId : messageId as String,
      userId: userId == freezed ? _value.userId : userId as String,
      text: text == freezed ? _value.text : text as String,
      createdAt:
          createdAt == freezed ? _value.createdAt : createdAt as DateTime,
      isRead: isRead == freezed ? _value.isRead : isRead as bool,
    ));
  }
}

/// @nodoc
class _$_MessageState implements _MessageState {
  _$_MessageState(
      {this.messageId,
      this.userId,
      this.text,
      this.createdAt,
      this.isRead = false})
      : assert(isRead != null);

  @override
  final String messageId;
  @override
  final String userId;
  @override
  final String text;
  @override
  final DateTime createdAt;
  @JsonKey(defaultValue: false)
  @override
  final bool isRead;

  @override
  String toString() {
    return 'MessageState(messageId: $messageId, userId: $userId, text: $text, createdAt: $createdAt, isRead: $isRead)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _MessageState &&
            (identical(other.messageId, messageId) ||
                const DeepCollectionEquality()
                    .equals(other.messageId, messageId)) &&
            (identical(other.userId, userId) ||
                const DeepCollectionEquality().equals(other.userId, userId)) &&
            (identical(other.text, text) ||
                const DeepCollectionEquality().equals(other.text, text)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.isRead, isRead) ||
                const DeepCollectionEquality().equals(other.isRead, isRead)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(messageId) ^
      const DeepCollectionEquality().hash(userId) ^
      const DeepCollectionEquality().hash(text) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(isRead);

  @override
  _$MessageStateCopyWith<_MessageState> get copyWith =>
      __$MessageStateCopyWithImpl<_MessageState>(this, _$identity);
}

abstract class _MessageState implements MessageState {
  factory _MessageState(
      {String messageId,
      String userId,
      String text,
      DateTime createdAt,
      bool isRead}) = _$_MessageState;

  @override
  String get messageId;
  @override
  String get userId;
  @override
  String get text;
  @override
  DateTime get createdAt;
  @override
  bool get isRead;
  @override
  _$MessageStateCopyWith<_MessageState> get copyWith;
}
