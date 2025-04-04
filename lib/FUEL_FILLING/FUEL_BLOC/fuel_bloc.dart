import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:trans_module/FUEL_FILLING/fuel_filling_model.dart';
import 'package:trans_module/FUEL_FILLING/fuel_filling_repository.dart';
import 'package:trans_module/REGISTRATION/reg_repository.dart';

part 'fuel_event.dart';
part 'fuel_state.dart';
part 'fuel_bloc.freezed.dart';

class FuelBloc extends Bloc<FuelEvent, FuelState> {
  final FuelFillingRepository fuelFillingrepository;

  FuelBloc(
    this.fuelFillingrepository,
  ) : super(FuelState.initial()) {
    on<FetchPaymentMood>(_fetchPaymentMood);
    on<FetchStations>(_fetchStations);
    on<FetchFuelType>(_fetchFuelType);
    on<FetchFuelCard>(_fetchFuelCard);
    on<FetchDocNo>(_fetchDocNo);
    on<IncrementDocNo>(_incrementDocNo);
    on<IsVerified>(_isVerified);
    on<InsertFuelFilling>(_insertFuelFilling);
  }

  _fetchPaymentMood(FetchPaymentMood event, Emitter<FuelState> emit) async {
    print("in bloc code");
    emit(state.copyWith(
      isLoading: true,
    ));
    try {
      final List<paymentMoodModel> data =
          await fuelFillingrepository.fetchPaymentMoods();
      print("in bloc code data $data");
      emit(state.copyWith(
          searchDialogData: data,
          isLoading: false,
          searchDialogTitle: 'Payment Mood',
          maxDocNo: ''));
    } catch (e) {
      emit(state.copyWith(
        isLoading: false,
        searchDialogData: [],
      ));
    }
  }

  _fetchStations(FetchStations event, Emitter<FuelState> emit) async {
    print("in bloc code");
    emit(state.copyWith(
      isLoading: true,
    ));
    try {
      final data = await fuelFillingrepository.fetchStations();
      print("in bloc code data $data");
      emit(state.copyWith(
          searchDialogData: data,
          isLoading: false,
          searchDialogTitle: 'Stations',
          maxDocNo: ''));
    } catch (e) {
      emit(state.copyWith(
        isLoading: false,
        searchDialogData: [],
      ));
    }
  }

  _fetchFuelType(FetchFuelType event, Emitter<FuelState> emit) async {
    print("in bloc code");
    emit(state.copyWith(
      isLoading: true,
    ));
    try {
      final data = await fuelFillingrepository.fetchFuelType();
      print("in bloc code data $data");
      emit(state.copyWith(
          isLoading: false,
          searchDialogData: data,
          searchDialogTitle: 'Fuel Types',
          maxDocNo: ''));
    } catch (e) {
      emit(state.copyWith(isLoading: false, searchDialogData: []));
    }
  }

  _fetchFuelCard(FetchFuelCard event, Emitter<FuelState> emit) async {
    print("in bloc code");
    emit(state.copyWith(
      isLoading: true,
    ));
    try {
      final data = await fuelFillingrepository.fetchFuelCard();
      print("in bloc code data $data");
      emit(state.copyWith(
          isLoading: false,
          searchDialogData: data,
          searchDialogTitle: 'Fuel Card',
          maxDocNo: ''));
    } catch (e) {
      emit(state.copyWith(isLoading: false, searchDialogData: []));
    }
  }

  _fetchDocNo(FetchDocNo event, Emitter<FuelState> emit) async {
    print("in bloc code");
    emit(state.copyWith(
      isLoading: true,
    ));
    try {
      final data = await fuelFillingrepository.fetchDocNo(event.divCode);
      print("in bloc code data $data");
      emit(state.copyWith(
          isLoading: false,
          searchDialogData: data,
          searchDialogTitle: 'Document Number',
          maxDocNo: ''));
    } catch (e) {
      emit(state.copyWith(isLoading: false, searchDialogData: []));
    }
  }

  _insertFuelFilling(InsertFuelFilling event, Emitter<FuelState> emit) async {
    print("in bloc code");
    emit(state.copyWith(
      isLoading: true,
    ));
    try {
      final data =
          await fuelFillingrepository.insertFuelFilling(event.fuelData);
      print("in bloc code data $data");
      emit(state.copyWith(
          isLoading: false, msg: data, searchDialogData: [], maxDocNo: ''));
    } catch (e) {
      emit(state.copyWith(isLoading: false, searchDialogData: []));
    }
  }

  _incrementDocNo(IncrementDocNo event, Emitter<FuelState> emit) async {
    print("in bloc code");
    emit(state.copyWith(
      isLoading: true,
    ));
    try {
      var docNo;
      final data = await fuelFillingrepository.increamentDocNo();
      print("in bloc code data $data");
      if (data == 0) {
        print("data is 0");
        docNo = "369000";
      } else {
         print("data is not 0");
        docNo = int.parse(data) + 1;
           print("in bloc code docNo $docNo");
      }
   
      emit(state.copyWith(
          isLoading: false, maxDocNo: docNo.toString(), searchDialogData: []));
    } catch (e) {
      emit(state.copyWith(isLoading: false, searchDialogData: []));
    }
  }
  _isVerified(IsVerified event, Emitter<FuelState> emit) async {
    print("in bloc code");
    emit(state.copyWith(
    isVerified:event.isVerify,
    searchDialogData: [],
    maxDocNo: '',
    msg:'',
    ));
   
  }
}
