import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:trans_module/REGISTRATION/reg_model.dart';
import 'package:trans_module/REGISTRATION/reg_repository.dart';

part 'reg_event.dart';
part 'reg_state.dart';
part 'reg_bloc.freezed.dart';

class RegBloc extends Bloc<RegEvent, RegState> {
  final RegRepository repository;

  RegBloc(this.repository) : super(RegState.initial()) {
    on<FetchDivCodes>(_fetchdivcodes);
    on<FetchDocNO>(_FetchDocNO);
    on<FetchVehicleCode>(_fetchVehicleCode);
    on<FetchCreditCode>(_fetchCreditCode);
    on<SaveData>(_saveData);
    //  on<IncrementDocNo>(_incrementDocNo);
    on<IsVerified>(_isVerified);
  }

  _fetchdivcodes(FetchDivCodes event, Emitter<RegState> emit) async {
    print("in bloc code");
    emit(state.copyWith(isLoading: true));
    try {
      final data = await repository.fetchDivCode();

      if (data.isNotEmpty) {
        print("in bloc code data $data");
        emit(state.copyWith(
            searchDialogData: data,
            alertMsg: 'Success',
            isLoading: false,
            searchDialogTitle: 'Division Code',  maxDocNo:''));
      } else {
        print("in bloc code data $data");
        emit(state.copyWith(
            searchDialogData: [],
            alertMsg: 'Success',
            isLoading: false,
            searchDialogTitle: 'Division Code',  maxDocNo:''));
      }
    } catch (e) {
      emit(state.copyWith(
        alertMsg: 'Error While Fetching fetchDivCode $e',
        isLoading: false,
        searchDialogData: [],
        alertTitle: "Erorr",  maxDocNo:''
      ));
    }
  }

  _fetchCreditCode(FetchCreditCode event, Emitter<RegState> emit) async {
    print("in bloc code");
    emit(state.copyWith(isLoading: true));
    try {
      final data = await repository.fetchCreditCode();

      if (data.isNotEmpty) {
        print("in bloc code data $data");
        emit(state.copyWith(
            searchDialogData: data,
            isLoading: false,
            searchDialogTitle: 'Credit Code',  maxDocNo:''));
      } else {
        print("in bloc code data $data");
        emit(state.copyWith(
            searchDialogData: [],
            alertMsg: 'No Data Found',
            isLoading: false,
            alertTitle: 'Warning',  maxDocNo:''));
      }
    } catch (e) {
      emit(state.copyWith(
        alertMsg: 'Error While Fetching fetchDivCode $e',
        isLoading: false,
        searchDialogData: [],
        alertTitle: "Erorr",  maxDocNo:''
      ));
    }
  }

  _FetchDocNO(FetchDocNO event, Emitter<RegState> emit) async {
    print("Fetching document number for division: ${event.divcode}");
    emit(state.copyWith(isLoading: true));
    try {
      final data = await repository.fetchDocNo(event.divcode);
      print("in bloc code data $data");

      if (data.isNotEmpty) {
        print("in bloc code data $data");
        emit(state.copyWith(
            searchDialogData: data,
            alertMsg: 'Success',
            isLoading: false,
            searchDialogTitle: 'Doc No',  maxDocNo:''));
      } else {
        print("in bloc code data $data");
        emit(state.copyWith(
            searchDialogData: [],
            alertMsg: 'Success',
            isLoading: false,
            searchDialogTitle: 'Doc No',  maxDocNo:''));
      }
    } catch (e) {
      emit(state.copyWith(
        alertMsg: 'Error While Fetching Doc NO $e',
        isLoading: false,
        searchDialogData: [],
        alertTitle: "Erorr",  maxDocNo:''
      ));
    }
  }

  _fetchVehicleCode(FetchVehicleCode event, Emitter<RegState> emit) async {
    print("Fetching _fetchVehicleCode: ${event.divcode}");
    emit(state.copyWith(isLoading: true));
    try {
      final data = await repository.fetchVehicleCode(event.divcode);
      print("in bloc code data $data");

      if (data.isNotEmpty) {
        print("in bloc code data $data");
        emit(state.copyWith(
            searchDialogData: data,
            alertMsg: 'Success',
            isLoading: false,
            searchDialogTitle: 'Vehicle Code',  maxDocNo:''));
      } else {
        print("in bloc code data $data");
        emit(state.copyWith(
            searchDialogData: [],
            alertMsg: 'Success',
            isLoading: false,
            searchDialogTitle: 'Vehicle Code',  maxDocNo:'',));
      }
    } catch (e) {
      emit(state.copyWith(
        alertMsg: 'Error While Fetching Vechicle Code $e',
        isLoading: false,
        searchDialogData: [],
        alertTitle: "Erorr",
          maxDocNo:'',
      ));
    }
  }

  Future<void> _saveData(SaveData event, Emitter<RegState> emit) async {
    emit(state.copyWith(isLoading: true));
    var docNo;
    try {
      final data = await repository.fetchMaxDocNo();
      print("in bloc code data $data");
      if (data == 0) {
        print("data is 0");
        docNo = "369000";
      } else {
        print("data is not 0");
        docNo = int.parse(data) + 1;
        print("in bloc code docNo $docNo");
      }

      Map<String, dynamic> modifiedData = Map.from(event.registrationData);

      modifiedData["DOC_NO"] = docNo.toString();
      print("modifiedData $modifiedData");
      final response = await repository.registrationInsertFN(modifiedData);

      print("Save response: $response");

      if (response == 1) {
        emit(state.copyWith(
          isLoading: false,
          alertMsg: "Insertion Successful",
          searchDialogData: [],
          alertTitle: 'Success',
          maxDocNo: docNo.toString(),
        ));
      } else {
        emit(state.copyWith(
            isLoading: false,
            alertMsg: "Insertion Failed",
            searchDialogData: [],
            alertTitle: 'Failed',
            maxDocNo: docNo.toString()));
      }
    } catch (e) {
      emit(state.copyWith(
          alertMsg: "Failed to save: ${e.toString()}",
          isLoading: false,
          searchDialogData: [],
          alertTitle: "Erorr",
          maxDocNo: docNo.toString()));
    }
  }

  _isVerified(IsVerified event, Emitter<RegState> emit) async {
    print("in bloc code");
    emit(state.copyWith(
      isVerified: event.isVerify,
      searchDialogData: [],
      // maxDocNo: '',
       alertMsg: '',
       maxDocNo:'',
       searchDialogTitle: '',
       alertTitle: '',
       
    ));
  }
}
