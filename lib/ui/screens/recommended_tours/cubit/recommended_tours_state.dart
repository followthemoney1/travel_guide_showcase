part of 'recommended_tours_cubit.dart';

@freezed
class RecommendedToursState with _$RecommendedToursState {
  const factory RecommendedToursState.initial(List<Tour> tours) = _Initial;
  const factory RecommendedToursState.loading() = _Loading;
  const factory RecommendedToursState.error(ErrorResponse error) = _Error;
  const factory RecommendedToursState.showInfoDialog(
    Set<Language> selectedByUser,
    Set<Language> intersection,
    Set<Language> difference,
  ) = _ShowInfoDialog;
}
