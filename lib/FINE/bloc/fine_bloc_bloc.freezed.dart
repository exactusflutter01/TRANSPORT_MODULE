// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'fine_bloc_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$FineBlocEvent {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is FineBlocEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'FineBlocEvent()';
  }
}

/// @nodoc
class $FineBlocEventCopyWith<$Res> {
  $FineBlocEventCopyWith(FineBlocEvent _, $Res Function(FineBlocEvent) __);
}

/// @nodoc

class _Started implements FineBlocEvent {
  const _Started();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Started);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'FineBlocEvent.started()';
  }
}

/// @nodoc

class FineFetchDocNO implements FineBlocEvent {
  const FineFetchDocNO(this.divcode);

  final String divcode;

  /// Create a copy of FineBlocEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $FineFetchDocNOCopyWith<FineFetchDocNO> get copyWith =>
      _$FineFetchDocNOCopyWithImpl<FineFetchDocNO>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is FineFetchDocNO &&
            (identical(other.divcode, divcode) || other.divcode == divcode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, divcode);

  @override
  String toString() {
    return 'FineBlocEvent.fetchDocNo(divcode: $divcode)';
  }
}

/// @nodoc
abstract mixin class $FineFetchDocNOCopyWith<$Res>
    implements $FineBlocEventCopyWith<$Res> {
  factory $FineFetchDocNOCopyWith(
          FineFetchDocNO value, $Res Function(FineFetchDocNO) _then) =
      _$FineFetchDocNOCopyWithImpl;
  @useResult
  $Res call({String divcode});
}

/// @nodoc
class _$FineFetchDocNOCopyWithImpl<$Res>
    implements $FineFetchDocNOCopyWith<$Res> {
  _$FineFetchDocNOCopyWithImpl(this._self, this._then);

  final FineFetchDocNO _self;
  final $Res Function(FineFetchDocNO) _then;

  /// Create a copy of FineBlocEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? divcode = null,
  }) {
    return _then(FineFetchDocNO(
      null == divcode
          ? _self.divcode
          : divcode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class FetchFineCode implements FineBlocEvent {
  const FetchFineCode();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is FetchFineCode);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'FineBlocEvent.fetchFineCode()';
  }
}

/// @nodoc
mixin _$FineBlocState {
  List<dynamic> get searchDialogData;
  String get searchDialogTitle;
  bool get isLoading;
  bool get isSaving;
  bool get isVerified;
  String get msg;

  /// Create a copy of FineBlocState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $FineBlocStateCopyWith<FineBlocState> get copyWith =>
      _$FineBlocStateCopyWithImpl<FineBlocState>(
          this as FineBlocState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is FineBlocState &&
            const DeepCollectionEquality()
                .equals(other.searchDialogData, searchDialogData) &&
            (identical(other.searchDialogTitle, searchDialogTitle) ||
                other.searchDialogTitle == searchDialogTitle) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isSaving, isSaving) ||
                other.isSaving == isSaving) &&
            (identical(other.isVerified, isVerified) ||
                other.isVerified == isVerified) &&
            (identical(other.msg, msg) || other.msg == msg));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(searchDialogData),
      searchDialogTitle,
      isLoading,
      isSaving,
      isVerified,
      msg);

  @override
  String toString() {
    return 'FineBlocState(searchDialogData: $searchDialogData, searchDialogTitle: $searchDialogTitle, isLoading: $isLoading, isSaving: $isSaving, isVerified: $isVerified, msg: $msg)';
  }
}

/// @nodoc
abstract mixin class $FineBlocStateCopyWith<$Res> {
  factory $FineBlocStateCopyWith(
          FineBlocState value, $Res Function(FineBlocState) _then) =
      _$FineBlocStateCopyWithImpl;
  @useResult
  $Res call(
      {List<dynamic> searchDialogData,
      String searchDialogTitle,
      bool isLoading,
      bool isSaving,
      bool isVerified,
      String msg});
}

/// @nodoc
class _$FineBlocStateCopyWithImpl<$Res>
    implements $FineBlocStateCopyWith<$Res> {
  _$FineBlocStateCopyWithImpl(this._self, this._then);

  final FineBlocState _self;
  final $Res Function(FineBlocState) _then;

  /// Create a copy of FineBlocState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? searchDialogData = null,
    Object? searchDialogTitle = null,
    Object? isLoading = null,
    Object? isSaving = null,
    Object? isVerified = null,
    Object? msg = null,
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
      isSaving: null == isSaving
          ? _self.isSaving
          : isSaving // ignore: cast_nullable_to_non_nullable
              as bool,
      isVerified: null == isVerified
          ? _self.isVerified
          : isVerified // ignore: cast_nullable_to_non_nullable
              as bool,
      msg: null == msg
          ? _self.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _FineBlocState implements FineBlocState {
  _FineBlocState(
      {required final List<dynamic> searchDialogData,
      required this.searchDialogTitle,
      required this.isLoading,
      required this.isSaving,
      required this.isVerified,
      required this.msg})
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
  final bool isSaving;
  @override
  final bool isVerified;
  @override
  final String msg;

  /// Create a copy of FineBlocState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$FineBlocStateCopyWith<_FineBlocState> get copyWith =>
      __$FineBlocStateCopyWithImpl<_FineBlocState>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _FineBlocState &&
            const DeepCollectionEquality()
                .equals(other._searchDialogData, _searchDialogData) &&
            (identical(other.searchDialogTitle, searchDialogTitle) ||
                other.searchDialogTitle == searchDialogTitle) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isSaving, isSaving) ||
                other.isSaving == isSaving) &&
            (identical(other.isVerified, isVerified) ||
                other.isVerified == isVerified) &&
            (identical(other.msg, msg) || other.msg == msg));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_searchDialogData),
      searchDialogTitle,
      isLoading,
      isSaving,
      isVerified,
      msg);

  @override
  String toString() {
    return 'FineBlocState(searchDialogData: $searchDialogData, searchDialogTitle: $searchDialogTitle, isLoading: $isLoading, isSaving: $isSaving, isVerified: $isVerified, msg: $msg)';
  }
}

/// @nodoc
abstract mixin class _$FineBlocStateCopyWith<$Res>
    implements $FineBlocStateCopyWith<$Res> {
  factory _$FineBlocStateCopyWith(
          _FineBlocState value, $Res Function(_FineBlocState) _then) =
      __$FineBlocStateCopyWithImpl;
  @override
  @useResult
  $Res call(
      {List<dynamic> searchDialogData,
      String searchDialogTitle,
      bool isLoading,
      bool isSaving,
      bool isVerified,
      String msg});
}

/// @nodoc
class __$FineBlocStateCopyWithImpl<$Res>
    implements _$FineBlocStateCopyWith<$Res> {
  __$FineBlocStateCopyWithImpl(this._self, this._then);

  final _FineBlocState _self;
  final $Res Function(_FineBlocState) _then;

  /// Create a copy of FineBlocState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? searchDialogData = null,
    Object? searchDialogTitle = null,
    Object? isLoading = null,
    Object? isSaving = null,
    Object? isVerified = null,
    Object? msg = null,
  }) {
    return _then(_FineBlocState(
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
      isSaving: null == isSaving
          ? _self.isSaving
          : isSaving // ignore: cast_nullable_to_non_nullable
              as bool,
      isVerified: null == isVerified
          ? _self.isVerified
          : isVerified // ignore: cast_nullable_to_non_nullable
              as bool,
      msg: null == msg
          ? _self.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
