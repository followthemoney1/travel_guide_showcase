part of 'tour_list_cubit.dart';

@freezed
class TourListState with _$TourListState {
  const factory TourListState.initial(List<Tour> tours) = _Initial;
  const factory TourListState.loading() = _Loading;
  const factory TourListState.hideInfoDialog() = _HideInfoDialog;
  const factory TourListState.error(ErrorResponse error) = _Error;
  const factory TourListState.showInfoDialog(
    Set<Language> selectedByUser,
    Set<Language> intersection,
    Set<Language> difference,
  ) = _ShowInfoDialog;
}
