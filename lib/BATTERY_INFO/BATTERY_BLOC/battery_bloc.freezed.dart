// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'battery_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$BatteryEvent {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is BatteryEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'BatteryEvent()';
  }
}

/// @nodoc
class $BatteryEventCopyWith<$Res> {
  $BatteryEventCopyWith(BatteryEvent _, $Res Function(BatteryEvent) __);
}

/// @nodoc

class DocNoFetch implements BatteryEvent {
  const DocNoFetch(this.divCode);

  final String divCode;

  /// Create a copy of BatteryEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $DocNoFetchCopyWith<DocNoFetch> get copyWith =>
      _$DocNoFetchCopyWithImpl<DocNoFetch>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DocNoFetch &&
            (identical(other.divCode, divCode) || other.divCode == divCode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, divCode);

  @override
  String toString() {
    return 'BatteryEvent.docnofetch(divCode: $divCode)';
  }
}

/// @nodoc
abstract mixin class $DocNoFetchCopyWith<$Res>
    implements $BatteryEventCopyWith<$Res> {
  factory $DocNoFetchCopyWith(
          DocNoFetch value, $Res Function(DocNoFetch) _then) =
      _$DocNoFetchCopyWithImpl;
  @useResult
  $Res call({String divCode});
}

/// @nodoc
class _$DocNoFetchCopyWithImpl<$Res> implements $DocNoFetchCopyWith<$Res> {
  _$DocNoFetchCopyWithImpl(this._self, this._then);

  final DocNoFetch _self;
  final $Res Function(DocNoFetch) _then;

  /// Create a copy of BatteryEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? divCode = null,
  }) {
    return _then(DocNoFetch(
      null == divCode
          ? _self.divCode
          : divCode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class SuppCodefetch implements BatteryEvent {
  const SuppCodefetch();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is SuppCodefetch);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'BatteryEvent.suppCodefetch()';
  }
}

/// @nodoc

class Assetfetch implements BatteryEvent {
  const Assetfetch();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is Assetfetch);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'BatteryEvent.assetfetch()';
  }
}

/// @nodoc

class Save implements BatteryEvent {
  const Save(final Map<String, dynamic> batteryDetails)
      : _batteryDetails = batteryDetails;

  final Map<String, dynamic> _batteryDetails;
  Map<String, dynamic> get batteryDetails {
    if (_batteryDetails is EqualUnmodifiableMapView) return _batteryDetails;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_batteryDetails);
  }

  /// Create a copy of BatteryEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SaveCopyWith<Save> get copyWith =>
      _$SaveCopyWithImpl<Save>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Save &&
            const DeepCollectionEquality()
                .equals(other._batteryDetails, _batteryDetails));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_batteryDetails));

  @override
  String toString() {
    return 'BatteryEvent.save(batteryDetails: $batteryDetails)';
  }
}

/// @nodoc
abstract mixin class $SaveCopyWith<$Res>
    implements $BatteryEventCopyWith<$Res> {
  factory $SaveCopyWith(Save value, $Res Function(Save) _then) =
      _$SaveCopyWithImpl;
  @useResult
  $Res call({Map<String, dynamic> batteryDetails});
}

/// @nodoc
class _$SaveCopyWithImpl<$Res> implements $SaveCopyWith<$Res> {
  _$SaveCopyWithImpl(this._self, this._then);

  final Save _self;
  final $Res Function(Save) _then;

  /// Create a copy of BatteryEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? batteryDetails = null,
  }) {
    return _then(Save(
      null == batteryDetails
          ? _self._batteryDetails
          : batteryDetails // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }
}

/// @nodoc
mixin _$BatteryState {
  List<dynamic> get searchDialogData;
  String get searchDialogTitle;
  bool get isLoading;
  String get alertTitle;
  bool get isVerified;
  String get alertMsg;
  String get maxDocNo;

  /// Create a copy of BatteryState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $BatteryStateCopyWith<BatteryState> get copyWith =>
      _$BatteryStateCopyWithImpl<BatteryState>(
          this as BatteryState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is BatteryState &&
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
    return 'BatteryState(searchDialogData: $searchDialogData, searchDialogTitle: $searchDialogTitle, isLoading: $isLoading, alertTitle: $alertTitle, isVerified: $isVerified, alertMsg: $alertMsg, maxDocNo: $maxDocNo)';
  }
}

/// @nodoc
abstract mixin class $BatteryStateCopyWith<$Res> {
  factory $BatteryStateCopyWith(
          BatteryState value, $Res Function(BatteryState) _then) =
      _$BatteryStateCopyWithImpl;
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
class _$BatteryStateCopyWithImpl<$Res> implements $BatteryStateCopyWith<$Res> {
  _$BatteryStateCopyWithImpl(this._self, this._then);

  final BatteryState _self;
  final $Res Function(BatteryState) _then;

  /// Create a copy of BatteryState
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

class _BatteryState implements BatteryState {
  _BatteryState(
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

  /// Create a copy of BatteryState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$BatteryStateCopyWith<_BatteryState> get copyWith =>
      __$BatteryStateCopyWithImpl<_BatteryState>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _BatteryState &&
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
    return 'BatteryState(searchDialogData: $searchDialogData, searchDialogTitle: $searchDialogTitle, isLoading: $isLoading, alertTitle: $alertTitle, isVerified: $isVerified, alertMsg: $alertMsg, maxDocNo: $maxDocNo)';
  }
}

/// @nodoc
abstract mixin class _$BatteryStateCopyWith<$Res>
    implements $BatteryStateCopyWith<$Res> {
  factory _$BatteryStateCopyWith(
          _BatteryState value, $Res Function(_BatteryState) _then) =
      __$BatteryStateCopyWithImpl;
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
class __$BatteryStateCopyWithImpl<$Res>
    implements _$BatteryStateCopyWith<$Res> {
  __$BatteryStateCopyWithImpl(this._self, this._then);

  final _BatteryState _self;
  final $Res Function(_BatteryState) _then;

  /// Create a copy of BatteryState
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
    return _then(_BatteryState(
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
