part of 'reg_bloc.dart';

@freezed
class RegState with _$RegState {
  const factory RegState.initial() = Initial;
  const factory RegState.loading() = Loading;
  const factory RegState.loaded(List<dynamic> divCodes) = Loaded;
  const factory RegState.error(String message) = Error;
}
