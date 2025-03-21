import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:trans_module/REGISTRATION/reg_repository.dart';

part 'reg_event.dart';
part 'reg_state.dart';
part 'reg_bloc.freezed.dart';

class RegBloc extends Bloc<RegEvent, RegState> {
  final RegRepository repository;

  RegBloc(this.repository) : super( RegState.initial()) {
    on<FetchDivCodes>(_fetchdivcodes);
  
  }

  _fetchdivcodes(FetchDivCodes event, Emitter<RegState> emit )async{
       print("in bloc code");
  emit(state.copyWith(isLoading: true));
   try {
   final data =await repository.fetchDivCode();
       print("in bloc code data $data");
      emit(state.copyWith(
          divisionCode: data, msg: 'Successful', isLoading: false));
    } catch (e) {
      emit(state.copyWith(
          msg: 'Error While Fetching fetchDivCode $e', isLoading: false));
    }
  }
}
