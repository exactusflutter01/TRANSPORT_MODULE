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
    on<InsuranceInsert>(_Insert_Insurance);
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
          isLoading: false, isError: true, ResponseMessage: e.toString()));
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
          isLoading: false, isError: true, ResponseMessage: e.toString()));
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
          isLoading: false, isError: true, ResponseMessage: e.toString()));
    }
  }

  _Insert_Insurance(InsuranceInsert event, Emitter<InsuranceState> emit) async {
    try {
      final response = await insrepo.InsuranaceInsert(
          event.vehcode,
          event.docno,
          event.docdate,
          event.invno,
          event.invdate,
          event.supcode,
          event.costbookno,
          event.divcode,
          event.deptcode,
          event.inscompany,
          event.strtdte,
          event.expdate,
          event.policytype,
          event.policyno,
          event.amount,
          event.remarks,
          event.currcode,
          event.exrate,
          event.active,
          event.userid,
          event.strtread,
          event.endreading,
          event.empid,
          event.accodedr,
          event.docref,
          event.exptypecode,
          event.expsubtype_code,
          event.exp_code,
          event.verified,
          event.verifieddate,
          event.verifiedby);

      emit(state.copyWith(
          ItemsList: [], isLoading: false, isError: false, Response: response));
    } catch (e) {
      print("$e");
      emit(state.copyWith(
          isLoading: false, isError: true, Response: e.toString()));
    }
  }
}
