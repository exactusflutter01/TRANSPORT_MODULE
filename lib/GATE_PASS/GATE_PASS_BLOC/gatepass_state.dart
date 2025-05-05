part of 'gatepass_bloc.dart';

@freezed
abstract class GatepassState with _$GatepassState {
factory GatepassState({
    required List searchDialogueData,
    required String searchDialogueTitle,
    required String alertTitle,
    required String alertMsg,
    required String maxDocNo,
    required bool isLoading,
    required bool isVerified,
  }) = _GatepassState;

  factory GatepassState.initial() {
    return GatepassState(
        searchDialogueData: [],
        searchDialogueTitle: '',
        isLoading: false,
        alertTitle: '',
        alertMsg: '', maxDocNo: '', isVerified: false);
  }
}
