// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'reg_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RegEvent {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is RegEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'RegEvent()';
  }
}

/// @nodoc
class $RegEventCopyWith<$Res> {
  $RegEventCopyWith(RegEvent _, $Res Function(RegEvent) __);
}

/// @nodoc

class FetchDivCodes implements RegEvent {
  const FetchDivCodes();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is FetchDivCodes);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'RegEvent.fetchdivcodes()';
  }
}

/// @nodoc
mixin _$RegState {
  List get divisionCode;
  bool get isLoading;
  String get msg;

  /// Create a copy of RegState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $RegStateCopyWith<RegState> get copyWith =>
      _$RegStateCopyWithImpl<RegState>(this as RegState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is RegState &&
            const DeepCollectionEquality()
                .equals(other.divisionCode, divisionCode) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.msg, msg) || other.msg == msg));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(divisionCode), isLoading, msg);

  @override
  String toString() {
    return 'RegState(divisionCode: $divisionCode, isLoading: $isLoading, msg: $msg)';
  }
}

/// @nodoc
abstract mixin class $RegStateCopyWith<$Res> {
  factory $RegStateCopyWith(RegState value, $Res Function(RegState) _then) =
      _$RegStateCopyWithImpl;
  @useResult
  $Res call({List<dynamic> divisionCode, bool isLoading, String msg});
}

/// @nodoc
class _$RegStateCopyWithImpl<$Res> implements $RegStateCopyWith<$Res> {
  _$RegStateCopyWithImpl(this._self, this._then);

  final RegState _self;
  final $Res Function(RegState) _then;

  /// Create a copy of RegState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? divisionCode = null,
    Object? isLoading = null,
    Object? msg = null,
  }) {
    return _then(_self.copyWith(
      divisionCode: null == divisionCode
          ? _self.divisionCode!
          : divisionCode // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      isLoading: null == isLoading
          ? _self.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      msg: null == msg
          ? _self.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class regState implements RegState {
  regState(
      {required final List<dynamic> divisionCode,
      required this.isLoading,
      required this.msg})
      : _divisionCode = divisionCode;

  final List<dynamic> _divisionCode;
  @override
  List<dynamic> get divisionCode {
    if (_divisionCode is EqualUnmodifiableListView) return _divisionCode;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_divisionCode);
  }

  @override
  final bool isLoading;
  @override
  final String msg;

  /// Create a copy of RegState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $regStateCopyWith<regState> get copyWith =>
      _$regStateCopyWithImpl<regState>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is regState &&
            const DeepCollectionEquality()
                .equals(other._divisionCode, _divisionCode) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.msg, msg) || other.msg == msg));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_divisionCode), isLoading, msg);

  @override
  String toString() {
    return 'RegState(divisionCode: $divisionCode, isLoading: $isLoading, msg: $msg)';
  }
}

/// @nodoc
abstract mixin class $regStateCopyWith<$Res>
    implements $RegStateCopyWith<$Res> {
  factory $regStateCopyWith(regState value, $Res Function(regState) _then) =
      _$regStateCopyWithImpl;
  @override
  @useResult
  $Res call({List<dynamic> divisionCode, bool isLoading, String msg});
}

/// @nodoc
class _$regStateCopyWithImpl<$Res> implements $regStateCopyWith<$Res> {
  _$regStateCopyWithImpl(this._self, this._then);

  final regState _self;
  final $Res Function(regState) _then;

  /// Create a copy of RegState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? divisionCode = null,
    Object? isLoading = null,
    Object? msg = null,
  }) {
    return _then(regState(
      divisionCode: null == divisionCode
          ? _self._divisionCode
          : divisionCode // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      isLoading: null == isLoading
          ? _self.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      msg: null == msg
          ? _self.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
