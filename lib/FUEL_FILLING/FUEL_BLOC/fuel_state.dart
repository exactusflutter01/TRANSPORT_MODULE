part of 'fuel_bloc.dart';

@freezed
abstract class FuelState with _$FuelState {
   factory FuelState({
required List paymentMood,
required bool isLoading,
required String msg
  })=fuelState;
   factory FuelState.initial(){
    return FuelState(paymentMood: [], isLoading: false, msg: '');
  }
}
