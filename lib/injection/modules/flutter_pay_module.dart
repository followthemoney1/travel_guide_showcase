import 'package:flutter_pay/flutter_pay.dart';
import 'package:injectable/injectable.dart';

@module
abstract class FlutterPayModule{
  @singleton
  FlutterPay get payManager => FlutterPay();
}