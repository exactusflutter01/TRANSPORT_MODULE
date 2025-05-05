part of 'checklist_bloc.dart';

@freezed
class ChecklistEvent with _$ChecklistEvent {
  const factory ChecklistEvent.searchDialogueDataFetch(
      {String? title, String? division, String? assetId}
      ) = SearchDialogueDataFetch;
 const factory ChecklistEvent.save({
    required Map<String, dynamic> tyrePuncherDetails,
  }) = Save;
}