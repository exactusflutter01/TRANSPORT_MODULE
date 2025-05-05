part of 'service_bloc.dart';

@freezed
abstract class ServiceState with _$ServiceState {
  factory ServiceState({
    required List searchDialogueData,
    required String searchDialogueTitle,
    required String alertTitle,
    required String alertMsg,
    required String maxDocNo,
    required bool isLoading,
    required bool isVerified,
  }) = _ServiceState;

  factory ServiceState.initial() {
    return ServiceState(
        searchDialogueData: [],
        searchDialogueTitle: '',
        isLoading: false,
        alertTitle: '',
        alertMsg: '', maxDocNo: '', isVerified: false);
  }
}
