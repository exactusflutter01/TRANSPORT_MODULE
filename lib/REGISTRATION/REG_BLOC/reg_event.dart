part of 'reg_bloc.dart';

@freezed
class RegEvent with _$RegEvent {
  const factory RegEvent.fetchDivCodes() = FetchDivCodes;
  const factory RegEvent.searchDivCode(String query) = SearchDivCode;
}
