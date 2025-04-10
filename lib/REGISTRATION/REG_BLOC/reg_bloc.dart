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
    on<SaveData>(_saveData);
    //  on<IncrementDocNo>(_incrementDocNo);
    on<IsVerified>(_isVerified);
  }

  _fetchdivcodes(FetchDivCodes event, Emitter<RegState> emit) async {
    print("in bloc code");
    emit(state.copyWith(isLoading: true));
    try {
      final data = await repository.fetchDivCode();
      print("in bloc code data $data");
      emit(state.copyWith(
          searchDialogData: data,
          msg: 'Successful',
          isLoading: false,
          searchDialogTitle: 'Division Code'));
    } catch (e) {
      emit(state.copyWith(
          msg: 'Error While Fetching fetchDivCode $e', isLoading: false));
    }
  }

  _FetchDocNO(FetchDocNO event, Emitter<RegState> emit) async {
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

  _fetchVehicleCode(FetchVehicleCode event, Emitter<RegState> emit) async {
    print("Fetching _fetchVehicleCode: ${event.divcode}");
    emit(state.copyWith(isLoading: true));
    try {
      final data = await repository.fetchVehicleCode(event.divcode);
      print("in bloc code data $data");
      emit(state.copyWith(
          searchDialogData: data,
          msg: 'Successful',
          isLoading: false,
          searchDialogTitle: 'Vehicle Code'));
    } catch (e) {
      emit(state.copyWith(
          msg: 'Error While Fetching _fetchVehicleCode $e', isLoading: false));
    }
  }

  // Future<void> _saveData(SaveData event, Emitter<RegState> emit) async {
  //   print("Saving registration data...");
  //   emit(state.copyWith(isSaving: true));

  //   try {
  //     final data =
  //         await repository.registrationInsertFN(event.registrationData);
  //     print("Save response: $data");
  //     emit(state.copyWith(
  //       isLoading: false,
  //       msg: data,
  //       searchDialogData: [],
  //     ));
  //   } catch (e) {
  //     emit(state.copyWith(isLoading: false, searchDialogData: []));
  //   }
  // }
  Future<void> _saveData(SaveData event, Emitter<RegState> emit) async {
    print("Saving registration data...");
    emit(state.copyWith(isSaving: true));

    try {
      final data =
          await repository.registrationInsertFN(event.registrationData);
      print("Save response: $data");

      emit(state.copyWith(
        isSaving: false, 
        isLoading: false,
        msg: data,
        searchDialogData: [],
      ));
    } catch (e) {
      emit(state.copyWith(
        isSaving: false, 
        isLoading: false,
        msg: "Failed to save: ${e.toString()}",
        searchDialogData: [],
      ));
    }
  }

  _isVerified(IsVerified event, Emitter<RegState> emit) async {
    print("in bloc code");
    emit(state.copyWith(
      isVerified: event.isVerify,
      searchDialogData: [],
      // maxDocNo: '',
      msg: '',
    ));
  }
}
