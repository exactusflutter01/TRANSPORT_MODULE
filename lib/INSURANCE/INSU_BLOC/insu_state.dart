part of 'insu_bloc.dart';

@freezed
abstract class InsuranceState with _$InsuranceState {
  factory InsuranceState(
      {required List ItemsList,
      required String SearchDialogueName,
      required bool isLoading,
      required bool isError,
      required String ResponseMessage,
      required dynamic Response}) = insuranceState;

  factory InsuranceState.initial() {
    return InsuranceState(
        ItemsList: [],
        isLoading: true,
        isError: false,
        Response: '',
        ResponseMessage: '',
        SearchDialogueName: '');
  }
}
