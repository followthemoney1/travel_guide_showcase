part of 'tour_cubit.dart';

@freezed
class TourState with _$TourState {
  factory TourState.tourInitial() = _TourInitial;
  factory TourState.tourLoading() = _TourLoading;
  factory TourState.error(ErrorResponse errorResponse) = _Error;
  factory TourState.tourActivated() = _TourActivated;
  factory TourState.tourDownloaded() = _TourDownloaded;
  factory TourState.updateProgress(Map<String, int> progress) = _UpdateProgress;
}
