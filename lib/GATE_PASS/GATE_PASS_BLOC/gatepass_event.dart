part of 'gatepass_bloc.dart';

@freezed
class GatepassEvent with _$GatepassEvent {
  const factory GatepassEvent.searchDialogueDataFetch(
      {String? title, String? division, String? assetId}
      ) = SearchDialogueDataFetch;
 const factory GatepassEvent.save({
    required Map<String, dynamic> tyrePuncherDetails,
  }) = Save;
}