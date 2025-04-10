// part of 'fine_bloc_bloc.dart';

// @freezed
// abstract class FineBlocState with _$FineBlocState {
  

//   factory FineBlocState(
//       {required List<dynamic> searchDialogData,
//       required String searchDialogTitle,
//       required bool isLoading,
//       required bool isSaving,
//       required bool isVerified,
//       required String msg}) = FineBlocState;

//   factory FineBlocState.initial() {
//     return FineBlocState(
//         searchDialogData: [],
//         isLoading: false,
//         msg: '',
//         isSaving: false,
//         searchDialogTitle: '',
//         isVerified: false);
//   }
// }
part of 'fine_bloc_bloc.dart';

@freezed
abstract class FineBlocState with _$FineBlocState {
   factory FineBlocState({
    required List<dynamic> searchDialogData,
    required String searchDialogTitle,
    required bool isLoading,
    required bool isSaving,
    required bool isVerified,
    required String msg,
  }) = _FineBlocState;

  factory FineBlocState.initial() {
    return FineBlocState(
      searchDialogData: [],
      isLoading: false,
      msg: '',
      isSaving: false,
      searchDialogTitle: '',
      isVerified: false,
    );
  }
}
