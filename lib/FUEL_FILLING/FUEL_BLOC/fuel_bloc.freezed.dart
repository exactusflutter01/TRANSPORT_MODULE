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

class FetchStations implements FuelEvent {
  const FetchStations();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is FetchStations);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'FuelEvent.fetchStations()';
  }
}

/// @nodoc

class FetchFuelType implements FuelEvent {
  const FetchFuelType();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is FetchFuelType);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'FuelEvent.fetchFuelType()';
  }
}

/// @nodoc

class FetchFuelCard implements FuelEvent {
  const FetchFuelCard();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is FetchFuelCard);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'FuelEvent.fetchFuelCard()';
  }
}

/// @nodoc

class FetchDocNo implements FuelEvent {
  const FetchDocNo(this.divCode);

  final String divCode;

  /// Create a copy of FuelEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $FetchDocNoCopyWith<FetchDocNo> get copyWith =>
      _$FetchDocNoCopyWithImpl<FetchDocNo>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is FetchDocNo &&
            (identical(other.divCode, divCode) || other.divCode == divCode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, divCode);

  @override
  String toString() {
    return 'FuelEvent.fetchDocNo(divCode: $divCode)';
  }
}

/// @nodoc
abstract mixin class $FetchDocNoCopyWith<$Res>
    implements $FuelEventCopyWith<$Res> {
  factory $FetchDocNoCopyWith(
          FetchDocNo value, $Res Function(FetchDocNo) _then) =
      _$FetchDocNoCopyWithImpl;
  @useResult
  $Res call({String divCode});
}

/// @nodoc
class _$FetchDocNoCopyWithImpl<$Res> implements $FetchDocNoCopyWith<$Res> {
  _$FetchDocNoCopyWithImpl(this._self, this._then);

  final FetchDocNo _self;
  final $Res Function(FetchDocNo) _then;

  /// Create a copy of FuelEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? divCode = null,
  }) {
    return _then(FetchDocNo(
      null == divCode
          ? _self.divCode
          : divCode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class IncrementDocNo implements FuelEvent {
  const IncrementDocNo();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is IncrementDocNo);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'FuelEvent.incrementDocNo()';
  }
}

/// @nodoc

class IsVerified implements FuelEvent {
  const IsVerified(this.isVerify);

  final bool isVerify;

  /// Create a copy of FuelEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $IsVerifiedCopyWith<IsVerified> get copyWith =>
      _$IsVerifiedCopyWithImpl<IsVerified>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is IsVerified &&
            (identical(other.isVerify, isVerify) ||
                other.isVerify == isVerify));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isVerify);

  @override
  String toString() {
    return 'FuelEvent.isVerified(isVerify: $isVerify)';
  }
}

/// @nodoc
abstract mixin class $IsVerifiedCopyWith<$Res>
    implements $FuelEventCopyWith<$Res> {
  factory $IsVerifiedCopyWith(
          IsVerified value, $Res Function(IsVerified) _then) =
      _$IsVerifiedCopyWithImpl;
  @useResult
  $Res call({bool isVerify});
}

/// @nodoc
class _$IsVerifiedCopyWithImpl<$Res> implements $IsVerifiedCopyWith<$Res> {
  _$IsVerifiedCopyWithImpl(this._self, this._then);

  final IsVerified _self;
  final $Res Function(IsVerified) _then;

  /// Create a copy of FuelEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? isVerify = null,
  }) {
    return _then(IsVerified(
      null == isVerify
          ? _self.isVerify
          : isVerify // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class InsertFuelFilling implements FuelEvent {
  const InsertFuelFilling(final Map<String, dynamic> fuelData)
      : _fuelData = fuelData;

  final Map<String, dynamic> _fuelData;
  Map<String, dynamic> get fuelData {
    if (_fuelData is EqualUnmodifiableMapView) return _fuelData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_fuelData);
  }

  /// Create a copy of FuelEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $InsertFuelFillingCopyWith<InsertFuelFilling> get copyWith =>
      _$InsertFuelFillingCopyWithImpl<InsertFuelFilling>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is InsertFuelFilling &&
            const DeepCollectionEquality().equals(other._fuelData, _fuelData));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_fuelData));

  @override
  String toString() {
    return 'FuelEvent.insertFuelFilling(fuelData: $fuelData)';
  }
}

/// @nodoc
abstract mixin class $InsertFuelFillingCopyWith<$Res>
    implements $FuelEventCopyWith<$Res> {
  factory $InsertFuelFillingCopyWith(
          InsertFuelFilling value, $Res Function(InsertFuelFilling) _then) =
      _$InsertFuelFillingCopyWithImpl;
  @useResult
  $Res call({Map<String, dynamic> fuelData});
}

/// @nodoc
class _$InsertFuelFillingCopyWithImpl<$Res>
    implements $InsertFuelFillingCopyWith<$Res> {
  _$InsertFuelFillingCopyWithImpl(this._self, this._then);

  final InsertFuelFilling _self;
  final $Res Function(InsertFuelFilling) _then;

  /// Create a copy of FuelEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? fuelData = null,
  }) {
    return _then(InsertFuelFilling(
      null == fuelData
          ? _self._fuelData
          : fuelData // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }
}

/// @nodoc
mixin _$FuelState {
  List<dynamic> get searchDialogData;
  String get maxDocNo;
  bool get isLoading;
  String get msg;
  String get searchDialogTitle;
  bool get isVerified;
  String get alertTitle;

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
                .equals(other.searchDialogData, searchDialogData) &&
            (identical(other.maxDocNo, maxDocNo) ||
                other.maxDocNo == maxDocNo) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.msg, msg) || other.msg == msg) &&
            (identical(other.searchDialogTitle, searchDialogTitle) ||
                other.searchDialogTitle == searchDialogTitle) &&
            (identical(other.isVerified, isVerified) ||
                other.isVerified == isVerified) &&
            (identical(other.alertTitle, alertTitle) ||
                other.alertTitle == alertTitle));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(searchDialogData),
      maxDocNo,
      isLoading,
      msg,
      searchDialogTitle,
      isVerified,
      alertTitle);

  @override
  String toString() {
    return 'FuelState(searchDialogData: $searchDialogData, maxDocNo: $maxDocNo, isLoading: $isLoading, msg: $msg, searchDialogTitle: $searchDialogTitle, isVerified: $isVerified, alertTitle: $alertTitle)';
  }
}

/// @nodoc
abstract mixin class $FuelStateCopyWith<$Res> {
  factory $FuelStateCopyWith(FuelState value, $Res Function(FuelState) _then) =
      _$FuelStateCopyWithImpl;
  @useResult
  $Res call(
      {List<dynamic> searchDialogData,
      String maxDocNo,
      bool isLoading,
      String msg,
      String searchDialogTitle,
      bool isVerified,
      String alertTitle});
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
    Object? searchDialogData = null,
    Object? maxDocNo = null,
    Object? isLoading = null,
    Object? msg = null,
    Object? searchDialogTitle = null,
    Object? isVerified = null,
    Object? alertTitle = null,
  }) {
    return _then(_self.copyWith(
      searchDialogData: null == searchDialogData
          ? _self.searchDialogData
          : searchDialogData // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      maxDocNo: null == maxDocNo
          ? _self.maxDocNo
          : maxDocNo // ignore: cast_nullable_to_non_nullable
              as String,
      isLoading: null == isLoading
          ? _self.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      msg: null == msg
          ? _self.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String,
      searchDialogTitle: null == searchDialogTitle
          ? _self.searchDialogTitle
          : searchDialogTitle // ignore: cast_nullable_to_non_nullable
              as String,
      isVerified: null == isVerified
          ? _self.isVerified
          : isVerified // ignore: cast_nullable_to_non_nullable
              as bool,
      alertTitle: null == alertTitle
          ? _self.alertTitle
          : alertTitle // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class fuelState implements FuelState {
  fuelState(
      {required final List<dynamic> searchDialogData,
      required this.maxDocNo,
      required this.isLoading,
      required this.msg,
      required this.searchDialogTitle,
      required this.isVerified,
      required this.alertTitle})
      : _searchDialogData = searchDialogData;

  final List<dynamic> _searchDialogData;
  @override
  List<dynamic> get searchDialogData {
    if (_searchDialogData is EqualUnmodifiableListView)
      return _searchDialogData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_searchDialogData);
  }

  @override
  final String maxDocNo;
  @override
  final bool isLoading;
  @override
  final String msg;
  @override
  final String searchDialogTitle;
  @override
  final bool isVerified;
  @override
  final String alertTitle;

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
                .equals(other._searchDialogData, _searchDialogData) &&
            (identical(other.maxDocNo, maxDocNo) ||
                other.maxDocNo == maxDocNo) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.msg, msg) || other.msg == msg) &&
            (identical(other.searchDialogTitle, searchDialogTitle) ||
                other.searchDialogTitle == searchDialogTitle) &&
            (identical(other.isVerified, isVerified) ||
                other.isVerified == isVerified) &&
            (identical(other.alertTitle, alertTitle) ||
                other.alertTitle == alertTitle));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_searchDialogData),
      maxDocNo,
      isLoading,
      msg,
      searchDialogTitle,
      isVerified,
      alertTitle);

  @override
  String toString() {
    return 'FuelState(searchDialogData: $searchDialogData, maxDocNo: $maxDocNo, isLoading: $isLoading, msg: $msg, searchDialogTitle: $searchDialogTitle, isVerified: $isVerified, alertTitle: $alertTitle)';
  }
}

/// @nodoc
abstract mixin class $fuelStateCopyWith<$Res>
    implements $FuelStateCopyWith<$Res> {
  factory $fuelStateCopyWith(fuelState value, $Res Function(fuelState) _then) =
      _$fuelStateCopyWithImpl;
  @override
  @useResult
  $Res call(
      {List<dynamic> searchDialogData,
      String maxDocNo,
      bool isLoading,
      String msg,
      String searchDialogTitle,
      bool isVerified,
      String alertTitle});
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
    Object? searchDialogData = null,
    Object? maxDocNo = null,
    Object? isLoading = null,
    Object? msg = null,
    Object? searchDialogTitle = null,
    Object? isVerified = null,
    Object? alertTitle = null,
  }) {
    return _then(fuelState(
      searchDialogData: null == searchDialogData
          ? _self._searchDialogData
          : searchDialogData // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      maxDocNo: null == maxDocNo
          ? _self.maxDocNo
          : maxDocNo // ignore: cast_nullable_to_non_nullable
              as String,
      isLoading: null == isLoading
          ? _self.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      msg: null == msg
          ? _self.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String,
      searchDialogTitle: null == searchDialogTitle
          ? _self.searchDialogTitle
          : searchDialogTitle // ignore: cast_nullable_to_non_nullable
              as String,
      isVerified: null == isVerified
          ? _self.isVerified
          : isVerified // ignore: cast_nullable_to_non_nullable
              as bool,
      alertTitle: null == alertTitle
          ? _self.alertTitle
          : alertTitle // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
