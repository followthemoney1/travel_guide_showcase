import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';
import 'package:mapo_travel_guide/data/db/hive_manager.dart';

part 'subscription_response.freezed.dart';

part 'subscription_response.g.dart';

@freezed
class SubscriptionResponse with _$SubscriptionResponse {
  factory SubscriptionResponse({@Default(false) bool subscribed}) = _SubscriptionResponse;

  factory SubscriptionResponse.fromJson(Map<String, dynamic> json) => _$SubscriptionResponseFromJson(json);
}

@freezed
class SubscribeToTheNewsletterBody with _$SubscribeToTheNewsletterBody {
  factory SubscribeToTheNewsletterBody({@Default(false) bool subscribe}) = _SubscribeToTheNewsletterBody;

  factory SubscribeToTheNewsletterBody.fromJson(Map<String, dynamic> json) => _$SubscribeToTheNewsletterBodyFromJson(json);
}

/// * [isNextBuy] If true next tour is free, if false you should buy nex tour
@freezed
class MeResponse with _$MeResponse {
  @HiveType(typeId: HiveTypes.meResponse)
  factory MeResponse({
    @HiveField(0) @Default(null) int? id,
    @HiveField(1) @Default('') String name,
    @HiveField(2) @Default('') String surname,
    @HiveField(3) @Default('') String email,
    // @HiveField(4) bool isVerified,
    @HiveField(5) @Default(false) bool isNextBuy,
    @HiveField(6) @Default('') String role,
  }) = _MeResponse;

  factory MeResponse.fromJson(Map<String, dynamic> json) => _$MeResponseFromJson(json);
}
