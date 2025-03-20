import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'fuel_event.dart';
part 'fuel_state.dart';
part 'fuel_bloc.freezed.dart';

class FuelBloc extends Bloc<FuelEvent, FuelState> {
  FuelBloc() : super(_Initial()) {
    on<FuelEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
