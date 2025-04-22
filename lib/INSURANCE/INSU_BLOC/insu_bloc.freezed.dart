// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'insu_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$InsuEvent {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is InsuEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'InsuEvent()';
  }
}

/// @nodoc
class $InsuEventCopyWith<$Res> {
  $InsuEventCopyWith(InsuEvent _, $Res Function(InsuEvent) __);
}

/// @nodoc

class _Started implements InsuEvent {
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
    return 'InsuEvent.started()';
  }
}

/// @nodoc

class FetchDoc implements InsuEvent {
  const FetchDoc();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is FetchDoc);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'InsuEvent.fetchdoc()';
  }
}

/// @nodoc

class FetchPolicy implements InsuEvent {
  const FetchPolicy();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is FetchPolicy);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'InsuEvent.fetchPolicy()';
  }
}

/// @nodoc

class FetchDebitCode implements InsuEvent {
  const FetchDebitCode();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is FetchDebitCode);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'InsuEvent.fetchDebitCode()';
  }
}

/// @nodoc

class FetchVehicleCode implements InsuEvent {
  const FetchVehicleCode(this.division);

  final String division;

  /// Create a copy of InsuEvent
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
            (identical(other.division, division) ||
                other.division == division));
  }

  @override
  int get hashCode => Object.hash(runtimeType, division);

  @override
  String toString() {
    return 'InsuEvent.fetchVehicleCode(division: $division)';
  }
}

/// @nodoc
abstract mixin class $FetchVehicleCodeCopyWith<$Res>
    implements $InsuEventCopyWith<$Res> {
  factory $FetchVehicleCodeCopyWith(
          FetchVehicleCode value, $Res Function(FetchVehicleCode) _then) =
      _$FetchVehicleCodeCopyWithImpl;
  @useResult
  $Res call({String division});
}

/// @nodoc
class _$FetchVehicleCodeCopyWithImpl<$Res>
    implements $FetchVehicleCodeCopyWith<$Res> {
  _$FetchVehicleCodeCopyWithImpl(this._self, this._then);

  final FetchVehicleCode _self;
  final $Res Function(FetchVehicleCode) _then;

  /// Create a copy of InsuEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? division = null,
  }) {
    return _then(FetchVehicleCode(
      null == division
          ? _self.division
          : division // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class InsuranceInsert implements InsuEvent {
  const InsuranceInsert(final Map<dynamic, dynamic> data) : _data = data;

  final Map<dynamic, dynamic> _data;
  Map<dynamic, dynamic> get data {
    if (_data is EqualUnmodifiableMapView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_data);
  }

  /// Create a copy of InsuEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $InsuranceInsertCopyWith<InsuranceInsert> get copyWith =>
      _$InsuranceInsertCopyWithImpl<InsuranceInsert>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is InsuranceInsert &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  @override
  String toString() {
    return 'InsuEvent.insuranceInsert(data: $data)';
  }
}

/// @nodoc
abstract mixin class $InsuranceInsertCopyWith<$Res>
    implements $InsuEventCopyWith<$Res> {
  factory $InsuranceInsertCopyWith(
          InsuranceInsert value, $Res Function(InsuranceInsert) _then) =
      _$InsuranceInsertCopyWithImpl;
  @useResult
  $Res call({Map<dynamic, dynamic> data});
}

/// @nodoc
class _$InsuranceInsertCopyWithImpl<$Res>
    implements $InsuranceInsertCopyWith<$Res> {
  _$InsuranceInsertCopyWithImpl(this._self, this._then);

  final InsuranceInsert _self;
  final $Res Function(InsuranceInsert) _then;

  /// Create a copy of InsuEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? data = null,
  }) {
    return _then(InsuranceInsert(
      null == data
          ? _self._data
          : data // ignore: cast_nullable_to_non_nullable
              as Map<dynamic, dynamic>,
    ));
  }
}

/// @nodoc

class Verifiedclicked implements InsuEvent {
  const Verifiedclicked(this.clicked);

  final bool clicked;

  /// Create a copy of InsuEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $VerifiedclickedCopyWith<Verifiedclicked> get copyWith =>
      _$VerifiedclickedCopyWithImpl<Verifiedclicked>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Verifiedclicked &&
            (identical(other.clicked, clicked) || other.clicked == clicked));
  }

  @override
  int get hashCode => Object.hash(runtimeType, clicked);

  @override
  String toString() {
    return 'InsuEvent.verifiedClicked(clicked: $clicked)';
  }
}

/// @nodoc
abstract mixin class $VerifiedclickedCopyWith<$Res>
    implements $InsuEventCopyWith<$Res> {
  factory $VerifiedclickedCopyWith(
          Verifiedclicked value, $Res Function(Verifiedclicked) _then) =
      _$VerifiedclickedCopyWithImpl;
  @useResult
  $Res call({bool clicked});
}

/// @nodoc
class _$VerifiedclickedCopyWithImpl<$Res>
    implements $VerifiedclickedCopyWith<$Res> {
  _$VerifiedclickedCopyWithImpl(this._self, this._then);

  final Verifiedclicked _self;
  final $Res Function(Verifiedclicked) _then;

  /// Create a copy of InsuEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? clicked = null,
  }) {
    return _then(Verifiedclicked(
      null == clicked
          ? _self.clicked
          : clicked // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class MaxdocNo implements InsuEvent {
  const MaxdocNo();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is MaxdocNo);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'InsuEvent.maxdocNo()';
  }
}

/// @nodoc
mixin _$InsuranceState {
  List get ItemsList;
  String get SearchDialogueName;
  bool get isLoading;
  bool get isError;
  dynamic get Response;
  dynamic get AlertMessage;
  dynamic get AlertTitle;
  bool get verified;

  /// Create a copy of InsuranceState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $InsuranceStateCopyWith<InsuranceState> get copyWith =>
      _$InsuranceStateCopyWithImpl<InsuranceState>(
          this as InsuranceState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is InsuranceState &&
            const DeepCollectionEquality().equals(other.ItemsList, ItemsList) &&
            (identical(other.SearchDialogueName, SearchDialogueName) ||
                other.SearchDialogueName == SearchDialogueName) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isError, isError) || other.isError == isError) &&
            const DeepCollectionEquality().equals(other.Response, Response) &&
            const DeepCollectionEquality()
                .equals(other.AlertMessage, AlertMessage) &&
            const DeepCollectionEquality()
                .equals(other.AlertTitle, AlertTitle) &&
            (identical(other.verified, verified) ||
                other.verified == verified));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(ItemsList),
      SearchDialogueName,
      isLoading,
      isError,
      const DeepCollectionEquality().hash(Response),
      const DeepCollectionEquality().hash(AlertMessage),
      const DeepCollectionEquality().hash(AlertTitle),
      verified);

  @override
  String toString() {
    return 'InsuranceState(ItemsList: $ItemsList, SearchDialogueName: $SearchDialogueName, isLoading: $isLoading, isError: $isError, Response: $Response, AlertMessage: $AlertMessage, AlertTitle: $AlertTitle, verified: $verified)';
  }
}

/// @nodoc
abstract mixin class $InsuranceStateCopyWith<$Res> {
  factory $InsuranceStateCopyWith(
          InsuranceState value, $Res Function(InsuranceState) _then) =
      _$InsuranceStateCopyWithImpl;
  @useResult
  $Res call(
      {List<dynamic> ItemsList,
      String SearchDialogueName,
      bool isLoading,
      bool isError,
      dynamic Response,
      dynamic AlertMessage,
      dynamic AlertTitle,
      bool verified});
}

/// @nodoc
class _$InsuranceStateCopyWithImpl<$Res>
    implements $InsuranceStateCopyWith<$Res> {
  _$InsuranceStateCopyWithImpl(this._self, this._then);

  final InsuranceState _self;
  final $Res Function(InsuranceState) _then;

  /// Create a copy of InsuranceState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ItemsList = null,
    Object? SearchDialogueName = null,
    Object? isLoading = null,
    Object? isError = null,
    Object? Response = freezed,
    Object? AlertMessage = freezed,
    Object? AlertTitle = freezed,
    Object? verified = null,
  }) {
    return _then(_self.copyWith(
      ItemsList: null == ItemsList
          ? _self.ItemsList!
          : ItemsList // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      SearchDialogueName: null == SearchDialogueName
          ? _self.SearchDialogueName
          : SearchDialogueName // ignore: cast_nullable_to_non_nullable
              as String,
      isLoading: null == isLoading
          ? _self.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: null == isError
          ? _self.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
      Response: freezed == Response
          ? _self.Response
          : Response // ignore: cast_nullable_to_non_nullable
              as dynamic,
      AlertMessage: freezed == AlertMessage
          ? _self.AlertMessage
          : AlertMessage // ignore: cast_nullable_to_non_nullable
              as dynamic,
      AlertTitle: freezed == AlertTitle
          ? _self.AlertTitle
          : AlertTitle // ignore: cast_nullable_to_non_nullable
              as dynamic,
      verified: null == verified
          ? _self.verified
          : verified // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class insuranceState implements InsuranceState {
  insuranceState(
      {required final List<dynamic> ItemsList,
      required this.SearchDialogueName,
      required this.isLoading,
      required this.isError,
      required this.Response,
      required this.AlertMessage,
      required this.AlertTitle,
      required this.verified})
      : _ItemsList = ItemsList;

  final List<dynamic> _ItemsList;
  @override
  List<dynamic> get ItemsList {
    if (_ItemsList is EqualUnmodifiableListView) return _ItemsList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_ItemsList);
  }

  @override
  final String SearchDialogueName;
  @override
  final bool isLoading;
  @override
  final bool isError;
  @override
  final dynamic Response;
  @override
  final dynamic AlertMessage;
  @override
  final dynamic AlertTitle;
  @override
  final bool verified;

  /// Create a copy of InsuranceState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $insuranceStateCopyWith<insuranceState> get copyWith =>
      _$insuranceStateCopyWithImpl<insuranceState>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is insuranceState &&
            const DeepCollectionEquality()
                .equals(other._ItemsList, _ItemsList) &&
            (identical(other.SearchDialogueName, SearchDialogueName) ||
                other.SearchDialogueName == SearchDialogueName) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isError, isError) || other.isError == isError) &&
            const DeepCollectionEquality().equals(other.Response, Response) &&
            const DeepCollectionEquality()
                .equals(other.AlertMessage, AlertMessage) &&
            const DeepCollectionEquality()
                .equals(other.AlertTitle, AlertTitle) &&
            (identical(other.verified, verified) ||
                other.verified == verified));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_ItemsList),
      SearchDialogueName,
      isLoading,
      isError,
      const DeepCollectionEquality().hash(Response),
      const DeepCollectionEquality().hash(AlertMessage),
      const DeepCollectionEquality().hash(AlertTitle),
      verified);

  @override
  String toString() {
    return 'InsuranceState(ItemsList: $ItemsList, SearchDialogueName: $SearchDialogueName, isLoading: $isLoading, isError: $isError, Response: $Response, AlertMessage: $AlertMessage, AlertTitle: $AlertTitle, verified: $verified)';
  }
}

/// @nodoc
abstract mixin class $insuranceStateCopyWith<$Res>
    implements $InsuranceStateCopyWith<$Res> {
  factory $insuranceStateCopyWith(
          insuranceState value, $Res Function(insuranceState) _then) =
      _$insuranceStateCopyWithImpl;
  @override
  @useResult
  $Res call(
      {List<dynamic> ItemsList,
      String SearchDialogueName,
      bool isLoading,
      bool isError,
      dynamic Response,
      dynamic AlertMessage,
      dynamic AlertTitle,
      bool verified});
}

/// @nodoc
class _$insuranceStateCopyWithImpl<$Res>
    implements $insuranceStateCopyWith<$Res> {
  _$insuranceStateCopyWithImpl(this._self, this._then);

  final insuranceState _self;
  final $Res Function(insuranceState) _then;

  /// Create a copy of InsuranceState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? ItemsList = null,
    Object? SearchDialogueName = null,
    Object? isLoading = null,
    Object? isError = null,
    Object? Response = freezed,
    Object? AlertMessage = freezed,
    Object? AlertTitle = freezed,
    Object? verified = null,
  }) {
    return _then(insuranceState(
      ItemsList: null == ItemsList
          ? _self._ItemsList
          : ItemsList // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      SearchDialogueName: null == SearchDialogueName
          ? _self.SearchDialogueName
          : SearchDialogueName // ignore: cast_nullable_to_non_nullable
              as String,
      isLoading: null == isLoading
          ? _self.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: null == isError
          ? _self.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
      Response: freezed == Response
          ? _self.Response
          : Response // ignore: cast_nullable_to_non_nullable
              as dynamic,
      AlertMessage: freezed == AlertMessage
          ? _self.AlertMessage
          : AlertMessage // ignore: cast_nullable_to_non_nullable
              as dynamic,
      AlertTitle: freezed == AlertTitle
          ? _self.AlertTitle
          : AlertTitle // ignore: cast_nullable_to_non_nullable
              as dynamic,
      verified: null == verified
          ? _self.verified
          : verified // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

// dart format on
