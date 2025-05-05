import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../battery_repository.dart';

part 'battery_event.dart';
part 'battery_state.dart';
part 'battery_bloc.freezed.dart';

class BatteryBloc extends Bloc<BatteryEvent, BatteryState> {
  final BatteryRepository repository;

  BatteryBloc(this.repository) : super(BatteryState.initial()) {
    on<DocNoFetch>(_docNoFetch);
    on<SuppCodefetch>(_suppCodefetch);
    on<Assetfetch>(_assetfetch);
    on<Save>(_save);
  }

  _docNoFetch(DocNoFetch event, Emitter<BatteryState> emit) async {
    emit(state.copyWith(isLoading: true));
    try {
      final response = await repository.fetchDocNo(event.divCode);
      print("response $response");
      if (response is List && response.isNotEmpty) {
        print("response.isNotEmpty");
        emit(state.copyWith(
            isLoading: false,
            alertMsg: "",
            searchDialogData: response,
            alertTitle: '',
            searchDialogTitle: 'Document Numbers',
            maxDocNo: ''));
      }

      if (response is String) {
        print("response is error");
        emit(state.copyWith(
            isLoading: false,
            alertMsg: response,
            searchDialogData: [],
            alertTitle: 'Failed',
            searchDialogTitle: '',
            maxDocNo: ''));
      }

      if (response is List && response.isEmpty) {
        print("else condition");
        emit(state.copyWith(
            isLoading: false,
            alertMsg: "No Data Found",
            searchDialogData: [],
            alertTitle: 'Warning',
            searchDialogTitle: '',
            maxDocNo: ''));
      }
    } catch (e) {
      print("Catch condition");
      emit(state.copyWith(
          isLoading: false,
          alertMsg: "$e",
          searchDialogData: [],
          alertTitle: 'Failed',
          searchDialogTitle: '',
          maxDocNo: ''));
    }
  }

  _suppCodefetch(SuppCodefetch event, Emitter<BatteryState> emit) async {}
  _assetfetch(Assetfetch event, Emitter<BatteryState> emit) async {}

  _save(Save event, Emitter<BatteryState> emit) async {
    print("SAVE BLOC PAGE");
    var docNo;
    emit(state.copyWith(isLoading: true));
    try {
      final data = await repository.fetchMaxDocNo();
      print("in bloc code data $data");
      if (data == 0) {
        print("data is 0");
        docNo = "369000";
      } else {
        print("data is not 0");
        docNo = int.parse(data.toString()) + 1;
        print("in bloc code docNo $docNo");
      }
      Map<String, dynamic> modifiedData = Map.from(event.batteryDetails);

      modifiedData["DOC_NO"] = docNo.toString();
      print("modifiedData $modifiedData");
      final response = await repository.postbatteryDetails(modifiedData);

      print("Save response: $response");

      if (response == 1) {
        emit(state.copyWith(
          searchDialogTitle: '',
          isLoading: false,
          alertMsg: "Insertion Successful",
          searchDialogData: [],
          alertTitle: 'Success',
          maxDocNo: docNo.toString(),
        ));
      } else {
        emit(state.copyWith(
            searchDialogTitle: '',
            isLoading: false,
            alertMsg: "Insertion Failed",
            searchDialogData: [],
            alertTitle: 'Failed',
            maxDocNo: docNo.toString()));
      }
    } catch (e) {
      emit(state.copyWith(
          searchDialogTitle: '',
          alertMsg: "Failed to save: ${e.toString()}",
          isLoading: false,
          searchDialogData: [],
          alertTitle: "Erorr",
          maxDocNo: docNo.toString()));
    }
  }
}
