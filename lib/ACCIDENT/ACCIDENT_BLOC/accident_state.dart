part of 'accident_bloc.dart';

@freezed
abstract class AccidentState with _$AccidentState {
  const factory AccidentState({
    required bool isLoading,
    required List searchDialogueData,
    required String searchDialogueTitle,
    required String alertMsg,
    required String alertTitle,
  }) = _AccidentState;

  factory AccidentState.initial() {
    return const AccidentState(
      isLoading: false,
      searchDialogueData: [],
      searchDialogueTitle: '',
      alertMsg: '',
      alertTitle: '',
    );
  }
}
