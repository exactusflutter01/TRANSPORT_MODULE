import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:trans_module/GATE_PASS/gatepass_repository.dart';

part 'gatepass_event.dart';
part 'gatepass_state.dart';
part 'gatepass_bloc.freezed.dart';

class GatepassBloc extends Bloc<GatepassEvent, GatepassState> {
  final GatepassRepository repository;
  GatepassBloc(this.repository) : super(GatepassState.initial()) {
    on<SearchDialogueDataFetch>(_searchDialogueDataFetch);
    on<Save>(_save);
  }

  _searchDialogueDataFetch(
      SearchDialogueDataFetch event, Emitter<GatepassState> emit) async {
    emit(state.copyWith(isLoading: true));
    try {
      var response;
      if (event.title == 'Document Numbers') {
        response = await repository.fetchDocNo(event.division);
      }
      if (event.title == 'Tyre Position') {
        response = await repository.fetchCheckCode(event.assetId);
      }

      if (response.hasError) {
        emit(state.copyWith(
            searchDialogueData: [],
            searchDialogueTitle: '',
            alertMsg: response.error!,
            alertTitle: event.title!,
            isLoading: false,
            maxDocNo: ''));
      } else {
        emit(state.copyWith(
            searchDialogueData: response.data,
            searchDialogueTitle: event.title!,
            alertMsg: '',
            alertTitle: '',
            isLoading: false,
            maxDocNo: ''));
      }
    } catch (e) {
      emit(state.copyWith(
          searchDialogueData: [],
          searchDialogueTitle: '',
          alertMsg: 'Error occurs while fetching ${event.title!.toLowerCase()}',
          alertTitle: "Failed",
          isLoading: false,
          maxDocNo: ''));
    }
  }

  _save(Save event, Emitter<GatepassState> emit) async {
    var docNo;
    emit(state.copyWith(isLoading: true));
    try {
      final response = await repository.fetchMaxDocNo();

      if (response.hasError == false) {
        if (response.data == 0) {
          print("data is 0");
          docNo = "369000";
        } else {
          print("data is not 0 ${response.data}");
          docNo = int.parse(response.data.toString()) + 1;
          print("in bloc code docNo $docNo");
        }
        Map<String, dynamic> modifiedDetails =
            Map.from(event.tyrePuncherDetails);
        modifiedDetails['DOC_NO'] = docNo;
        print("In Bloc modifiedDetails : $modifiedDetails ");

        final insertResponse =
            await repository.insertPuncherDetails(modifiedDetails);
        print("IN BLOC INSERT ${insertResponse.error}");
        print("IN BLOC INSERT ${insertResponse.hasError}");
        print("IN BLOC INSERT ${insertResponse.data}");
        if (insertResponse.hasError == false) {
          emit(state.copyWith(
            searchDialogueData: [],
            searchDialogueTitle: '',
            alertMsg: "Successfully Inserted",
            alertTitle: 'Success',
            isLoading: false,
            maxDocNo: docNo.toString(),
          ));
        } else {
          emit(state.copyWith(
              searchDialogueData: [],
              searchDialogueTitle: '',
              alertMsg: insertResponse.error!,
              alertTitle: "Failed",
              isLoading: false,
              maxDocNo: ''));
        }
      } else {
        emit(state.copyWith(
            searchDialogueData: [],
            searchDialogueTitle: '',
            alertMsg: 'Error occurs while fetching max document number',
            alertTitle: "Failed",
            isLoading: false,
            maxDocNo: ''));
      }
    } catch (e) {
      print("error: $e");
      emit(state.copyWith(
          searchDialogueData: [],
          searchDialogueTitle: '',
          alertMsg: "Something went wrong",
          alertTitle: "Failed",
          isLoading: false,
          maxDocNo: ''));
    }
  }
}
