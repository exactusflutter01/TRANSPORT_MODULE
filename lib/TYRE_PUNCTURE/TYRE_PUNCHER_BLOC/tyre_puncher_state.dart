part of 'tyre_puncher_bloc.dart';

@freezed
abstract class TyrePuncherState with _$TyrePuncherState {
  factory TyrePuncherState({
    required List searchDialogueData,
    required String searchDialogueTitle,
    required String alertTitle,
    required String alertMsg,
    required String maxDocNo,
    required bool isLoading,
    required bool isVerified,
  }) = _TyrePuncherState;

  factory TyrePuncherState.initial() {
    return TyrePuncherState(
        searchDialogueData: [],
        searchDialogueTitle: '',
        isLoading: false,
        alertTitle: '',
        alertMsg: '', maxDocNo: '', isVerified: false);
  }
}
