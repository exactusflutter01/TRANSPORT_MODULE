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
  }

  _fetchPaymentMood(FetchPaymentMood event, Emitter<FuelState> emit) async{
    print("in bloc code");
    emit(state.copyWith(isLoading: true));
    try {
   final data =await repository.fetchPaymentMoods();
       print("in bloc code data $data");
      emit(state.copyWith(
          paymentMood: data, msg: 'Successful', isLoading: false));
    } catch (e) {
      emit(state.copyWith(
          msg: 'Error While Fetching Payment Mood $e', isLoading: false));
    }
  }
}
