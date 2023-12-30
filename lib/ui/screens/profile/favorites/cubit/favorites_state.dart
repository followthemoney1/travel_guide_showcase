part of 'favorites_cubit.dart';

@freezed
class FavoritesState with _$FavoritesState {
  factory FavoritesState.initial() = _Initial;
  factory FavoritesState.favoritesLoading() = _FavoritesLoading;
  factory FavoritesState.favoritesError(ErrorResponse message) = _FavoritesError;
  factory FavoritesState.loaded(List<Tour> favorites) = _Loaded;
}
