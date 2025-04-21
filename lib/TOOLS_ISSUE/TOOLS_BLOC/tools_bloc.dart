import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:trans_module/TOOLS_ISSUE/tools_issue_model.dart';
import 'package:trans_module/TOOLS_ISSUE/tools_issue_repository.dart';

part 'tools_event.dart';
part 'tools_state.dart';
part 'tools_bloc.freezed.dart';

class ToolsBloc extends Bloc<ToolsEvent, ToolsState> {
  final ToolsIssueRepository  repository;
  ToolsBloc(this.repository) : super(ToolsState.initial()) {
 
      on<FetchDeptCode>(_fetchDept);
    

 
  }
     _fetchDept(FetchDeptCode event, Emitter<ToolsState> emit) async{
         print("in Tools issue bloc code");
    emit(state.copyWith(
      isLoading: true,
    ));
    try {
      final List<ToolsIssueDeptModel> data =
          await repository.fetchDeptCode();
      print("in bloc code data $data");
      print("in bloc code data is empty ${data.isEmpty}");

      if (data.isNotEmpty) {
        emit(state.copyWith(
            isLoading: false,
            alertMsg: "",
            searchDialogueData: data,
            searchDialogueTitle: 'Departmrnt Numbers',
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
          alertMsg: "Error While Fetching Department Number",
          searchDialogueData: [],
          alertTitle: 'Failed'));
    }
    }
}
