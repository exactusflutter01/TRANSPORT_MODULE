part of 'accident_bloc.dart';

@freezed
abstract class AccidentEvent with _$AccidentEvent {
  const factory AccidentEvent.insertAccidentData(Map<String,dynamic> accidentData) = InsertAccidentData;
  const factory AccidentEvent.fetchDocNo(String div_code,String doc_type,) = FetchDocNo;
  const factory AccidentEvent.fetchFineCode() = FetchFineCode;
}