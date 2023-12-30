import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mapo_travel_guide/data/dto/tour/tour.dart';

part 'payment.freezed.dart';

part 'payment.g.dart';

@freezed
class PaymentAndroidBody with _$PaymentAndroidBody {
  factory PaymentAndroidBody({
    @Default('') String? purchaseToken,
    @Default('') String tourId,
    @Default('') String packageName,
    @Default('') String? productId,
    @Default('') String language,
  }) = _PaymentAndroidBody;

  factory PaymentAndroidBody.fromJson(Map<String, dynamic> json) => _$PaymentAndroidBodyFromJson(json);
}

@freezed
class PaymentAppleBody with _$PaymentAppleBody {
  factory PaymentAppleBody({
    @Default('') String tourId,
    @Default('') String language,
    @Default('') String? appleReceipt,
  }) = _PaymentAppleBody;

  factory PaymentAppleBody.fromJson(Map<String, dynamic> json) => _$PaymentAppleBodyFromJson(json);
}

@freezed
class PaymentFreeBody with _$PaymentFreeBody {
  factory PaymentFreeBody({
    @Default('') String tourId,
    @Default('') String language,
  }) = _PaymentFreeBody;

  factory PaymentFreeBody.fromJson(Map<String, dynamic> json) => _$PaymentFreeBodyFromJson(json);
}

@freezed
class PromoCodeBody with _$PromoCodeBody {
  factory PromoCodeBody({
    @Default('') String promocod,
    @Default('') String language,
    @Default(0) int audioTour,
  }) = _PromoCodeBody;

  factory PromoCodeBody.fromJson(Map<String, dynamic> json) => _$PromoCodeBodyFromJson(json);
}

@freezed
class PromoCodeData with _$PromoCodeData {
  factory PromoCodeData({
    @Default('') String type,
    @Default('') String appleProductId,
    @Default('') String googleProductId,
    @Default(0) int amountOfUses,
    @Default(0) int percentage,
    @Default('') String startTermOfWork,
    @Default('') String endTermOfWork,
    @Default(null) Tour? audioTour,
  }) = _PromoCodeData;

  factory PromoCodeData.fromJson(Map<String, dynamic> json) => _$PromoCodeDataFromJson(json);
}
