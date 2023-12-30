import 'dart:io';

import 'package:connectivity/connectivity.dart';
import 'package:in_app_purchase/in_app_purchase.dart';
import 'package:mapo_travel_guide/data/dto/tour/tour.dart';
import 'package:mapo_travel_guide/util/const.dart';
import 'package:in_app_purchase_android/in_app_purchase_android.dart';
import 'package:in_app_purchase_android/billing_client_wrappers.dart';
//import for AppStoreProductDetails
import 'package:in_app_purchase_ios/in_app_purchase_ios.dart';
//import for SKProductWrapper
import 'package:in_app_purchase_ios/store_kit_wrappers.dart';

class Currencies {
  static final currencies = {
    'BGN': 'лв',
    'CHF': 'CHF',
    'CZK': 'Kč',
    'DKK': 'kr',
    'EUR': '€',
    'GBP': '£',
    'HRK': 'kn',
    'GEL': '₾',
    'HUF': 'ft',
    'NOK': 'kr',
    'PLN': 'zł',
    'RUB': '₽',
    'RON': 'lei',
    'SEK': 'kr',
    'TRY': '₺',
    'UAH': '₴',
    'AED': 'د.إ',
    'ILS': '₪',
    'KES': 'Ksh',
    'MAD': '.د.م',
    'NGN': '₦',
    'ZAR': 'R',
    'BRL': 'R\$',
    'CAD': '\$',
    'CLP': '\$',
    'COP': '\$',
    'MXN': '\$',
    'PEN': 'S',
    'USD': '\$',
    'AUD': '\$',
    'BDT': '৳',
    'CNY': '¥',
    'HKD': '\$',
    'IDR': 'Rp',
    'INR': '₹',
    'JPY': '¥',
    'MYR': 'RM',
    'NZD': '\$',
    'PHP': '₱',
    'PKR': 'Rs',
    'SGD': '\$',
    'KRW': '₩',
    'LKR': 'Rs',
    'THB': '฿',
    'VND': '₫'
  };

  static String symbol(String code) {
    return currencies[code]!;
  }

  //Price looks like: UAH 24.56 USD 13.99. And will look after method like ₴ 24.56 $ 13.99
  static String convertCodeToSymbol(ProductDetails price) {
    if (Platform.isAndroid) {
      var symb = symbol(price.currencyCode);
      var skuDetails = (price as GooglePlayProductDetails).skuDetails;
      var priceRes = (skuDetails.priceAmountMicros * .000001).toStringAsFixed(2);
      return '$symb$priceRes';
    } else if (Platform.isIOS) {
      var skProduct = (price as AppStoreProductDetails).skProduct;
      return '${skProduct.priceLocale.currencySymbol}${skProduct.price}';
    } else {
      return price.price;
    }
  }

  static Future<Map<String, String>> prepareToursPrices(List<Tour> tours) async {
    var connectivityResult = await (Connectivity().checkConnectivity());
    if (connectivityResult == ConnectivityResult.none) {
      return {};
    }
    var _kIds = <String>{};
    switch (Platform.operatingSystem) {
      case ios:
        tours.forEach((tour) => _kIds.add(tour.appleProductId.isNotEmpty ? tour.appleProductId : '0'));
        break;
      case android:
        tours.forEach((tour) => _kIds.add(tour.googleProductId.isNotEmpty ? tour.googleProductId : '0'));
        break;
      default:
        _kIds = {'0'};
    }
    final response = await InAppPurchase.instance.queryProductDetails(_kIds);
    var products = response.productDetails;

    var temp = products.asMap().map(
          (key, product) => MapEntry(
            product.id,
            Currencies.convertCodeToSymbol(product),
          ),
        );

    return temp;
  }
}
