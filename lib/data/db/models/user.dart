import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';
import 'package:mapo_travel_guide/data/db/hive_manager.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
class User with _$User {
  @HiveType(typeId: HiveTypes.user)
  factory User({
    @HiveField(0) @Default('') String username,
    @HiveField(1) @Default('') String surname,
    @HiveField(2) @Default('') String id,
    @HiveField(3) @Default('') String email,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
