// part of 'reg_bloc.dart';

// @freezed
// class RegState with _$RegState {
//   const factory RegState.initial() = Initial;
//   const factory RegState.loading() = Loading;
//   const factory RegState.loaded(List<dynamic> divCodes) = Loaded;
//   const factory RegState.error(String message) = Error;
// // }
// part of 'reg_bloc.dart';

// @freezed
// class RegState with _$RegState {
//   const factory RegState.initial() = Initial;
//   const factory RegState.loading() = Loading;
//   const factory RegState.loaded(List<DivisionModel> divCodes) = Loaded;
//   const factory RegState.error(String message) = Error;
// }
part of 'reg_bloc.dart';

@freezed
abstract class RegState with _$RegState {
  factory RegState(
      {required List divisionCode,
      required List DocNo,
      required bool isLoading,
      required String msg}) = regState;

  factory RegState.initial() {
    return RegState(divisionCode: [], isLoading: false, msg: '', DocNo: []);
  }
}
