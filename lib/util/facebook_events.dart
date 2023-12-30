import 'package:facebook_app_events/facebook_app_events.dart';

class FBEvents {
  static final instance = FacebookAppEvents()..setAdvertiserTracking(enabled: true);
}
