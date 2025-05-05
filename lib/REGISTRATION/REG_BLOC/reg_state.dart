part of 'reg_bloc.dart';

@freezed
abstract class RegState with _$RegState {
  factory RegState({
    required List<dynamic> searchDialogData,
    required String searchDialogTitle,
    required bool isLoading,
    required String alertTitle,
    required bool isVerified,
    required String alertMsg,
    required String maxDocNo,
  }) = regState;

  factory RegState.initial() {
    return RegState(
      searchDialogData: [],
      searchDialogTitle: '',
      isLoading: false,
      alertTitle: '',
      isVerified: false,
      alertMsg: '',
      maxDocNo: '',
    );
  }
}

// part of 'reg_bloc.dart';

// @freezed
// abstract class RegState with _$RegState {
//   factory RegState({
//     required List<DivisionModel> divisionCode,
//     required List<DocNoModel> DocNo,
//     required bool isLoading,
//     required bool isSaving,
//     required String msg,
//   }) = _RegState;

//   factory RegState.initial() {
//     return RegState(
//       divisionCode: [], 
//       DocNo: [],
//       isLoading: false, 
//       isSaving: false, 
//       msg: '',
//     );
//   }
// }
