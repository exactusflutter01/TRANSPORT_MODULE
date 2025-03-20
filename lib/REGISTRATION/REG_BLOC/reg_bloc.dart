import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:trans_module/REGISTRATION/reg_repository.dart';

part 'reg_event.dart';
part 'reg_state.dart';
part 'reg_bloc.freezed.dart';

class RegBloc extends Bloc<RegEvent, RegState> {
  final regRepository repository;

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
      if (state is Loaded) {
        final allDivs = (state as Loaded).divCodes;
        final filteredDivs = allDivs
            .where((div) => div['DIV_NAME']
                .toString()
                .toLowerCase()
                .contains(event.query.toLowerCase()))
            .toList();

        emit(RegState.loaded(filteredDivs));
      }
    });
    // on<RegEvent>((event, emit) {
    //   // TODO: implement event handler
    // });
  }
}
