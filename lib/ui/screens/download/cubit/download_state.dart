part of 'download_cubit.dart';

@freezed
class DownloadState with _$DownloadState {
  factory DownloadState.initial() = _Initial;
  factory DownloadState.loading() = _Loading;
  factory DownloadState.error(ErrorResponse message) = _Error;
  factory DownloadState.loadedLanguages(Map<TourLanguageInfo, bool> tourLanguages) = _LoadedLanguages;
}
