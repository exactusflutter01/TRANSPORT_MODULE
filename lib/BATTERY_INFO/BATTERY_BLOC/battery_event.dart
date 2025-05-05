part of 'battery_bloc.dart';

@freezed
class BatteryEvent with _$BatteryEvent {
  
  const factory BatteryEvent.docnofetch(String divCode) = DocNoFetch;
  const factory BatteryEvent.suppCodefetch() = SuppCodefetch;
  const factory BatteryEvent.assetfetch() = Assetfetch;
  const factory BatteryEvent.save(Map<String,dynamic> batteryDetails) = Save;
}
