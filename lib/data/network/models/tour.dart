import 'package:freezed_annotation/freezed_annotation.dart';

part 'tour.freezed.dart';
part 'tour.g.dart';

@freezed
class UpdateTourRateBody with _$UpdateTourRateBody {
  factory UpdateTourRateBody(
    String audioTourId,
    double rate,
  ) = _UpdateTourRateBody;

  factory UpdateTourRateBody.fromJson(Map<String, dynamic> json) => _$UpdateTourRateBodyFromJson(json);
}

@freezed
class AddTourToFavoritesBody with _$AddTourToFavoritesBody {
  factory AddTourToFavoritesBody(
    int tourId,
    bool isFavourite,
  ) = _AddTourToFavoritesBody;

  factory AddTourToFavoritesBody.fromJson(Map<String, dynamic> json) => _$AddTourToFavoritesBodyFromJson(json);
}

@freezed
class AddTourToFavoritesResponse with _$AddTourToFavoritesResponse {
  factory AddTourToFavoritesResponse(
    bool success,
  ) = _AddTourToFavoritesResponse;

  factory AddTourToFavoritesResponse.fromJson(Map<String, dynamic> json) => _$AddTourToFavoritesResponseFromJson(json);
}
