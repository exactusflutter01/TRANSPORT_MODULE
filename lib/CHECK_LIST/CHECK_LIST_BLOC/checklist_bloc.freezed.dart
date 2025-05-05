// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'checklist_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ChecklistEvent {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is ChecklistEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'ChecklistEvent()';
  }
}

/// @nodoc
class $ChecklistEventCopyWith<$Res> {
  $ChecklistEventCopyWith(ChecklistEvent _, $Res Function(ChecklistEvent) __);
}

/// @nodoc

class SearchDialogueDataFetch implements ChecklistEvent {
  const SearchDialogueDataFetch({this.title, this.division, this.assetId});

  final String? title;
  final String? division;
  final String? assetId;

  /// Create a copy of ChecklistEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SearchDialogueDataFetchCopyWith<SearchDialogueDataFetch> get copyWith =>
      _$SearchDialogueDataFetchCopyWithImpl<SearchDialogueDataFetch>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SearchDialogueDataFetch &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.division, division) ||
                other.division == division) &&
            (identical(other.assetId, assetId) || other.assetId == assetId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, title, division, assetId);

  @override
  String toString() {
    return 'ChecklistEvent.searchDialogueDataFetch(title: $title, division: $division, assetId: $assetId)';
  }
}

/// @nodoc
abstract mixin class $SearchDialogueDataFetchCopyWith<$Res>
    implements $ChecklistEventCopyWith<$Res> {
  factory $SearchDialogueDataFetchCopyWith(SearchDialogueDataFetch value,
          $Res Function(SearchDialogueDataFetch) _then) =
      _$SearchDialogueDataFetchCopyWithImpl;
  @useResult
  $Res call({String? title, String? division, String? assetId});
}

/// @nodoc
class _$SearchDialogueDataFetchCopyWithImpl<$Res>
    implements $SearchDialogueDataFetchCopyWith<$Res> {
  _$SearchDialogueDataFetchCopyWithImpl(this._self, this._then);

  final SearchDialogueDataFetch _self;
  final $Res Function(SearchDialogueDataFetch) _then;

  /// Create a copy of ChecklistEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? title = freezed,
    Object? division = freezed,
    Object? assetId = freezed,
  }) {
    return _then(SearchDialogueDataFetch(
      title: freezed == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      division: freezed == division
          ? _self.division
          : division // ignore: cast_nullable_to_non_nullable
              as String?,
      assetId: freezed == assetId
          ? _self.assetId
          : assetId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class Save implements ChecklistEvent {
  const Save({required final Map<String, dynamic> tyrePuncherDetails})
      : _tyrePuncherDetails = tyrePuncherDetails;

  final Map<String, dynamic> _tyrePuncherDetails;
  Map<String, dynamic> get tyrePuncherDetails {
    if (_tyrePuncherDetails is EqualUnmodifiableMapView)
      return _tyrePuncherDetails;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_tyrePuncherDetails);
  }

  /// Create a copy of ChecklistEvent
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
                .equals(other._tyrePuncherDetails, _tyrePuncherDetails));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_tyrePuncherDetails));

  @override
  String toString() {
    return 'ChecklistEvent.save(tyrePuncherDetails: $tyrePuncherDetails)';
  }
}

/// @nodoc
abstract mixin class $SaveCopyWith<$Res>
    implements $ChecklistEventCopyWith<$Res> {
  factory $SaveCopyWith(Save value, $Res Function(Save) _then) =
      _$SaveCopyWithImpl;
  @useResult
  $Res call({Map<String, dynamic> tyrePuncherDetails});
}

/// @nodoc
class _$SaveCopyWithImpl<$Res> implements $SaveCopyWith<$Res> {
  _$SaveCopyWithImpl(this._self, this._then);

  final Save _self;
  final $Res Function(Save) _then;

  /// Create a copy of ChecklistEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? tyrePuncherDetails = null,
  }) {
    return _then(Save(
      tyrePuncherDetails: null == tyrePuncherDetails
          ? _self._tyrePuncherDetails
          : tyrePuncherDetails // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }
}

/// @nodoc
mixin _$ChecklistState {
  List get searchDialogueData;
  String get searchDialogueTitle;
  String get alertTitle;
  String get alertMsg;
  String get maxDocNo;
  bool get isLoading;
  bool get isVerified;

  /// Create a copy of ChecklistState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ChecklistStateCopyWith<ChecklistState> get copyWith =>
      _$ChecklistStateCopyWithImpl<ChecklistState>(
          this as ChecklistState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ChecklistState &&
            const DeepCollectionEquality()
                .equals(other.searchDialogueData, searchDialogueData) &&
            (identical(other.searchDialogueTitle, searchDialogueTitle) ||
                other.searchDialogueTitle == searchDialogueTitle) &&
            (identical(other.alertTitle, alertTitle) ||
                other.alertTitle == alertTitle) &&
            (identical(other.alertMsg, alertMsg) ||
                other.alertMsg == alertMsg) &&
            (identical(other.maxDocNo, maxDocNo) ||
                other.maxDocNo == maxDocNo) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isVerified, isVerified) ||
                other.isVerified == isVerified));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(searchDialogueData),
      searchDialogueTitle,
      alertTitle,
      alertMsg,
      maxDocNo,
      isLoading,
      isVerified);

  @override
  String toString() {
    return 'ChecklistState(searchDialogueData: $searchDialogueData, searchDialogueTitle: $searchDialogueTitle, alertTitle: $alertTitle, alertMsg: $alertMsg, maxDocNo: $maxDocNo, isLoading: $isLoading, isVerified: $isVerified)';
  }
}

/// @nodoc
abstract mixin class $ChecklistStateCopyWith<$Res> {
  factory $ChecklistStateCopyWith(
          ChecklistState value, $Res Function(ChecklistState) _then) =
      _$ChecklistStateCopyWithImpl;
  @useResult
  $Res call(
      {List<dynamic> searchDialogueData,
      String searchDialogueTitle,
      String alertTitle,
      String alertMsg,
      String maxDocNo,
      bool isLoading,
      bool isVerified});
}

/// @nodoc
class _$ChecklistStateCopyWithImpl<$Res>
    implements $ChecklistStateCopyWith<$Res> {
  _$ChecklistStateCopyWithImpl(this._self, this._then);

  final ChecklistState _self;
  final $Res Function(ChecklistState) _then;

  /// Create a copy of ChecklistState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? searchDialogueData = null,
    Object? searchDialogueTitle = null,
    Object? alertTitle = null,
    Object? alertMsg = null,
    Object? maxDocNo = null,
    Object? isLoading = null,
    Object? isVerified = null,
  }) {
    return _then(_self.copyWith(
      searchDialogueData: null == searchDialogueData
          ? _self.searchDialogueData!
          : searchDialogueData // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      searchDialogueTitle: null == searchDialogueTitle
          ? _self.searchDialogueTitle
          : searchDialogueTitle // ignore: cast_nullable_to_non_nullable
              as String,
      alertTitle: null == alertTitle
          ? _self.alertTitle
          : alertTitle // ignore: cast_nullable_to_non_nullable
              as String,
      alertMsg: null == alertMsg
          ? _self.alertMsg
          : alertMsg // ignore: cast_nullable_to_non_nullable
              as String,
      maxDocNo: null == maxDocNo
          ? _self.maxDocNo
          : maxDocNo // ignore: cast_nullable_to_non_nullable
              as String,
      isLoading: null == isLoading
          ? _self.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isVerified: null == isVerified
          ? _self.isVerified
          : isVerified // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _ChecklistState implements ChecklistState {
  _ChecklistState(
      {required final List<dynamic> searchDialogueData,
      required this.searchDialogueTitle,
      required this.alertTitle,
      required this.alertMsg,
      required this.maxDocNo,
      required this.isLoading,
      required this.isVerified})
      : _searchDialogueData = searchDialogueData;

  final List<dynamic> _searchDialogueData;
  @override
  List<dynamic> get searchDialogueData {
    if (_searchDialogueData is EqualUnmodifiableListView)
      return _searchDialogueData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_searchDialogueData);
  }

  @override
  final String searchDialogueTitle;
  @override
  final String alertTitle;
  @override
  final String alertMsg;
  @override
  final String maxDocNo;
  @override
  final bool isLoading;
  @override
  final bool isVerified;

  /// Create a copy of ChecklistState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ChecklistStateCopyWith<_ChecklistState> get copyWith =>
      __$ChecklistStateCopyWithImpl<_ChecklistState>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ChecklistState &&
            const DeepCollectionEquality()
                .equals(other._searchDialogueData, _searchDialogueData) &&
            (identical(other.searchDialogueTitle, searchDialogueTitle) ||
                other.searchDialogueTitle == searchDialogueTitle) &&
            (identical(other.alertTitle, alertTitle) ||
                other.alertTitle == alertTitle) &&
            (identical(other.alertMsg, alertMsg) ||
                other.alertMsg == alertMsg) &&
            (identical(other.maxDocNo, maxDocNo) ||
                other.maxDocNo == maxDocNo) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isVerified, isVerified) ||
                other.isVerified == isVerified));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_searchDialogueData),
      searchDialogueTitle,
      alertTitle,
      alertMsg,
      maxDocNo,
      isLoading,
      isVerified);

  @override
  String toString() {
    return 'ChecklistState(searchDialogueData: $searchDialogueData, searchDialogueTitle: $searchDialogueTitle, alertTitle: $alertTitle, alertMsg: $alertMsg, maxDocNo: $maxDocNo, isLoading: $isLoading, isVerified: $isVerified)';
  }
}

/// @nodoc
abstract mixin class _$ChecklistStateCopyWith<$Res>
    implements $ChecklistStateCopyWith<$Res> {
  factory _$ChecklistStateCopyWith(
          _ChecklistState value, $Res Function(_ChecklistState) _then) =
      __$ChecklistStateCopyWithImpl;
  @override
  @useResult
  $Res call(
      {List<dynamic> searchDialogueData,
      String searchDialogueTitle,
      String alertTitle,
      String alertMsg,
      String maxDocNo,
      bool isLoading,
      bool isVerified});
}

/// @nodoc
class __$ChecklistStateCopyWithImpl<$Res>
    implements _$ChecklistStateCopyWith<$Res> {
  __$ChecklistStateCopyWithImpl(this._self, this._then);

  final _ChecklistState _self;
  final $Res Function(_ChecklistState) _then;

  /// Create a copy of ChecklistState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? searchDialogueData = null,
    Object? searchDialogueTitle = null,
    Object? alertTitle = null,
    Object? alertMsg = null,
    Object? maxDocNo = null,
    Object? isLoading = null,
    Object? isVerified = null,
  }) {
    return _then(_ChecklistState(
      searchDialogueData: null == searchDialogueData
          ? _self._searchDialogueData
          : searchDialogueData // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      searchDialogueTitle: null == searchDialogueTitle
          ? _self.searchDialogueTitle
          : searchDialogueTitle // ignore: cast_nullable_to_non_nullable
              as String,
      alertTitle: null == alertTitle
          ? _self.alertTitle
          : alertTitle // ignore: cast_nullable_to_non_nullable
              as String,
      alertMsg: null == alertMsg
          ? _self.alertMsg
          : alertMsg // ignore: cast_nullable_to_non_nullable
              as String,
      maxDocNo: null == maxDocNo
          ? _self.maxDocNo
          : maxDocNo // ignore: cast_nullable_to_non_nullable
              as String,
      isLoading: null == isLoading
          ? _self.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isVerified: null == isVerified
          ? _self.isVerified
          : isVerified // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

// dart format on
