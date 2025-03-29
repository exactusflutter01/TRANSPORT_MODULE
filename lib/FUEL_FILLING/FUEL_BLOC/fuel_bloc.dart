import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:trans_module/FUEL_FILLING/fuel_filling_model.dart';
import 'package:trans_module/FUEL_FILLING/fuel_filling_repository.dart';

part 'fuel_event.dart';
part 'fuel_state.dart';
part 'fuel_bloc.freezed.dart';

class FuelBloc extends Bloc<FuelEvent, FuelState> {
  final FuelFillingRepository repository;
  
  FuelBloc(this.repository) : super(FuelState.initial()) {
    on<FetchPaymentMood>(_fetchPaymentMood);
    on<FetchStations>(_fetchStations);
    on<FetchFuelType>(_fetchFuelType);
  }

  _fetchPaymentMood(FetchPaymentMood event, Emitter<FuelState> emit) async{
    print("in bloc code");
    emit(state.copyWith(isLoading: true,));
    try {
   final data =await repository.fetchPaymentMoods();
       print("in bloc code data $data");
      emit(state.copyWith(
          paymentMood: data, isLoading: false,));
    } catch (e) {
      emit(state.copyWith(
          isLoading: false,  stationList: [],));
    }
  }
  _fetchStations(FetchStations event, Emitter<FuelState> emit) async{
    print("in bloc code");
    emit(state.copyWith(isLoading: true,));
    try {
   final data =await repository.fetchStations();
       print("in bloc code data $data");
      emit(state.copyWith(
          stationList: data,  isLoading: false,));
    } catch (e) {
      emit(state.copyWith(
         isLoading: false,    stationList: [],));
    }
  }
  _fetchFuelType(FetchFuelType event, Emitter<FuelState> emit) async{
    print("in bloc code");
    emit(state.copyWith(isLoading: true));
    try {
   final data =await repository.fetchFuelType();
       print("in bloc code data $data");
      emit(state.copyWith(
          isLoading: false,fuelTypeList:data ));
    } catch (e) {
      emit(state.copyWith(
         isLoading: false,fuelTypeList:[]));
    }
  }
}
