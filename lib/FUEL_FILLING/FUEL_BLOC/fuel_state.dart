part of 'fuel_bloc.dart';

@freezed
abstract class FuelState with _$FuelState {
   factory FuelState({
required List <dynamic> searchDialogData,
required String  maxDocNo,
required bool isLoading,
required String msg,
required String searchDialogTitle,
required bool isVerified,


  })=fuelState;
   factory FuelState.initial(){
    return FuelState(searchDialogData: [], isLoading: false, msg: '', searchDialogTitle: '', maxDocNo: '', isVerified: false, );
  }
}
