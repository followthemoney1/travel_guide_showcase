part of 'catalog_cubit.dart';

@freezed
class CatalogState with _$CatalogState {
  const factory CatalogState.initial() = _Initial;
  const factory CatalogState.result() = _Result;

  const factory CatalogState.error(ErrorResponse error) = _Error;
  const factory CatalogState.loading() = _Loading;
  const factory CatalogState.resultLoading() = _ResultLoading;
}
