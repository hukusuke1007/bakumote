// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'app_page_notifier.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$AppPageStateTearOff {
  const _$AppPageStateTearOff();

// ignore: unused_element
  _AppPageState call({int selectedIndex}) {
    return _AppPageState(
      selectedIndex: selectedIndex,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $AppPageState = _$AppPageStateTearOff();

/// @nodoc
mixin _$AppPageState {
  int get selectedIndex;

  $AppPageStateCopyWith<AppPageState> get copyWith;
}

/// @nodoc
abstract class $AppPageStateCopyWith<$Res> {
  factory $AppPageStateCopyWith(
          AppPageState value, $Res Function(AppPageState) then) =
      _$AppPageStateCopyWithImpl<$Res>;
  $Res call({int selectedIndex});
}

/// @nodoc
class _$AppPageStateCopyWithImpl<$Res> implements $AppPageStateCopyWith<$Res> {
  _$AppPageStateCopyWithImpl(this._value, this._then);

  final AppPageState _value;
  // ignore: unused_field
  final $Res Function(AppPageState) _then;

  @override
  $Res call({
    Object selectedIndex = freezed,
  }) {
    return _then(_value.copyWith(
      selectedIndex: selectedIndex == freezed
          ? _value.selectedIndex
          : selectedIndex as int,
    ));
  }
}

/// @nodoc
abstract class _$AppPageStateCopyWith<$Res>
    implements $AppPageStateCopyWith<$Res> {
  factory _$AppPageStateCopyWith(
          _AppPageState value, $Res Function(_AppPageState) then) =
      __$AppPageStateCopyWithImpl<$Res>;
  @override
  $Res call({int selectedIndex});
}

/// @nodoc
class __$AppPageStateCopyWithImpl<$Res> extends _$AppPageStateCopyWithImpl<$Res>
    implements _$AppPageStateCopyWith<$Res> {
  __$AppPageStateCopyWithImpl(
      _AppPageState _value, $Res Function(_AppPageState) _then)
      : super(_value, (v) => _then(v as _AppPageState));

  @override
  _AppPageState get _value => super._value as _AppPageState;

  @override
  $Res call({
    Object selectedIndex = freezed,
  }) {
    return _then(_AppPageState(
      selectedIndex: selectedIndex == freezed
          ? _value.selectedIndex
          : selectedIndex as int,
    ));
  }
}

/// @nodoc
class _$_AppPageState with DiagnosticableTreeMixin implements _AppPageState {
  const _$_AppPageState({this.selectedIndex});

  @override
  final int selectedIndex;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AppPageState(selectedIndex: $selectedIndex)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AppPageState'))
      ..add(DiagnosticsProperty('selectedIndex', selectedIndex));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AppPageState &&
            (identical(other.selectedIndex, selectedIndex) ||
                const DeepCollectionEquality()
                    .equals(other.selectedIndex, selectedIndex)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(selectedIndex);

  @override
  _$AppPageStateCopyWith<_AppPageState> get copyWith =>
      __$AppPageStateCopyWithImpl<_AppPageState>(this, _$identity);
}

abstract class _AppPageState implements AppPageState {
  const factory _AppPageState({int selectedIndex}) = _$_AppPageState;

  @override
  int get selectedIndex;
  @override
  _$AppPageStateCopyWith<_AppPageState> get copyWith;
}
