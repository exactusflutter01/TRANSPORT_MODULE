part of 'tools_bloc.dart';

@freezed
class ToolsEvent with _$ToolsEvent {
  const factory ToolsEvent.fetchDocNo() = FetchDocNo;
  const factory ToolsEvent.fetchDeptCode() = FetchDeptCode;
  const factory ToolsEvent.fetchTrailerNo() = FetchTrailerNo;
  const factory ToolsEvent.fetchPartCode() = FetchPartCode;
}