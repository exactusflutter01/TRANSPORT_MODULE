// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'accident_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AccidentEvent {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is AccidentEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'AccidentEvent()';
  }
}

/// @nodoc
class $AccidentEventCopyWith<$Res> {
  $AccidentEventCopyWith(AccidentEvent _, $Res Function(AccidentEvent) __);
}

/// @nodoc

class InsertAccidentData implements AccidentEvent {
  const InsertAccidentData(final Map<String, dynamic> accidentData)
      : _accidentData = accidentData;

  final Map<String, dynamic> _accidentData;
  Map<String, dynamic> get accidentData {
    if (_accidentData is EqualUnmodifiableMapView) return _accidentData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_accidentData);
  }

  /// Create a copy of AccidentEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $InsertAccidentDataCopyWith<InsertAccidentData> get copyWith =>
      _$InsertAccidentDataCopyWithImpl<InsertAccidentData>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is InsertAccidentData &&
            const DeepCollectionEquality()
                .equals(other._accidentData, _accidentData));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_accidentData));

  @override
  String toString() {
    return 'AccidentEvent.insertAccidentData(accidentData: $accidentData)';
  }
}

/// @nodoc
abstract mixin class $InsertAccidentDataCopyWith<$Res>
    implements $AccidentEventCopyWith<$Res> {
  factory $InsertAccidentDataCopyWith(
          InsertAccidentData value, $Res Function(InsertAccidentData) _then) =
      _$InsertAccidentDataCopyWithImpl;
  @useResult
  $Res call({Map<String, dynamic> accidentData});
}

/// @nodoc
class _$InsertAccidentDataCopyWithImpl<$Res>
    implements $InsertAccidentDataCopyWith<$Res> {
  _$InsertAccidentDataCopyWithImpl(this._self, this._then);

  final InsertAccidentData _self;
  final $Res Function(InsertAccidentData) _then;

  /// Create a copy of AccidentEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? accidentData = null,
  }) {
    return _then(InsertAccidentData(
      null == accidentData
          ? _self._accidentData
          : accidentData // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }
}

/// @nodoc

class FetchDocNo implements AccidentEvent {
  const FetchDocNo(this.div_code, this.doc_type);

  final String div_code;
  final String doc_type;

  /// Create a copy of AccidentEvent
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
            (identical(other.div_code, div_code) ||
                other.div_code == div_code) &&
            (identical(other.doc_type, doc_type) ||
                other.doc_type == doc_type));
  }

  @override
  int get hashCode => Object.hash(runtimeType, div_code, doc_type);

  @override
  String toString() {
    return 'AccidentEvent.fetchDocNo(div_code: $div_code, doc_type: $doc_type)';
  }
}

/// @nodoc
abstract mixin class $FetchDocNoCopyWith<$Res>
    implements $AccidentEventCopyWith<$Res> {
  factory $FetchDocNoCopyWith(
          FetchDocNo value, $Res Function(FetchDocNo) _then) =
      _$FetchDocNoCopyWithImpl;
  @useResult
  $Res call({String div_code, String doc_type});
}

/// @nodoc
class _$FetchDocNoCopyWithImpl<$Res> implements $FetchDocNoCopyWith<$Res> {
  _$FetchDocNoCopyWithImpl(this._self, this._then);

  final FetchDocNo _self;
  final $Res Function(FetchDocNo) _then;

  /// Create a copy of AccidentEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? div_code = null,
    Object? doc_type = null,
  }) {
    return _then(FetchDocNo(
      null == div_code
          ? _self.div_code
          : div_code // ignore: cast_nullable_to_non_nullable
              as String,
      null == doc_type
          ? _self.doc_type
          : doc_type // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class FetchFineCode implements AccidentEvent {
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
    return 'AccidentEvent.fetchFineCode()';
  }
}

/// @nodoc
mixin _$AccidentState {
  bool get isLoading;
  List get searchDialogueData;
  String get searchDialogueTitle;
  String get alertMsg;
  String get alertTitle;

  /// Create a copy of AccidentState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AccidentStateCopyWith<AccidentState> get copyWith =>
      _$AccidentStateCopyWithImpl<AccidentState>(
          this as AccidentState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AccidentState &&
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
    return 'AccidentState(isLoading: $isLoading, searchDialogueData: $searchDialogueData, searchDialogueTitle: $searchDialogueTitle, alertMsg: $alertMsg, alertTitle: $alertTitle)';
  }
}

/// @nodoc
abstract mixin class $AccidentStateCopyWith<$Res> {
  factory $AccidentStateCopyWith(
          AccidentState value, $Res Function(AccidentState) _then) =
      _$AccidentStateCopyWithImpl;
  @useResult
  $Res call(
      {bool isLoading,
      List<dynamic> searchDialogueData,
      String searchDialogueTitle,
      String alertMsg,
      String alertTitle});
}

/// @nodoc
class _$AccidentStateCopyWithImpl<$Res>
    implements $AccidentStateCopyWith<$Res> {
  _$AccidentStateCopyWithImpl(this._self, this._then);

  final AccidentState _self;
  final $Res Function(AccidentState) _then;

  /// Create a copy of AccidentState
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

class _AccidentState implements AccidentState {
  const _AccidentState(
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

  /// Create a copy of AccidentState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$AccidentStateCopyWith<_AccidentState> get copyWith =>
      __$AccidentStateCopyWithImpl<_AccidentState>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AccidentState &&
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
    return 'AccidentState(isLoading: $isLoading, searchDialogueData: $searchDialogueData, searchDialogueTitle: $searchDialogueTitle, alertMsg: $alertMsg, alertTitle: $alertTitle)';
  }
}

/// @nodoc
abstract mixin class _$AccidentStateCopyWith<$Res>
    implements $AccidentStateCopyWith<$Res> {
  factory _$AccidentStateCopyWith(
          _AccidentState value, $Res Function(_AccidentState) _then) =
      __$AccidentStateCopyWithImpl;
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
class __$AccidentStateCopyWithImpl<$Res>
    implements _$AccidentStateCopyWith<$Res> {
  __$AccidentStateCopyWithImpl(this._self, this._then);

  final _AccidentState _self;
  final $Res Function(_AccidentState) _then;

  /// Create a copy of AccidentState
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
    return _then(_AccidentState(
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
