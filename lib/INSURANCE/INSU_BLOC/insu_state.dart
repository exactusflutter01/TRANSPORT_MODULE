part of 'insu_bloc.dart';

@freezed
abstract class InsuranceState with _$InsuranceState {
  factory InsuranceState(
      {required List ItemsList,
      required List PolicyList,
      required List DebitCode,
      required bool isLoading,
      required bool isError,
      required String ResponseMessage,
      required dynamic Response}) = insuranceState;

  factory InsuranceState.initial() {
    return InsuranceState(
        ItemsList: [],
        isLoading: true,
        isError: false,
        PolicyList: [],
        DebitCode: [],
        Response: '',
        ResponseMessage: '');
  }
}
