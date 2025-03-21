part of 'insu_bloc.dart';

@freezed
class InsuEvent with _$InsuEvent {
  const factory InsuEvent.started() = _Started;
  const factory InsuEvent.fetchdoc() = FetchDoc;
}
