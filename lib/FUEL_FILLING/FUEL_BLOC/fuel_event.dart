part of 'fuel_bloc.dart';

@freezed
class FuelEvent with _$FuelEvent {
  const factory FuelEvent.fetchPaymentMood() = FetchPaymentMood;
  const factory FuelEvent.fetchStations() = FetchStations;
  const factory FuelEvent.fetchFuelType() = FetchFuelType;
}