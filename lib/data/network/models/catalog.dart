import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'catalog.freezed.dart';
part 'catalog.g.dart';

@freezed
class GetCountriesBody with _$GetCountriesBody {
  factory GetCountriesBody(String language) = _GetCountriesBody;
  factory GetCountriesBody.fromJson(Map<String, dynamic> json) => _$GetCountriesBodyFromJson(json);
}

@freezed
class MatchCitiesBody with _$MatchCitiesBody {
  factory MatchCitiesBody(String language, String pattern) = _MatchCitiesBody;
  factory MatchCitiesBody.fromJson(Map<String, dynamic> json) => _$MatchCitiesBodyFromJson(json);
}

@freezed
class GetCountryByCityIdBody with _$GetCountryByCityIdBody {
  factory GetCountryByCityIdBody(String language, String cityId) = _GetCountryByCityIdBody;
  factory GetCountryByCityIdBody.fromJson(Map<String, dynamic> json) => _$GetCountryByCityIdBodyFromJson(json);
}
