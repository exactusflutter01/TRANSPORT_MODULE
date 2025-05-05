part of 'tyre_puncher_bloc.dart';

@freezed
abstract class TyrePuncherEvent with _$TyrePuncherEvent {
  const factory TyrePuncherEvent.searchDialogueDataFetch(
      {String? title, String? division, String? assetId}
      ) = SearchDialogueDataFetch;
 const factory TyrePuncherEvent.save({
    required Map<String, dynamic> tyrePuncherDetails,
  }) = Save;
 const factory TyrePuncherEvent.isVerified({
    required bool isVerify
  }) = IsVerified;


}
