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

class SaveData implements RegEvent {
  const SaveData();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is SaveData);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'RegEvent.saveData()';
  }
}

/// @nodoc
mixin _$RegState {
  List get searchDialogData;
  String get searchDialogTitle;
  bool get isLoading;
  bool get isSaving;
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
                .equals(other.searchDialogData, searchDialogData) &&
            (identical(other.searchDialogTitle, searchDialogTitle) ||
                other.searchDialogTitle == searchDialogTitle) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isSaving, isSaving) ||
                other.isSaving == isSaving) &&
            (identical(other.msg, msg) || other.msg == msg));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(searchDialogData),
      searchDialogTitle,
      isLoading,
      isSaving,
      msg);

  @override
  String toString() {
    return 'RegState(searchDialogData: $searchDialogData, searchDialogTitle: $searchDialogTitle, isLoading: $isLoading, isSaving: $isSaving, msg: $msg)';
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
      bool isSaving,
      String msg});
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
    Object? isSaving = null,
    Object? msg = null,
  }) {
    return _then(_self.copyWith(
      searchDialogData: null == searchDialogData
          ? _self.searchDialogData!
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
      {required final List<dynamic> searchDialogData,
      required this.searchDialogTitle,
      required this.isLoading,
      required this.isSaving,
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
                .equals(other._searchDialogData, _searchDialogData) &&
            (identical(other.searchDialogTitle, searchDialogTitle) ||
                other.searchDialogTitle == searchDialogTitle) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isSaving, isSaving) ||
                other.isSaving == isSaving) &&
            (identical(other.msg, msg) || other.msg == msg));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_searchDialogData),
      searchDialogTitle,
      isLoading,
      isSaving,
      msg);

  @override
  String toString() {
    return 'RegState(searchDialogData: $searchDialogData, searchDialogTitle: $searchDialogTitle, isLoading: $isLoading, isSaving: $isSaving, msg: $msg)';
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
      bool isSaving,
      String msg});
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
    Object? isSaving = null,
    Object? msg = null,
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
      isSaving: null == isSaving
          ? _self.isSaving
          : isSaving // ignore: cast_nullable_to_non_nullable
              as bool,
      msg: null == msg
          ? _self.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
