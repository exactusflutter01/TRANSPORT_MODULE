import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'reg_event.dart';
part 'reg_state.dart';
part 'reg_bloc.freezed.dart';

class RegBloc extends Bloc<RegEvent, RegState> {
  RegBloc() : super(_Initial()) {
    on<RegEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
