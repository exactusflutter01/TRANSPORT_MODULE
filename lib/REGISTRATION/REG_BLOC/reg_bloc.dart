
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:trans_module/REGISTRATION/reg_model.dart';
import 'package:trans_module/REGISTRATION/reg_repository.dart';

part 'reg_event.dart';
part 'reg_state.dart';
part 'reg_bloc.freezed.dart';

class RegBloc extends Bloc<RegEvent, RegState> {
  final RegRepository repository;

  RegBloc(this.repository) : super(const RegState.initial()) {
    on<FetchDivCodes>((event, emit) async {
      emit(const RegState.loading());

      try {
        final divList = await repository.fetchDivCode();
        emit(RegState.loaded(divList));
      } catch (e) {
        emit(RegState.error(e.toString()));
      }
    });

    on<SearchDivCode>((event, emit) {
      final currentState = state;
      if (currentState is Loaded) {
        final allDivs = currentState.divCodes;
        final filteredDivs = allDivs
            .where((div) =>
                div.divisionCode.toLowerCase().contains(event.query.toLowerCase()) ||
                div.divisionName.toLowerCase().contains(event.query.toLowerCase()))
            .toList();

        emit(RegState.loaded(filteredDivs));
      }
    });
  }
}
