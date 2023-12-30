part of 'payment_cubit.dart';

@freezed
class PaymentState with _$PaymentState {
  factory PaymentState.initial() = _Initial;
  factory PaymentState.nonAuthorized() = _NonAuthorized;
  factory PaymentState.postPayment(bool successful) = _PostPayment;
  factory PaymentState.loading() = _Loading;
  factory PaymentState.promoCodeChecking() = _PromoCodeChecking;
  factory PaymentState.promoCodeSuccess() = _PromoCodeSuccess;
  factory PaymentState.promoCodeError() = _PromoCodeError;
  factory PaymentState.promoCodeChanged(String value) = _PromoCodeChanged;
}
