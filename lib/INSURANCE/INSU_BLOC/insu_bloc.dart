import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'insu_event.dart';
part 'insu_state.dart';
part 'insu_bloc.freezed.dart';

class InsuBloc extends Bloc<InsuEvent, InsuState> {
  InsuBloc() : super(_Initial()) {
    on<InsuEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
