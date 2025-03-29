part of 'insu_bloc.dart';

@freezed
class InsuEvent with _$InsuEvent {
  const factory InsuEvent.started() = _Started;
  const factory InsuEvent.fetchdoc() = FetchDoc;
  const factory InsuEvent.fetchPolicy() = FetchPolicy;
  const factory InsuEvent.fetchDebitCode() = FetchDebitCode;
  const factory InsuEvent.insuranceInsert(
      vehcode,
      docno,
      docdate,
      invno,
      invdate,
      supcode,
      costbookno,
      divcode,
      deptcode,
      inscompany,
      strtdte,
      expdate,
      policytype,
      policyno,
      amount,
      remarks,
      currcode,
      exrate,
      active,
      userid,
      strtread,
      endreading,
      empid,
      accodedr,
      docref,
      exptypecode,
      expsubtype_code,
      exp_code,
      verified,
      verifieddate,
      verifiedby) = InsuranceInsert;
}
