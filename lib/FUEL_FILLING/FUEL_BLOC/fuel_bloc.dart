import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:trans_module/FUEL_FILLING/fuel_filling_repository.dart';

part 'fuel_event.dart';
part 'fuel_state.dart';
part 'fuel_bloc.freezed.dart';

class FuelBloc extends Bloc<FuelEvent, FuelState> {
  final FuelFillingRepository repository;
  FuelBloc(this.repository) : super(_Initial()) {
    on<FuelEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
