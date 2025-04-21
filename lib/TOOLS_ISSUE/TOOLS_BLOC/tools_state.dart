part of 'tools_bloc.dart';

@freezed
abstract class ToolsState with _$ToolsState {

  const factory ToolsState({
    required bool isLoading,
    required List searchDialogueData,
    required String searchDialogueTitle,
    required String alertMsg,
    required String alertTitle,
  }) = _ToolsState;
  
  factory ToolsState.initial() {
    return const ToolsState(
      isLoading: false,
      searchDialogueData: [],
      searchDialogueTitle: '',
      alertMsg: '',
      alertTitle: '',
    );
  }
}
