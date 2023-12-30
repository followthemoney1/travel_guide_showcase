part of 'tour_map_cubit.dart';

@freezed
class TourMapState with _$TourMapState {
  const factory TourMapState.initial(SightRouteItem sight) = _Initial;
  const factory TourMapState.locationUpdated(Position pos) = _LocationUpdated;
  const factory TourMapState.error(ErrorResponse error) = _Error;
  const factory TourMapState.loading() = _Loading;
  const factory TourMapState.textVersion() = _TextVersion;
  const factory TourMapState.accessTimeUpdated() = _AccessTimeUpdated;
  const factory TourMapState.locationPermission() = _LocationPermission;
  const factory TourMapState.timesUp() = _TimesUp;
  const factory TourMapState.tourAudioIsMissing() = _TourAudioIsMissing;
}
