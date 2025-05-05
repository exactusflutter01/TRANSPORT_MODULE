part of 'checklist_bloc.dart';

@freezed
abstract class ChecklistState with _$ChecklistState {
factory ChecklistState({
    required List searchDialogueData,
    required String searchDialogueTitle,
    required String alertTitle,
    required String alertMsg,
    required String maxDocNo,
    required bool isLoading,
    required bool isVerified,
  }) = _ChecklistState;

  factory ChecklistState.initial() {
    return ChecklistState(
        searchDialogueData: [],
        searchDialogueTitle: '',
        isLoading: false,
        alertTitle: '',
        alertMsg: '', maxDocNo: '', isVerified: false);
  }
}
