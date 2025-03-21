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
mixin _$InsuranceState {
  List get ItemsList;
  bool get isLoading;
  bool get isError;

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
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isError, isError) || other.isError == isError));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(ItemsList), isLoading, isError);

  @override
  String toString() {
    return 'InsuranceState(ItemsList: $ItemsList, isLoading: $isLoading, isError: $isError)';
  }
}

/// @nodoc
abstract mixin class $InsuranceStateCopyWith<$Res> {
  factory $InsuranceStateCopyWith(
          InsuranceState value, $Res Function(InsuranceState) _then) =
      _$InsuranceStateCopyWithImpl;
  @useResult
  $Res call({List<dynamic> ItemsList, bool isLoading, bool isError});
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
    Object? isLoading = null,
    Object? isError = null,
  }) {
    return _then(_self.copyWith(
      ItemsList: null == ItemsList
          ? _self.ItemsList!
          : ItemsList // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      isLoading: null == isLoading
          ? _self.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: null == isError
          ? _self.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class insuranceState implements InsuranceState {
  insuranceState(
      {required final List<dynamic> ItemsList,
      required this.isLoading,
      required this.isError})
      : _ItemsList = ItemsList;

  final List<dynamic> _ItemsList;
  @override
  List<dynamic> get ItemsList {
    if (_ItemsList is EqualUnmodifiableListView) return _ItemsList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_ItemsList);
  }

  @override
  final bool isLoading;
  @override
  final bool isError;

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
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isError, isError) || other.isError == isError));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_ItemsList), isLoading, isError);

  @override
  String toString() {
    return 'InsuranceState(ItemsList: $ItemsList, isLoading: $isLoading, isError: $isError)';
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
  $Res call({List<dynamic> ItemsList, bool isLoading, bool isError});
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
    Object? isLoading = null,
    Object? isError = null,
  }) {
    return _then(insuranceState(
      ItemsList: null == ItemsList
          ? _self._ItemsList
          : ItemsList // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      isLoading: null == isLoading
          ? _self.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: null == isError
          ? _self.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

// dart format on
