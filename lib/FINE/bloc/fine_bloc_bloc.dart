import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:trans_module/FINE/repository.dart';

part 'fine_bloc_event.dart';
part 'fine_bloc_state.dart';
part 'fine_bloc_bloc.freezed.dart';

class FineBlocBloc extends Bloc<FineBlocEvent, FineBlocState> {
  final FineRepository repository;

  FineBlocBloc(this.repository) : super(FineBlocState.initial()){
    on<FineFetchDocNO>(_FetchDocNO);
  }

  _FetchDocNO(FineFetchDocNO event, Emitter<FineBlocState> emit) async {
    print("Fetching document number for division: ${event.divcode}");
    emit(state.copyWith(isLoading: true));
    try {
      final data = await repository.fetchDocNo(event.divcode);
      print("in bloc code data $data");
      emit(state.copyWith(
          searchDialogData: data,
          msg: 'Successful',
          isLoading: false,
          searchDialogTitle: 'Doc No'));
    } catch (e) {
      emit(state.copyWith(
          msg: 'Error While Fetching _FetchDocNO $e', isLoading: false));
    }
  }
}
