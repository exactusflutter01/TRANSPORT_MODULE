part of 'insu_bloc.dart';

@freezed
abstract class InsuranceState with _$InsuranceState {
  factory InsuranceState(
      {required List ItemsList,
      required bool isLoading,
      required bool isError}) = insuranceState;

  factory InsuranceState.initial() {
    return InsuranceState(ItemsList: [], isLoading: true, isError: false);
  }
}
