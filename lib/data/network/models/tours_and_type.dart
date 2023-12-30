import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:mapo_travel_guide/data/dto/tour/tour.dart';

part 'tours_and_type.freezed.dart';
part 'tours_and_type.g.dart';

@freezed
class ToursAndType with _$ToursAndType {
  factory ToursAndType(String typeName, List<Tour> tours) = _ToursAndType;
  factory ToursAndType.fromJson(Map<String, dynamic> json) => _$ToursAndTypeFromJson(json);
}
