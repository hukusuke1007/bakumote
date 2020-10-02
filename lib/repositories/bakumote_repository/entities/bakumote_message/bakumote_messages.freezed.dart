// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'bakumote_messages.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$BakumoteMessagesTearOff {
  const _$BakumoteMessagesTearOff();

// ignore: unused_element
  _BakumoteMessages call(
      {@required List<BakumoteMessage> greetings,
      @required List<BakumoteMessage> questions,
      @required List<BakumoteMessage> thoughts}) {
    return _BakumoteMessages(
      greetings: greetings,
      questions: questions,
      thoughts: thoughts,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $BakumoteMessages = _$BakumoteMessagesTearOff();

/// @nodoc
mixin _$BakumoteMessages {
  List<BakumoteMessage> get greetings;
  List<BakumoteMessage> get questions;
  List<BakumoteMessage> get thoughts;

  $BakumoteMessagesCopyWith<BakumoteMessages> get copyWith;
}

/// @nodoc
abstract class $BakumoteMessagesCopyWith<$Res> {
  factory $BakumoteMessagesCopyWith(
          BakumoteMessages value, $Res Function(BakumoteMessages) then) =
      _$BakumoteMessagesCopyWithImpl<$Res>;
  $Res call(
      {List<BakumoteMessage> greetings,
      List<BakumoteMessage> questions,
      List<BakumoteMessage> thoughts});
}

/// @nodoc
class _$BakumoteMessagesCopyWithImpl<$Res>
    implements $BakumoteMessagesCopyWith<$Res> {
  _$BakumoteMessagesCopyWithImpl(this._value, this._then);

  final BakumoteMessages _value;
  // ignore: unused_field
  final $Res Function(BakumoteMessages) _then;

  @override
  $Res call({
    Object greetings = freezed,
    Object questions = freezed,
    Object thoughts = freezed,
  }) {
    return _then(_value.copyWith(
      greetings: greetings == freezed
          ? _value.greetings
          : greetings as List<BakumoteMessage>,
      questions: questions == freezed
          ? _value.questions
          : questions as List<BakumoteMessage>,
      thoughts: thoughts == freezed
          ? _value.thoughts
          : thoughts as List<BakumoteMessage>,
    ));
  }
}

/// @nodoc
abstract class _$BakumoteMessagesCopyWith<$Res>
    implements $BakumoteMessagesCopyWith<$Res> {
  factory _$BakumoteMessagesCopyWith(
          _BakumoteMessages value, $Res Function(_BakumoteMessages) then) =
      __$BakumoteMessagesCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<BakumoteMessage> greetings,
      List<BakumoteMessage> questions,
      List<BakumoteMessage> thoughts});
}

/// @nodoc
class __$BakumoteMessagesCopyWithImpl<$Res>
    extends _$BakumoteMessagesCopyWithImpl<$Res>
    implements _$BakumoteMessagesCopyWith<$Res> {
  __$BakumoteMessagesCopyWithImpl(
      _BakumoteMessages _value, $Res Function(_BakumoteMessages) _then)
      : super(_value, (v) => _then(v as _BakumoteMessages));

  @override
  _BakumoteMessages get _value => super._value as _BakumoteMessages;

  @override
  $Res call({
    Object greetings = freezed,
    Object questions = freezed,
    Object thoughts = freezed,
  }) {
    return _then(_BakumoteMessages(
      greetings: greetings == freezed
          ? _value.greetings
          : greetings as List<BakumoteMessage>,
      questions: questions == freezed
          ? _value.questions
          : questions as List<BakumoteMessage>,
      thoughts: thoughts == freezed
          ? _value.thoughts
          : thoughts as List<BakumoteMessage>,
    ));
  }
}

/// @nodoc
class _$_BakumoteMessages implements _BakumoteMessages {
  _$_BakumoteMessages(
      {@required this.greetings,
      @required this.questions,
      @required this.thoughts})
      : assert(greetings != null),
        assert(questions != null),
        assert(thoughts != null);

  @override
  final List<BakumoteMessage> greetings;
  @override
  final List<BakumoteMessage> questions;
  @override
  final List<BakumoteMessage> thoughts;

  @override
  String toString() {
    return 'BakumoteMessages(greetings: $greetings, questions: $questions, thoughts: $thoughts)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _BakumoteMessages &&
            (identical(other.greetings, greetings) ||
                const DeepCollectionEquality()
                    .equals(other.greetings, greetings)) &&
            (identical(other.questions, questions) ||
                const DeepCollectionEquality()
                    .equals(other.questions, questions)) &&
            (identical(other.thoughts, thoughts) ||
                const DeepCollectionEquality()
                    .equals(other.thoughts, thoughts)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(greetings) ^
      const DeepCollectionEquality().hash(questions) ^
      const DeepCollectionEquality().hash(thoughts);

  @override
  _$BakumoteMessagesCopyWith<_BakumoteMessages> get copyWith =>
      __$BakumoteMessagesCopyWithImpl<_BakumoteMessages>(this, _$identity);
}

abstract class _BakumoteMessages implements BakumoteMessages {
  factory _BakumoteMessages(
      {@required List<BakumoteMessage> greetings,
      @required List<BakumoteMessage> questions,
      @required List<BakumoteMessage> thoughts}) = _$_BakumoteMessages;

  @override
  List<BakumoteMessage> get greetings;
  @override
  List<BakumoteMessage> get questions;
  @override
  List<BakumoteMessage> get thoughts;
  @override
  _$BakumoteMessagesCopyWith<_BakumoteMessages> get copyWith;
}

BakumoteMessage _$BakumoteMessageFromJson(Map<String, dynamic> json) {
  return _BakumoteMessage.fromJson(json);
}

/// @nodoc
class _$BakumoteMessageTearOff {
  const _$BakumoteMessageTearOff();

// ignore: unused_element
  _BakumoteMessage call({@required int id, @required String text}) {
    return _BakumoteMessage(
      id: id,
      text: text,
    );
  }

// ignore: unused_element
  BakumoteMessage fromJson(Map<String, Object> json) {
    return BakumoteMessage.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $BakumoteMessage = _$BakumoteMessageTearOff();

/// @nodoc
mixin _$BakumoteMessage {
  int get id;
  String get text;

  Map<String, dynamic> toJson();
  $BakumoteMessageCopyWith<BakumoteMessage> get copyWith;
}

/// @nodoc
abstract class $BakumoteMessageCopyWith<$Res> {
  factory $BakumoteMessageCopyWith(
          BakumoteMessage value, $Res Function(BakumoteMessage) then) =
      _$BakumoteMessageCopyWithImpl<$Res>;
  $Res call({int id, String text});
}

/// @nodoc
class _$BakumoteMessageCopyWithImpl<$Res>
    implements $BakumoteMessageCopyWith<$Res> {
  _$BakumoteMessageCopyWithImpl(this._value, this._then);

  final BakumoteMessage _value;
  // ignore: unused_field
  final $Res Function(BakumoteMessage) _then;

  @override
  $Res call({
    Object id = freezed,
    Object text = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as int,
      text: text == freezed ? _value.text : text as String,
    ));
  }
}

/// @nodoc
abstract class _$BakumoteMessageCopyWith<$Res>
    implements $BakumoteMessageCopyWith<$Res> {
  factory _$BakumoteMessageCopyWith(
          _BakumoteMessage value, $Res Function(_BakumoteMessage) then) =
      __$BakumoteMessageCopyWithImpl<$Res>;
  @override
  $Res call({int id, String text});
}

/// @nodoc
class __$BakumoteMessageCopyWithImpl<$Res>
    extends _$BakumoteMessageCopyWithImpl<$Res>
    implements _$BakumoteMessageCopyWith<$Res> {
  __$BakumoteMessageCopyWithImpl(
      _BakumoteMessage _value, $Res Function(_BakumoteMessage) _then)
      : super(_value, (v) => _then(v as _BakumoteMessage));

  @override
  _BakumoteMessage get _value => super._value as _BakumoteMessage;

  @override
  $Res call({
    Object id = freezed,
    Object text = freezed,
  }) {
    return _then(_BakumoteMessage(
      id: id == freezed ? _value.id : id as int,
      text: text == freezed ? _value.text : text as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_BakumoteMessage implements _BakumoteMessage {
  _$_BakumoteMessage({@required this.id, @required this.text})
      : assert(id != null),
        assert(text != null);

  factory _$_BakumoteMessage.fromJson(Map<String, dynamic> json) =>
      _$_$_BakumoteMessageFromJson(json);

  @override
  final int id;
  @override
  final String text;

  @override
  String toString() {
    return 'BakumoteMessage(id: $id, text: $text)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _BakumoteMessage &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.text, text) ||
                const DeepCollectionEquality().equals(other.text, text)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(text);

  @override
  _$BakumoteMessageCopyWith<_BakumoteMessage> get copyWith =>
      __$BakumoteMessageCopyWithImpl<_BakumoteMessage>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_BakumoteMessageToJson(this);
  }
}

abstract class _BakumoteMessage implements BakumoteMessage {
  factory _BakumoteMessage({@required int id, @required String text}) =
      _$_BakumoteMessage;

  factory _BakumoteMessage.fromJson(Map<String, dynamic> json) =
      _$_BakumoteMessage.fromJson;

  @override
  int get id;
  @override
  String get text;
  @override
  _$BakumoteMessageCopyWith<_BakumoteMessage> get copyWith;
}
