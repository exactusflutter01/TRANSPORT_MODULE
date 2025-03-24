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
  }

  _FetchInsuranace_cmpny(FetchDoc event, Emitter<InsuranceState> emit) async {
    emit(state.copyWith(isLoading: true));
    try {
      final DocNoList = await insrepo.fetchinsCmpny();
      print("DocNoList in BLoc $DocNoList");
      emit(state.copyWith(
        DebitCode: [],
        PolicyList: [],
        ItemsList: DocNoList,
        isLoading: false,
        isError: false,
      ));
    } catch (e) {
      emit(state.copyWith(
        isLoading: false,
        isError: true,
      ));
    }
  }

  _FetchPolicy_type(FetchPolicy event, Emitter<InsuranceState> emit) async {
    emit(state.copyWith(isLoading: true));
    try {
      List PolicyTypeLIst = await insrepo.fetchPolicyType();
      emit(state.copyWith(
        PolicyList: PolicyTypeLIst,
        DebitCode: [],
        ItemsList: [],
        isLoading: false,
        isError: false,
      ));
    } catch (e) {
      emit(state.copyWith(
        isLoading: false,
        isError: true,
      ));
    }
  }

  _FetchDebitcode(FetchDebitCode event, Emitter<InsuranceState> emit) async {
    emit(state.copyWith(isLoading: true));
    try {
      var DebitCodeList = await insrepo.fetchDebitCode();
      emit(state.copyWith(
        DebitCode: DebitCodeList,
        ItemsList: [],
        PolicyList: [],
        isLoading: false,
        isError: false,
      ));
    } catch (e) {
      emit(state.copyWith(
        isLoading: false,
        isError: true,
      ));
    }
  }
}
