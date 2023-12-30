part of 'where_go_search_cubit.dart';

@freezed
class WhereGoSearchState with _$WhereGoSearchState {
  const factory WhereGoSearchState.initial() = _Initial;
  const factory WhereGoSearchState.result() = _Result;

  const factory WhereGoSearchState.error(ErrorResponse error) = _Error;
  const factory WhereGoSearchState.loading() = _Loading;
}
