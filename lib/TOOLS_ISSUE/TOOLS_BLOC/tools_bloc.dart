import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'tools_event.dart';
part 'tools_state.dart';
part 'tools_bloc.freezed.dart';

class ToolsBloc extends Bloc<ToolsEvent, ToolsState> {
  ToolsBloc() : super(ToolsState.initial()) {
    on<ToolsEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
