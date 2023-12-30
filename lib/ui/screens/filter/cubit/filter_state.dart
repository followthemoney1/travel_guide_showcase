part of 'filter_cubit.dart';

@freezed
class FilterState with _$FilterState {
  const factory FilterState.initial() = _Initial;
  const factory FilterState.error(ErrorResponse error) = _Error;
  const factory FilterState.loading() = _Loading;
  const factory FilterState.clear() = _Clear;
}
