part of 'fine_bloc_bloc.dart';

@freezed
class FineBlocEvent with _$FineBlocEvent {
  const factory FineBlocEvent.started() = _Started;
    const factory FineBlocEvent.fetchDocNo(String divcode) = FineFetchDocNO;

}