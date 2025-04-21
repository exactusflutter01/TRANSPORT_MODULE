import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:trans_module/ACCIDENT/accident_model.dart';
import 'package:trans_module/ACCIDENT/accident_repository.dart';

part 'accident_event.dart';
part 'accident_state.dart';
part 'accident_bloc.freezed.dart';

class AccidentBloc extends Bloc<AccidentEvent, AccidentState> {
  final AccidentRepository repository;

  AccidentBloc(this.repository) : super(AccidentState.initial()) {
    on<InsertAccidentData>(_insertAccidentData);
    on<FetchDocNo>(_fetchDocNo);
    on<FetchFineCode>(_fetchFineCode);
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
            alertTitle: 'Failed'));
      }
    } catch (e) {
      emit(state.copyWith(
          isLoading: false,
          alertMsg: "Insertion Failed",
          searchDialogueData: [],
          alertTitle: 'Failed'));
    }
  }

  _fetchDocNo(FetchDocNo event, Emitter<AccidentState> emit) async {
    print("in Accident bloc code");
    emit(state.copyWith(
      isLoading: true,
    ));
    try {
      final List<AccidentDocNoModel> data =
          await repository.fetchDocNo(event.div_code, event.doc_type);
      print("in bloc code data $data");
      print("in bloc code data is empty ${data.isEmpty}");

      if (data.isNotEmpty) {
        emit(state.copyWith(
            isLoading: false,
            alertMsg: "",
            searchDialogueData: data,
            searchDialogueTitle: 'Document Numbers',
            alertTitle: ''));
      } else {
        emit(state.copyWith(
            isLoading: false,
            alertMsg: "No Data Found",
            searchDialogueData: [],
            alertTitle: 'Warning'));
      }
    } catch (e) {
      emit(state.copyWith(
          isLoading: false,
          alertMsg: "Error While Fetching Document Number",
          searchDialogueData: [],
          alertTitle: 'Failed'));
    }
  }
  _fetchFineCode(FetchFineCode event, Emitter<AccidentState> emit) async {
    print("in Accident bloc code");
    emit(state.copyWith(
      isLoading: true,
    ));
    try {
      final List<AccidentFineCodeModel> data =
          await repository.fetchFineCode();
      print("in bloc code data $data");
      print("in bloc code data is empty ${data.isEmpty}");

      if (data.isNotEmpty) {
        emit(state.copyWith(
            isLoading: false,
            alertMsg: "",
            searchDialogueData: data,
            searchDialogueTitle: 'Fine Codes',
            alertTitle: ''));
      } else {
        emit(state.copyWith(
            isLoading: false,
            alertMsg: "No Data Found",
            searchDialogueData: [],
            alertTitle: 'Warning'));
      }
    } catch (e) {
      emit(state.copyWith(
          isLoading: false,
          alertMsg: "Error While Fetching Document Number",
          searchDialogueData: [],
          alertTitle: 'Failed'));
    }
  }
}
