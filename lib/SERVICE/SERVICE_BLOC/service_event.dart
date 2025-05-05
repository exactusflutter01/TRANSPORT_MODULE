part of 'service_bloc.dart';

@freezed
class ServiceEvent with _$ServiceEvent {
  const factory ServiceEvent.searchDialogueDataFetch(
      {String? title, String? division, String? assetId}
      ) = SearchDialogueDataFetch;
 const factory ServiceEvent.save({
    required Map<String, dynamic> tyrePuncherDetails,
  }) = Save;
}