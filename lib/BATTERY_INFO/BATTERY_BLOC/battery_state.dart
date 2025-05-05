part of 'battery_bloc.dart';

@freezed
abstract class BatteryState with _$BatteryState {
  factory BatteryState({
    required List<dynamic> searchDialogData,
    required String searchDialogTitle,
    required bool isLoading,
    required String alertTitle,
    required bool isVerified,
    required String alertMsg,
    required String maxDocNo,
  }) = _BatteryState;
  factory BatteryState.initial() {
    return BatteryState(
      searchDialogData: [],
      searchDialogTitle: '',
      isLoading: false,
      alertTitle: '',
      isVerified: false,
      alertMsg: '',
      maxDocNo: '',
    );
  }
}
