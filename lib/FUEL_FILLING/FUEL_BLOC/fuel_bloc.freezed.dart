// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'fuel_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$FuelEvent {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is FuelEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'FuelEvent()';
  }
}

/// @nodoc
class $FuelEventCopyWith<$Res> {
  $FuelEventCopyWith(FuelEvent _, $Res Function(FuelEvent) __);
}

/// @nodoc

class FetchPaymentMood implements FuelEvent {
  const FetchPaymentMood();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is FetchPaymentMood);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'FuelEvent.fetchPaymentMood()';
  }
}

/// @nodoc
mixin _$FuelState {
  List get paymentMood;
  bool get isLoading;
  String get msg;

  /// Create a copy of FuelState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $FuelStateCopyWith<FuelState> get copyWith =>
      _$FuelStateCopyWithImpl<FuelState>(this as FuelState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is FuelState &&
            const DeepCollectionEquality()
                .equals(other.paymentMood, paymentMood) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.msg, msg) || other.msg == msg));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(paymentMood), isLoading, msg);

  @override
  String toString() {
    return 'FuelState(paymentMood: $paymentMood, isLoading: $isLoading, msg: $msg)';
  }
}

/// @nodoc
abstract mixin class $FuelStateCopyWith<$Res> {
  factory $FuelStateCopyWith(FuelState value, $Res Function(FuelState) _then) =
      _$FuelStateCopyWithImpl;
  @useResult
  $Res call({List<dynamic> paymentMood, bool isLoading, String msg});
}

/// @nodoc
class _$FuelStateCopyWithImpl<$Res> implements $FuelStateCopyWith<$Res> {
  _$FuelStateCopyWithImpl(this._self, this._then);

  final FuelState _self;
  final $Res Function(FuelState) _then;

  /// Create a copy of FuelState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? paymentMood = null,
    Object? isLoading = null,
    Object? msg = null,
  }) {
    return _then(_self.copyWith(
      paymentMood: null == paymentMood
          ? _self.paymentMood!
          : paymentMood // ignore: cast_nullable_to_non_nullable
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

class fuelState implements FuelState {
  fuelState(
      {required final List<dynamic> paymentMood,
      required this.isLoading,
      required this.msg})
      : _paymentMood = paymentMood;

  final List<dynamic> _paymentMood;
  @override
  List<dynamic> get paymentMood {
    if (_paymentMood is EqualUnmodifiableListView) return _paymentMood;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_paymentMood);
  }

  @override
  final bool isLoading;
  @override
  final String msg;

  /// Create a copy of FuelState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $fuelStateCopyWith<fuelState> get copyWith =>
      _$fuelStateCopyWithImpl<fuelState>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is fuelState &&
            const DeepCollectionEquality()
                .equals(other._paymentMood, _paymentMood) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.msg, msg) || other.msg == msg));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_paymentMood), isLoading, msg);

  @override
  String toString() {
    return 'FuelState(paymentMood: $paymentMood, isLoading: $isLoading, msg: $msg)';
  }
}

/// @nodoc
abstract mixin class $fuelStateCopyWith<$Res>
    implements $FuelStateCopyWith<$Res> {
  factory $fuelStateCopyWith(fuelState value, $Res Function(fuelState) _then) =
      _$fuelStateCopyWithImpl;
  @override
  @useResult
  $Res call({List<dynamic> paymentMood, bool isLoading, String msg});
}

/// @nodoc
class _$fuelStateCopyWithImpl<$Res> implements $fuelStateCopyWith<$Res> {
  _$fuelStateCopyWithImpl(this._self, this._then);

  final fuelState _self;
  final $Res Function(fuelState) _then;

  /// Create a copy of FuelState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? paymentMood = null,
    Object? isLoading = null,
    Object? msg = null,
  }) {
    return _then(fuelState(
      paymentMood: null == paymentMood
          ? _self._paymentMood
          : paymentMood // ignore: cast_nullable_to_non_nullable
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
