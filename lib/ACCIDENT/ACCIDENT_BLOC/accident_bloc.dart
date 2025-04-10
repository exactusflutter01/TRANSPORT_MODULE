import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:trans_module/ACCIDENT/accident_repository.dart';

part 'accident_event.dart';
part 'accident_state.dart';
part 'accident_bloc.freezed.dart';

class AccidentBloc extends Bloc<AccidentEvent, AccidentState> {
    final AccidentRepository repository;

  AccidentBloc(this.repository) : super(AccidentState.initial()){
       on<InsertAccidentData>(_insertAccidentData);

  }
 _insertAccidentData(
      InsertAccidentData event, Emitter<AccidentState> emit) async {
    print("in bloc code");
    emit(state.copyWith(
      isLoading: true,
    ));
    try {
      final response = await repository.insertAccidentData(event.accidentData);
      print("in bloc code data $response");
      if (response == 1) {
        emit(state.copyWith(
            isLoading: false,
            alertMsg: "Insertion Successful",
            searchDialogueData: [],
            alertTitle: 'Success'));
      } else {
        emit(state.copyWith(
            isLoading: false,
            alertMsg: "Insertion Failed",
            searchDialogueData: [],
            searchDialogueTitle: 'Failed'));
      }
    } catch (e) {
      emit(state.copyWith(
          isLoading: false,
          alertMsg: "Insertion Failed",
          searchDialogueData: [],
          searchDialogueTitle: 'Failed'));
    }
  }
}


 

