// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tools_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ToolsEvent {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is ToolsEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'ToolsEvent()';
  }
}

/// @nodoc
class $ToolsEventCopyWith<$Res> {
  $ToolsEventCopyWith(ToolsEvent _, $Res Function(ToolsEvent) __);
}

/// @nodoc

class FetchDocNo implements ToolsEvent {
  const FetchDocNo();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is FetchDocNo);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'ToolsEvent.fetchDocNo()';
  }
}

/// @nodoc

class FetchDeptCode implements ToolsEvent {
  const FetchDeptCode();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is FetchDeptCode);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'ToolsEvent.fetchDeptCode()';
  }
}

/// @nodoc

class FetchTrailerNo implements ToolsEvent {
  const FetchTrailerNo();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is FetchTrailerNo);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'ToolsEvent.fetchTrailerNo()';
  }
}

/// @nodoc

class FetchPartCode implements ToolsEvent {
  const FetchPartCode();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is FetchPartCode);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'ToolsEvent.fetchPartCode()';
  }
}

/// @nodoc
mixin _$ToolsState {
  bool get isLoading;
  List get searchDialogueData;
  String get searchDialogueTitle;
  String get alertMsg;
  String get alertTitle;

  /// Create a copy of ToolsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ToolsStateCopyWith<ToolsState> get copyWith =>
      _$ToolsStateCopyWithImpl<ToolsState>(this as ToolsState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ToolsState &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            const DeepCollectionEquality()
                .equals(other.searchDialogueData, searchDialogueData) &&
            (identical(other.searchDialogueTitle, searchDialogueTitle) ||
                other.searchDialogueTitle == searchDialogueTitle) &&
            (identical(other.alertMsg, alertMsg) ||
                other.alertMsg == alertMsg) &&
            (identical(other.alertTitle, alertTitle) ||
                other.alertTitle == alertTitle));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isLoading,
      const DeepCollectionEquality().hash(searchDialogueData),
      searchDialogueTitle,
      alertMsg,
      alertTitle);

  @override
  String toString() {
    return 'ToolsState(isLoading: $isLoading, searchDialogueData: $searchDialogueData, searchDialogueTitle: $searchDialogueTitle, alertMsg: $alertMsg, alertTitle: $alertTitle)';
  }
}

/// @nodoc
abstract mixin class $ToolsStateCopyWith<$Res> {
  factory $ToolsStateCopyWith(
          ToolsState value, $Res Function(ToolsState) _then) =
      _$ToolsStateCopyWithImpl;
  @useResult
  $Res call(
      {bool isLoading,
      List<dynamic> searchDialogueData,
      String searchDialogueTitle,
      String alertMsg,
      String alertTitle});
}

/// @nodoc
class _$ToolsStateCopyWithImpl<$Res> implements $ToolsStateCopyWith<$Res> {
  _$ToolsStateCopyWithImpl(this._self, this._then);

  final ToolsState _self;
  final $Res Function(ToolsState) _then;

  /// Create a copy of ToolsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? searchDialogueData = null,
    Object? searchDialogueTitle = null,
    Object? alertMsg = null,
    Object? alertTitle = null,
  }) {
    return _then(_self.copyWith(
      isLoading: null == isLoading
          ? _self.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      searchDialogueData: null == searchDialogueData
          ? _self.searchDialogueData!
          : searchDialogueData // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      searchDialogueTitle: null == searchDialogueTitle
          ? _self.searchDialogueTitle
          : searchDialogueTitle // ignore: cast_nullable_to_non_nullable
              as String,
      alertMsg: null == alertMsg
          ? _self.alertMsg
          : alertMsg // ignore: cast_nullable_to_non_nullable
              as String,
      alertTitle: null == alertTitle
          ? _self.alertTitle
          : alertTitle // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _ToolsState implements ToolsState {
  const _ToolsState(
      {required this.isLoading,
      required final List<dynamic> searchDialogueData,
      required this.searchDialogueTitle,
      required this.alertMsg,
      required this.alertTitle})
      : _searchDialogueData = searchDialogueData;

  @override
  final bool isLoading;
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
  final String alertMsg;
  @override
  final String alertTitle;

  /// Create a copy of ToolsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ToolsStateCopyWith<_ToolsState> get copyWith =>
      __$ToolsStateCopyWithImpl<_ToolsState>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ToolsState &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            const DeepCollectionEquality()
                .equals(other._searchDialogueData, _searchDialogueData) &&
            (identical(other.searchDialogueTitle, searchDialogueTitle) ||
                other.searchDialogueTitle == searchDialogueTitle) &&
            (identical(other.alertMsg, alertMsg) ||
                other.alertMsg == alertMsg) &&
            (identical(other.alertTitle, alertTitle) ||
                other.alertTitle == alertTitle));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isLoading,
      const DeepCollectionEquality().hash(_searchDialogueData),
      searchDialogueTitle,
      alertMsg,
      alertTitle);

  @override
  String toString() {
    return 'ToolsState(isLoading: $isLoading, searchDialogueData: $searchDialogueData, searchDialogueTitle: $searchDialogueTitle, alertMsg: $alertMsg, alertTitle: $alertTitle)';
  }
}

/// @nodoc
abstract mixin class _$ToolsStateCopyWith<$Res>
    implements $ToolsStateCopyWith<$Res> {
  factory _$ToolsStateCopyWith(
          _ToolsState value, $Res Function(_ToolsState) _then) =
      __$ToolsStateCopyWithImpl;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      List<dynamic> searchDialogueData,
      String searchDialogueTitle,
      String alertMsg,
      String alertTitle});
}

/// @nodoc
class __$ToolsStateCopyWithImpl<$Res> implements _$ToolsStateCopyWith<$Res> {
  __$ToolsStateCopyWithImpl(this._self, this._then);

  final _ToolsState _self;
  final $Res Function(_ToolsState) _then;

  /// Create a copy of ToolsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? isLoading = null,
    Object? searchDialogueData = null,
    Object? searchDialogueTitle = null,
    Object? alertMsg = null,
    Object? alertTitle = null,
  }) {
    return _then(_ToolsState(
      isLoading: null == isLoading
          ? _self.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      searchDialogueData: null == searchDialogueData
          ? _self._searchDialogueData
          : searchDialogueData // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      searchDialogueTitle: null == searchDialogueTitle
          ? _self.searchDialogueTitle
          : searchDialogueTitle // ignore: cast_nullable_to_non_nullable
              as String,
      alertMsg: null == alertMsg
          ? _self.alertMsg
          : alertMsg // ignore: cast_nullable_to_non_nullable
              as String,
      alertTitle: null == alertTitle
          ? _self.alertTitle
          : alertTitle // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
