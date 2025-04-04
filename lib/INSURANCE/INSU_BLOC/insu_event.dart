part of 'insu_bloc.dart';

@freezed
class InsuEvent with _$InsuEvent {
  const factory InsuEvent.started() = _Started;
  const factory InsuEvent.fetchdoc() = FetchDoc;
  const factory InsuEvent.fetchPolicy() = FetchPolicy;
  const factory InsuEvent.fetchDebitCode() = FetchDebitCode;
  const factory InsuEvent.insuranceInsert(Map data) =InsuranceInsert;
  const factory InsuEvent.verifiedClicked(bool clicked) = Verifiedclicked;
}
