part of 'accident_bloc.dart';

@freezed
abstract class AccidentEvent with _$AccidentEvent {
  const factory AccidentEvent.insertAccidentData(Map<String,dynamic> accidentData) = InsertAccidentData;
}