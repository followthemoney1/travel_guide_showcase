import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:in_app_review/in_app_review.dart';
import 'package:injectable/injectable.dart';
import 'package:mapo_travel_guide/injection/injection.dart';
import 'package:mapo_travel_guide/ui/screens/my_orders/cubit/my_orders_cubit.dart';
import 'package:mapo_travel_guide/util/secure_storage_keys.dart';

@singleton
class InAppReviewService {
  final InAppReview _inAppReview;
  final FlutterSecureStorage _secureStorage;
  late DateTime lastAskForReview;
  bool availableForAsking = true;

  InAppReviewService(this._inAppReview, this._secureStorage) {
    _initialization();
  }

  Future<void> showAppReviewDialog() async {
    if (availableForAsking) {
      final _myOrdersCubit = locator<MyOrdersCubit>();
      if (_myOrdersCubit.archiveTours.isNotEmpty && await _inAppReview.isAvailable()) {
        await _inAppReview.requestReview();
        await _secureStorage.write(key: SecuredStorage.lastAskForReview, value: DateTime.now().toString());
      }
    }
  }

  Future<void> _initialization() async {
    final lastAsk = await _secureStorage.read(key: SecuredStorage.lastAskForReview);
    if (lastAsk != null) {
      lastAskForReview = DateTime.parse(lastAsk);
      availableForAsking = lastAskForReview.add(Duration(days: 30)).compareTo(DateTime.now()) < 0;
    }
  }
}
