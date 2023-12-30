part of 'guide_cubit.dart';

@freezed
class GuideState with _$GuideState {
  factory GuideState.guideInitial() = _GuideInitial;
  factory GuideState.guideLoading() = _GuideLoading;
  factory GuideState.error(ErrorResponse message) = _Error;
}
