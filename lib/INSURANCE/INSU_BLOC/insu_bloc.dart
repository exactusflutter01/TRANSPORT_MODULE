import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:trans_module/INSURANCE/REPO/insu_repository.dart';

part 'insu_event.dart';
part 'insu_state.dart';
part 'insu_bloc.freezed.dart';

class InsuBloc extends Bloc<InsuEvent, InsuranceState> {
  final Insurance_ApiService insrepo;
  InsuBloc(this.insrepo) : super(InsuranceState.initial()) {
    on<FetchDoc>(_FetchdocNo);
  }

  _FetchdocNo(FetchDoc event, Emitter<InsuranceState> emit) async {
    emit(state.copyWith(isLoading: true));
    try {
      var DocNoList = await insrepo.FetchDocumentNo(event.divcode);
      emit(state.copyWith(
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

  _FetchInsuranace_cmpny(FetchDoc event, Emitter<InsuranceState> emit) async {
    emit(state.copyWith(isLoading: true));
    try {
      var DocNoList = await insrepo.FetchIns_company();
      emit(state.copyWith(
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

  _FetchPolicy_type(FetchDoc event, Emitter<InsuranceState> emit) async {
    emit(state.copyWith(isLoading: true));
    try {
      var DocNoList = await insrepo.FetchPolicy_type();
      emit(state.copyWith(
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

  _Fetchdebit_code(FetchDoc event, Emitter<InsuranceState> emit) async {
    emit(state.copyWith(isLoading: true));
    try {
      var DocNoList = await insrepo.Fetchdebit_code();
      emit(state.copyWith(
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
}
