part of 'map_preview_cubit.dart';

@freezed
class MapPreviewState with _$MapPreviewState {
  factory MapPreviewState.initial() = _Initial;
  factory MapPreviewState.loading() = _Loading;
  factory MapPreviewState.myOrdersError(ErrorResponse message) = _Error;
}
