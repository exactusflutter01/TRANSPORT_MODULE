import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:trans_module/INSURANCE/MODELS/insu_model.dart';
import 'package:trans_module/INSURANCE/REPO/insu_repository.dart';

part 'insu_event.dart';
part 'insu_state.dart';
part 'insu_bloc.freezed.dart';

class InsuBloc extends Bloc<InsuEvent, InsuranceState> {
  final Insurance_Repo insrepo;
  InsuBloc(this.insrepo) : super(InsuranceState.initial()) {
    on<FetchDoc>(_FetchInsuranace_cmpny);
    on<FetchPolicy>(_FetchPolicy_type);
    on<FetchDebitCode>(_FetchDebitcode);
    on<FetchVehicleCode>(_fetchVehicleCode);
    on<InsuranceInsert>(_Insert_Insurance);
    on<Verifiedclicked>(_CheckBoxClicked);
    on<MaxdocNo>(_Maxdocget);
  }

  _FetchInsuranace_cmpny(FetchDoc event, Emitter<InsuranceState> emit) async {
    try {
      final DocNoList = await insrepo.fetchinsCmpny();
      print("DocNoList in BLoc $DocNoList");
      emit(state.copyWith(
          ItemsList: DocNoList,
          isLoading: false,
          isError: false,
          SearchDialogueName: "Insurance Company"));
    } catch (e) {
      emit(state.copyWith(
          isLoading: false, isError: true, AlertMessage: e.toString()));
    }
  }

  _FetchPolicy_type(FetchPolicy event, Emitter<InsuranceState> emit) async {
    try {
      List PolicyTypeLIst = await insrepo.fetchPolicyType();
      emit(state.copyWith(
          ItemsList: PolicyTypeLIst,
          isLoading: false,
          isError: false,
          SearchDialogueName: "Policy Type"));
    } catch (e) {
      emit(state.copyWith(
          isLoading: false, isError: true, AlertMessage: e.toString()));
    }
  }

  _FetchDebitcode(FetchDebitCode event, Emitter<InsuranceState> emit) async {
    try {
      var DebitCodeList = await insrepo.fetchDebitCode();
      emit(state.copyWith(
          ItemsList: DebitCodeList,
          isLoading: false,
          isError: false,
          SearchDialogueName: "Debit Code"));
    } catch (e) {
      emit(state.copyWith(
          isLoading: false, isError: true, AlertMessage: e.toString()));
    }
  }

  _fetchVehicleCode(
      FetchVehicleCode event, Emitter<InsuranceState> emit) async {
    try {
      var DebitCodeList = await insrepo.fetchVehicleCode(event.division);

      if (DebitCodeList.isNotEmpty) {
        emit(state.copyWith(
            ItemsList: DebitCodeList,
            isLoading: false,
            isError: false,
            SearchDialogueName: "Vechicle Code"));
      } else {}
    } catch (e) {
      emit(state.copyWith(
          isLoading: false, isError: true, AlertMessage: e.toString()));
    }
  }

  _Insert_Insurance(InsuranceInsert event, Emitter<InsuranceState> emit) async {
    try {
      final response = await insrepo.InsuranaceInsert(event.data);
      emit(state.copyWith(
          AlertMessage: "Data Created successfully",
          AlertTitle: "Success",
          ItemsList: [],
          isLoading: false,
          isError: false,
          Response: response));
      print("Insert response in Bloc $response");
    } catch (e) {
      print("$e");
      emit(state.copyWith(
        AlertMessage: e.toString(),
        AlertTitle: "Error",
        isLoading: false,
        isError: true,
      ));
    }
  }

  _CheckBoxClicked(Verifiedclicked event, Emitter<InsuranceState> emit) {
    emit(state.copyWith(verified: event.clicked));
  }

  _Maxdocget(MaxdocNo event, Emitter<InsuranceState> emit) async {
    try {
      final response = await insrepo.fetchMatchDocNo();
      print("_Maxdocget response in Bloc $response");

      var DocNo;
      if (response != 0) {
        print("respomse != 0");
        var Data = int.parse(response) + 1;
        DocNo = Data.toString().padLeft(6, '0');
        print("response $response");
        print("DocNo $DocNo");
      } else {
        print("respomse == 0");
        DocNo = 0;
      }
      emit(state.copyWith(isLoading: false, Response: DocNo));
    } catch (e) {
      emit(state.copyWith(
          isLoading: false, isError: true, Response: e.toString()));
    }
  }
}
