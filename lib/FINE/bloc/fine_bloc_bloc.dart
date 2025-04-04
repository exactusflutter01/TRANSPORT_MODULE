import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'fine_bloc_event.dart';
part 'fine_bloc_state.dart';
part 'fine_bloc_bloc.freezed.dart';

class FineBlocBloc extends Bloc<FineBlocEvent, FineBlocState> {
  FineBlocBloc() : super(_Initial());

  @override
  Stream<FineBlocState> mapEventToState(
    FineBlocEvent event,
  ) async* {
    // TODO: implement mapEventToState
  }
}
