import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';
import 'package:mapo_travel_guide/data/db/hive_manager.dart';
import 'package:mapo_travel_guide/data/dto/tour/tour.dart';

part 'profile.freezed.dart';
part 'profile.g.dart';

@freezed
class FavoritesResponse with _$FavoritesResponse {
  @HiveType(typeId: HiveTypes.favorites)
  factory FavoritesResponse({@HiveField(0) @Default([]) List<Tour> favoriteTours}) = _FavoritesResponse;

  factory FavoritesResponse.fromJson(Map<String, dynamic> json) => _$FavoritesResponseFromJson(json);
}

@freezed
class UserPromocodesResponse with _$UserPromocodesResponse {
  @HiveType(typeId: HiveTypes.userPromocodes)
  factory UserPromocodesResponse({@HiveField(0) @Default([]) List<Tour> promoTours}) = _UserPromocodesResponse;

  factory UserPromocodesResponse.fromJson(Map<String, dynamic> json) => _$UserPromocodesResponseFromJson(json);
}

@freezed
class EditProfileBody with _$EditProfileBody {
  factory EditProfileBody({
    @Default('') String name,
    @Default('') String surname,
    @Default('') String email,
    @Default('') String language,
    @Default('') String hash,
    @Default('') String oldPassword,
    @Default('') String confirmedPassword,
  }) = _EditProfileBody;

  factory EditProfileBody.fromJson(Map<String, dynamic> json) => _$EditProfileBodyFromJson(json);
}

@freezed
class EditProfileResponse with _$EditProfileResponse {
  factory EditProfileResponse({@Default('') String accessToken}) = _EditProfileResponse;

  factory EditProfileResponse.fromJson(Map<String, dynamic> json) => _$EditProfileResponseFromJson(json);
}
