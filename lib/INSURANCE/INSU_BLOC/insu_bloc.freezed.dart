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

class InsuranceInsert implements InsuEvent {
  const InsuranceInsert(
      this.vehcode,
      this.docno,
      this.docdate,
      this.invno,
      this.invdate,
      this.supcode,
      this.costbookno,
      this.divcode,
      this.deptcode,
      this.inscompany,
      this.strtdte,
      this.expdate,
      this.policytype,
      this.policyno,
      this.amount,
      this.remarks,
      this.currcode,
      this.exrate,
      this.active,
      this.userid,
      this.strtread,
      this.endreading,
      this.empid,
      this.accodedr,
      this.docref,
      this.exptypecode,
      this.expsubtype_code,
      this.exp_code,
      this.verified,
      this.verifieddate,
      this.verifiedby);

  final dynamic vehcode;
  final dynamic docno;
  final dynamic docdate;
  final dynamic invno;
  final dynamic invdate;
  final dynamic supcode;
  final dynamic costbookno;
  final dynamic divcode;
  final dynamic deptcode;
  final dynamic inscompany;
  final dynamic strtdte;
  final dynamic expdate;
  final dynamic policytype;
  final dynamic policyno;
  final dynamic amount;
  final dynamic remarks;
  final dynamic currcode;
  final dynamic exrate;
  final dynamic active;
  final dynamic userid;
  final dynamic strtread;
  final dynamic endreading;
  final dynamic empid;
  final dynamic accodedr;
  final dynamic docref;
  final dynamic exptypecode;
  final dynamic expsubtype_code;
  final dynamic exp_code;
  final dynamic verified;
  final dynamic verifieddate;
  final dynamic verifiedby;

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
            const DeepCollectionEquality().equals(other.vehcode, vehcode) &&
            const DeepCollectionEquality().equals(other.docno, docno) &&
            const DeepCollectionEquality().equals(other.docdate, docdate) &&
            const DeepCollectionEquality().equals(other.invno, invno) &&
            const DeepCollectionEquality().equals(other.invdate, invdate) &&
            const DeepCollectionEquality().equals(other.supcode, supcode) &&
            const DeepCollectionEquality()
                .equals(other.costbookno, costbookno) &&
            const DeepCollectionEquality().equals(other.divcode, divcode) &&
            const DeepCollectionEquality().equals(other.deptcode, deptcode) &&
            const DeepCollectionEquality()
                .equals(other.inscompany, inscompany) &&
            const DeepCollectionEquality().equals(other.strtdte, strtdte) &&
            const DeepCollectionEquality().equals(other.expdate, expdate) &&
            const DeepCollectionEquality()
                .equals(other.policytype, policytype) &&
            const DeepCollectionEquality().equals(other.policyno, policyno) &&
            const DeepCollectionEquality().equals(other.amount, amount) &&
            const DeepCollectionEquality().equals(other.remarks, remarks) &&
            const DeepCollectionEquality().equals(other.currcode, currcode) &&
            const DeepCollectionEquality().equals(other.exrate, exrate) &&
            const DeepCollectionEquality().equals(other.active, active) &&
            const DeepCollectionEquality().equals(other.userid, userid) &&
            const DeepCollectionEquality().equals(other.strtread, strtread) &&
            const DeepCollectionEquality()
                .equals(other.endreading, endreading) &&
            const DeepCollectionEquality().equals(other.empid, empid) &&
            const DeepCollectionEquality().equals(other.accodedr, accodedr) &&
            const DeepCollectionEquality().equals(other.docref, docref) &&
            const DeepCollectionEquality()
                .equals(other.exptypecode, exptypecode) &&
            const DeepCollectionEquality()
                .equals(other.expsubtype_code, expsubtype_code) &&
            const DeepCollectionEquality().equals(other.exp_code, exp_code) &&
            const DeepCollectionEquality().equals(other.verified, verified) &&
            const DeepCollectionEquality()
                .equals(other.verifieddate, verifieddate) &&
            const DeepCollectionEquality()
                .equals(other.verifiedby, verifiedby));
  }

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(vehcode),
        const DeepCollectionEquality().hash(docno),
        const DeepCollectionEquality().hash(docdate),
        const DeepCollectionEquality().hash(invno),
        const DeepCollectionEquality().hash(invdate),
        const DeepCollectionEquality().hash(supcode),
        const DeepCollectionEquality().hash(costbookno),
        const DeepCollectionEquality().hash(divcode),
        const DeepCollectionEquality().hash(deptcode),
        const DeepCollectionEquality().hash(inscompany),
        const DeepCollectionEquality().hash(strtdte),
        const DeepCollectionEquality().hash(expdate),
        const DeepCollectionEquality().hash(policytype),
        const DeepCollectionEquality().hash(policyno),
        const DeepCollectionEquality().hash(amount),
        const DeepCollectionEquality().hash(remarks),
        const DeepCollectionEquality().hash(currcode),
        const DeepCollectionEquality().hash(exrate),
        const DeepCollectionEquality().hash(active),
        const DeepCollectionEquality().hash(userid),
        const DeepCollectionEquality().hash(strtread),
        const DeepCollectionEquality().hash(endreading),
        const DeepCollectionEquality().hash(empid),
        const DeepCollectionEquality().hash(accodedr),
        const DeepCollectionEquality().hash(docref),
        const DeepCollectionEquality().hash(exptypecode),
        const DeepCollectionEquality().hash(expsubtype_code),
        const DeepCollectionEquality().hash(exp_code),
        const DeepCollectionEquality().hash(verified),
        const DeepCollectionEquality().hash(verifieddate),
        const DeepCollectionEquality().hash(verifiedby)
      ]);

  @override
  String toString() {
    return 'InsuEvent.insuranceInsert(vehcode: $vehcode, docno: $docno, docdate: $docdate, invno: $invno, invdate: $invdate, supcode: $supcode, costbookno: $costbookno, divcode: $divcode, deptcode: $deptcode, inscompany: $inscompany, strtdte: $strtdte, expdate: $expdate, policytype: $policytype, policyno: $policyno, amount: $amount, remarks: $remarks, currcode: $currcode, exrate: $exrate, active: $active, userid: $userid, strtread: $strtread, endreading: $endreading, empid: $empid, accodedr: $accodedr, docref: $docref, exptypecode: $exptypecode, expsubtype_code: $expsubtype_code, exp_code: $exp_code, verified: $verified, verifieddate: $verifieddate, verifiedby: $verifiedby)';
  }
}

/// @nodoc
abstract mixin class $InsuranceInsertCopyWith<$Res>
    implements $InsuEventCopyWith<$Res> {
  factory $InsuranceInsertCopyWith(
          InsuranceInsert value, $Res Function(InsuranceInsert) _then) =
      _$InsuranceInsertCopyWithImpl;
  @useResult
  $Res call(
      {dynamic vehcode,
      dynamic docno,
      dynamic docdate,
      dynamic invno,
      dynamic invdate,
      dynamic supcode,
      dynamic costbookno,
      dynamic divcode,
      dynamic deptcode,
      dynamic inscompany,
      dynamic strtdte,
      dynamic expdate,
      dynamic policytype,
      dynamic policyno,
      dynamic amount,
      dynamic remarks,
      dynamic currcode,
      dynamic exrate,
      dynamic active,
      dynamic userid,
      dynamic strtread,
      dynamic endreading,
      dynamic empid,
      dynamic accodedr,
      dynamic docref,
      dynamic exptypecode,
      dynamic expsubtype_code,
      dynamic exp_code,
      dynamic verified,
      dynamic verifieddate,
      dynamic verifiedby});
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
    Object? vehcode = freezed,
    Object? docno = freezed,
    Object? docdate = freezed,
    Object? invno = freezed,
    Object? invdate = freezed,
    Object? supcode = freezed,
    Object? costbookno = freezed,
    Object? divcode = freezed,
    Object? deptcode = freezed,
    Object? inscompany = freezed,
    Object? strtdte = freezed,
    Object? expdate = freezed,
    Object? policytype = freezed,
    Object? policyno = freezed,
    Object? amount = freezed,
    Object? remarks = freezed,
    Object? currcode = freezed,
    Object? exrate = freezed,
    Object? active = freezed,
    Object? userid = freezed,
    Object? strtread = freezed,
    Object? endreading = freezed,
    Object? empid = freezed,
    Object? accodedr = freezed,
    Object? docref = freezed,
    Object? exptypecode = freezed,
    Object? expsubtype_code = freezed,
    Object? exp_code = freezed,
    Object? verified = freezed,
    Object? verifieddate = freezed,
    Object? verifiedby = freezed,
  }) {
    return _then(InsuranceInsert(
      freezed == vehcode ? _self.vehcode! : vehcode,
      freezed == docno ? _self.docno! : docno,
      freezed == docdate ? _self.docdate! : docdate,
      freezed == invno ? _self.invno! : invno,
      freezed == invdate ? _self.invdate! : invdate,
      freezed == supcode ? _self.supcode! : supcode,
      freezed == costbookno ? _self.costbookno! : costbookno,
      freezed == divcode ? _self.divcode! : divcode,
      freezed == deptcode ? _self.deptcode! : deptcode,
      freezed == inscompany ? _self.inscompany! : inscompany,
      freezed == strtdte ? _self.strtdte! : strtdte,
      freezed == expdate ? _self.expdate! : expdate,
      freezed == policytype ? _self.policytype! : policytype,
      freezed == policyno ? _self.policyno! : policyno,
      freezed == amount ? _self.amount! : amount,
      freezed == remarks ? _self.remarks! : remarks,
      freezed == currcode ? _self.currcode! : currcode,
      freezed == exrate ? _self.exrate! : exrate,
      freezed == active ? _self.active! : active,
      freezed == userid ? _self.userid! : userid,
      freezed == strtread ? _self.strtread! : strtread,
      freezed == endreading ? _self.endreading! : endreading,
      freezed == empid ? _self.empid! : empid,
      freezed == accodedr ? _self.accodedr! : accodedr,
      freezed == docref ? _self.docref! : docref,
      freezed == exptypecode ? _self.exptypecode! : exptypecode,
      freezed == expsubtype_code ? _self.expsubtype_code! : expsubtype_code,
      freezed == exp_code ? _self.exp_code! : exp_code,
      freezed == verified ? _self.verified! : verified,
      freezed == verifieddate ? _self.verifieddate! : verifieddate,
      freezed == verifiedby ? _self.verifiedby! : verifiedby,
    ));
  }
}

/// @nodoc
mixin _$InsuranceState {
  List get ItemsList;
  String get SearchDialogueName;
  bool get isLoading;
  bool get isError;
  String get ResponseMessage;
  dynamic get Response;

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
            (identical(other.ResponseMessage, ResponseMessage) ||
                other.ResponseMessage == ResponseMessage) &&
            const DeepCollectionEquality().equals(other.Response, Response));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(ItemsList),
      SearchDialogueName,
      isLoading,
      isError,
      ResponseMessage,
      const DeepCollectionEquality().hash(Response));

  @override
  String toString() {
    return 'InsuranceState(ItemsList: $ItemsList, SearchDialogueName: $SearchDialogueName, isLoading: $isLoading, isError: $isError, ResponseMessage: $ResponseMessage, Response: $Response)';
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
      String ResponseMessage,
      dynamic Response});
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
    Object? ResponseMessage = null,
    Object? Response = freezed,
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
      ResponseMessage: null == ResponseMessage
          ? _self.ResponseMessage
          : ResponseMessage // ignore: cast_nullable_to_non_nullable
              as String,
      Response: freezed == Response
          ? _self.Response
          : Response // ignore: cast_nullable_to_non_nullable
              as dynamic,
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
      required this.ResponseMessage,
      required this.Response})
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
  final String ResponseMessage;
  @override
  final dynamic Response;

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
            (identical(other.ResponseMessage, ResponseMessage) ||
                other.ResponseMessage == ResponseMessage) &&
            const DeepCollectionEquality().equals(other.Response, Response));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_ItemsList),
      SearchDialogueName,
      isLoading,
      isError,
      ResponseMessage,
      const DeepCollectionEquality().hash(Response));

  @override
  String toString() {
    return 'InsuranceState(ItemsList: $ItemsList, SearchDialogueName: $SearchDialogueName, isLoading: $isLoading, isError: $isError, ResponseMessage: $ResponseMessage, Response: $Response)';
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
      String ResponseMessage,
      dynamic Response});
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
    Object? ResponseMessage = null,
    Object? Response = freezed,
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
      ResponseMessage: null == ResponseMessage
          ? _self.ResponseMessage
          : ResponseMessage // ignore: cast_nullable_to_non_nullable
              as String,
      Response: freezed == Response
          ? _self.Response
          : Response // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

// dart format on
