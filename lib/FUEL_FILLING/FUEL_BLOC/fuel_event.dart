part of 'fuel_bloc.dart';

@freezed
class FuelEvent with _$FuelEvent {
  const factory FuelEvent.fetchPaymentMood() = FetchPaymentMood;
  const factory FuelEvent.fetchStations() = FetchStations;
  const factory FuelEvent.fetchFuelType() = FetchFuelType;
  const factory FuelEvent.fetchFuelCard() = FetchFuelCard;
  const factory FuelEvent.fetchDocNo(String divCode) = FetchDocNo;
  const factory FuelEvent.incrementDocNo() = IncrementDocNo;
  const factory FuelEvent.isVerified(bool isVerify) = IsVerified;
  const factory FuelEvent.insertFuelFilling(Map<String, dynamic> fuelData) = InsertFuelFilling;
}