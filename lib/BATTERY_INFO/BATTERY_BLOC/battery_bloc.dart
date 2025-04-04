import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../battery_repository.dart';

part 'battery_event.dart';
part 'battery_state.dart';
part 'battery_bloc.freezed.dart';

class BatteryBloc extends Bloc<BatteryEvent, BatteryState> {
  final BatteryRepository repository;

  BatteryBloc(this.repository) : super( BatteryState.initial()) {
    on<DocNoFetch>((event, emit) async{

      final data=await repository.fetchDocNo();

      // TODO: implement event handler
    });
  }
}
