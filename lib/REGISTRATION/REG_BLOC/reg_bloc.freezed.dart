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

class FetchDocNO implements RegEvent {
  const FetchDocNO(this.divcode);

  final String divcode;

  /// Create a copy of RegEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $FetchDocNOCopyWith<FetchDocNO> get copyWith =>
      _$FetchDocNOCopyWithImpl<FetchDocNO>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is FetchDocNO &&
            (identical(other.divcode, divcode) || other.divcode == divcode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, divcode);

  @override
  String toString() {
    return 'RegEvent.fetchDocNO(divcode: $divcode)';
  }
}

/// @nodoc
abstract mixin class $FetchDocNOCopyWith<$Res>
    implements $RegEventCopyWith<$Res> {
  factory $FetchDocNOCopyWith(
          FetchDocNO value, $Res Function(FetchDocNO) _then) =
      _$FetchDocNOCopyWithImpl;
  @useResult
  $Res call({String divcode});
}

/// @nodoc
class _$FetchDocNOCopyWithImpl<$Res> implements $FetchDocNOCopyWith<$Res> {
  _$FetchDocNOCopyWithImpl(this._self, this._then);

  final FetchDocNO _self;
  final $Res Function(FetchDocNO) _then;

  /// Create a copy of RegEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? divcode = null,
  }) {
    return _then(FetchDocNO(
      null == divcode
          ? _self.divcode
          : divcode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class FetchVehicleCode implements RegEvent {
  const FetchVehicleCode(this.divcode);

  final String divcode;

  /// Create a copy of RegEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $FetchVehicleCodeCopyWith<FetchVehicleCode> get copyWith =>
      _$FetchVehicleCodeCopyWithImpl<FetchVehicleCode>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is FetchVehicleCode &&
            (identical(other.divcode, divcode) || other.divcode == divcode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, divcode);

  @override
  String toString() {
    return 'RegEvent.fetchVehicleCode(divcode: $divcode)';
  }
}

/// @nodoc
abstract mixin class $FetchVehicleCodeCopyWith<$Res>
    implements $RegEventCopyWith<$Res> {
  factory $FetchVehicleCodeCopyWith(
          FetchVehicleCode value, $Res Function(FetchVehicleCode) _then) =
      _$FetchVehicleCodeCopyWithImpl;
  @useResult
  $Res call({String divcode});
}

/// @nodoc
class _$FetchVehicleCodeCopyWithImpl<$Res>
    implements $FetchVehicleCodeCopyWith<$Res> {
  _$FetchVehicleCodeCopyWithImpl(this._self, this._then);

  final FetchVehicleCode _self;
  final $Res Function(FetchVehicleCode) _then;

  /// Create a copy of RegEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? divcode = null,
  }) {
    return _then(FetchVehicleCode(
      null == divcode
          ? _self.divcode
          : divcode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class FetchCreditCode implements RegEvent {
  const FetchCreditCode();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is FetchCreditCode);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'RegEvent.fetchCreditCode()';
  }
}

/// @nodoc

class SaveData implements RegEvent {
  const SaveData(final Map<String, dynamic> registrationData)
      : _registrationData = registrationData;

  final Map<String, dynamic> _registrationData;
  Map<String, dynamic> get registrationData {
    if (_registrationData is EqualUnmodifiableMapView) return _registrationData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_registrationData);
  }

  /// Create a copy of RegEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SaveDataCopyWith<SaveData> get copyWith =>
      _$SaveDataCopyWithImpl<SaveData>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SaveData &&
            const DeepCollectionEquality()
                .equals(other._registrationData, _registrationData));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_registrationData));

  @override
  String toString() {
    return 'RegEvent.saveData(registrationData: $registrationData)';
  }
}

/// @nodoc
abstract mixin class $SaveDataCopyWith<$Res>
    implements $RegEventCopyWith<$Res> {
  factory $SaveDataCopyWith(SaveData value, $Res Function(SaveData) _then) =
      _$SaveDataCopyWithImpl;
  @useResult
  $Res call({Map<String, dynamic> registrationData});
}

/// @nodoc
class _$SaveDataCopyWithImpl<$Res> implements $SaveDataCopyWith<$Res> {
  _$SaveDataCopyWithImpl(this._self, this._then);

  final SaveData _self;
  final $Res Function(SaveData) _then;

  /// Create a copy of RegEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? registrationData = null,
  }) {
    return _then(SaveData(
      null == registrationData
          ? _self._registrationData
          : registrationData // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }
}

/// @nodoc

class IsVerified implements RegEvent {
  const IsVerified(this.isVerify);

  final bool isVerify;

  /// Create a copy of RegEvent
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
    return 'RegEvent.isVerified(isVerify: $isVerify)';
  }
}

/// @nodoc
abstract mixin class $IsVerifiedCopyWith<$Res>
    implements $RegEventCopyWith<$Res> {
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

  /// Create a copy of RegEvent
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

class FetchMaxDocNo implements RegEvent {
  const FetchMaxDocNo();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is FetchMaxDocNo);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'RegEvent.fetchMaxDocNo()';
  }
}

/// @nodoc
mixin _$RegState {
  List<dynamic> get searchDialogData;
  String get searchDialogTitle;
  bool get isLoading;
  String get alertTitle;
  bool get isVerified;
  String get alertMsg;
  String get maxDocNo;

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
                .equals(other.searchDialogData, searchDialogData) &&
            (identical(other.searchDialogTitle, searchDialogTitle) ||
                other.searchDialogTitle == searchDialogTitle) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.alertTitle, alertTitle) ||
                other.alertTitle == alertTitle) &&
            (identical(other.isVerified, isVerified) ||
                other.isVerified == isVerified) &&
            (identical(other.alertMsg, alertMsg) ||
                other.alertMsg == alertMsg) &&
            (identical(other.maxDocNo, maxDocNo) ||
                other.maxDocNo == maxDocNo));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(searchDialogData),
      searchDialogTitle,
      isLoading,
      alertTitle,
      isVerified,
      alertMsg,
      maxDocNo);

  @override
  String toString() {
    return 'RegState(searchDialogData: $searchDialogData, searchDialogTitle: $searchDialogTitle, isLoading: $isLoading, alertTitle: $alertTitle, isVerified: $isVerified, alertMsg: $alertMsg, maxDocNo: $maxDocNo)';
  }
}

/// @nodoc
abstract mixin class $RegStateCopyWith<$Res> {
  factory $RegStateCopyWith(RegState value, $Res Function(RegState) _then) =
      _$RegStateCopyWithImpl;
  @useResult
  $Res call(
      {List<dynamic> searchDialogData,
      String searchDialogTitle,
      bool isLoading,
      String alertTitle,
      bool isVerified,
      String alertMsg,
      String maxDocNo});
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
    Object? searchDialogData = null,
    Object? searchDialogTitle = null,
    Object? isLoading = null,
    Object? alertTitle = null,
    Object? isVerified = null,
    Object? alertMsg = null,
    Object? maxDocNo = null,
  }) {
    return _then(_self.copyWith(
      searchDialogData: null == searchDialogData
          ? _self.searchDialogData
          : searchDialogData // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      searchDialogTitle: null == searchDialogTitle
          ? _self.searchDialogTitle
          : searchDialogTitle // ignore: cast_nullable_to_non_nullable
              as String,
      isLoading: null == isLoading
          ? _self.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      alertTitle: null == alertTitle
          ? _self.alertTitle
          : alertTitle // ignore: cast_nullable_to_non_nullable
              as String,
      isVerified: null == isVerified
          ? _self.isVerified
          : isVerified // ignore: cast_nullable_to_non_nullable
              as bool,
      alertMsg: null == alertMsg
          ? _self.alertMsg
          : alertMsg // ignore: cast_nullable_to_non_nullable
              as String,
      maxDocNo: null == maxDocNo
          ? _self.maxDocNo
          : maxDocNo // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class regState implements RegState {
  regState(
      {required final List<dynamic> searchDialogData,
      required this.searchDialogTitle,
      required this.isLoading,
      required this.alertTitle,
      required this.isVerified,
      required this.alertMsg,
      required this.maxDocNo})
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
  final String searchDialogTitle;
  @override
  final bool isLoading;
  @override
  final String alertTitle;
  @override
  final bool isVerified;
  @override
  final String alertMsg;
  @override
  final String maxDocNo;

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
                .equals(other._searchDialogData, _searchDialogData) &&
            (identical(other.searchDialogTitle, searchDialogTitle) ||
                other.searchDialogTitle == searchDialogTitle) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.alertTitle, alertTitle) ||
                other.alertTitle == alertTitle) &&
            (identical(other.isVerified, isVerified) ||
                other.isVerified == isVerified) &&
            (identical(other.alertMsg, alertMsg) ||
                other.alertMsg == alertMsg) &&
            (identical(other.maxDocNo, maxDocNo) ||
                other.maxDocNo == maxDocNo));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_searchDialogData),
      searchDialogTitle,
      isLoading,
      alertTitle,
      isVerified,
      alertMsg,
      maxDocNo);

  @override
  String toString() {
    return 'RegState(searchDialogData: $searchDialogData, searchDialogTitle: $searchDialogTitle, isLoading: $isLoading, alertTitle: $alertTitle, isVerified: $isVerified, alertMsg: $alertMsg, maxDocNo: $maxDocNo)';
  }
}

/// @nodoc
abstract mixin class $regStateCopyWith<$Res>
    implements $RegStateCopyWith<$Res> {
  factory $regStateCopyWith(regState value, $Res Function(regState) _then) =
      _$regStateCopyWithImpl;
  @override
  @useResult
  $Res call(
      {List<dynamic> searchDialogData,
      String searchDialogTitle,
      bool isLoading,
      String alertTitle,
      bool isVerified,
      String alertMsg,
      String maxDocNo});
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
    Object? searchDialogData = null,
    Object? searchDialogTitle = null,
    Object? isLoading = null,
    Object? alertTitle = null,
    Object? isVerified = null,
    Object? alertMsg = null,
    Object? maxDocNo = null,
  }) {
    return _then(regState(
      searchDialogData: null == searchDialogData
          ? _self._searchDialogData
          : searchDialogData // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      searchDialogTitle: null == searchDialogTitle
          ? _self.searchDialogTitle
          : searchDialogTitle // ignore: cast_nullable_to_non_nullable
              as String,
      isLoading: null == isLoading
          ? _self.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      alertTitle: null == alertTitle
          ? _self.alertTitle
          : alertTitle // ignore: cast_nullable_to_non_nullable
              as String,
      isVerified: null == isVerified
          ? _self.isVerified
          : isVerified // ignore: cast_nullable_to_non_nullable
              as bool,
      alertMsg: null == alertMsg
          ? _self.alertMsg
          : alertMsg // ignore: cast_nullable_to_non_nullable
              as String,
      maxDocNo: null == maxDocNo
          ? _self.maxDocNo
          : maxDocNo // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
