// part of 'reg_bloc.dart';

// @freezed
// class RegEvent with _$RegEvent {
//   const factory RegEvent.fetchDivCodes() = FetchDivCodes;
//   const factory RegEvent.searchDivCode(String query) = SearchDivCode;
// }

part of 'reg_bloc.dart';

@freezed
class RegEvent with _$RegEvent {
  const factory RegEvent.fetchdivcodes() = FetchDivCodes;
  const factory RegEvent.fetchDocNO(String divcode) = FetchDocNO;
  const factory RegEvent.fetchVehicleCode(String divcode) = FetchVehicleCode;
  const factory RegEvent.saveData() = SaveData;
 

 
}
