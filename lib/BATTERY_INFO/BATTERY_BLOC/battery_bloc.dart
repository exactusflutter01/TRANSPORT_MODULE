import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'battery_event.dart';
part 'battery_state.dart';
part 'battery_bloc.freezed.dart';

class BatteryBloc extends Bloc<BatteryEvent, BatteryState> {
  BatteryBloc() : super(const BatteryState.initial()) {
    on<BatteryEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
