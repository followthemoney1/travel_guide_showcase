import 'dart:io';

import 'package:mapo_travel_guide/base/localizations/localizations.dart';
import 'package:mapo_travel_guide/util/const.dart';
import 'package:intl/intl.dart';

String trimCoordinate(double coordinate) {
  // var sCoord = coordinate.toString();
  // if (sCoord.substring(sCoord.indexOf('.') + 1, sCoord.length).length > 6) {
  //   sCoord = sCoord.substring(0, sCoord.indexOf('.') + 7);
  // }
  return coordinate.toStringAsFixed(6);
}

String truncateWithEllipsis(int cutoff, String myString) {
  return (myString.length <= cutoff) ? myString : '${myString.substring(0, cutoff)}...';
}

String calculateRemainingTimeAndConvert(int? tourRemainingTime, MLoc loc) {
  if (tourRemainingTime != null) {
    var remaining = DateTime.fromMillisecondsSinceEpoch(tourRemainingTime * 1000);
    var now = DateTime.now();
    var difference = now.difference(remaining);
    final s = '${47 - difference.inHours} ${loc.hours} ${59 - difference.inMinutes.remainder(60)} ${loc.minutes}';
    return s;
  } else {
    return '48:00';
  }
}

String convertPromocdeEndTimestampToDate(int timestamp, MLoc loc) {
  if (timestamp == 0) return loc.unlimited;
  var format = DateFormat('dd.MM');
  var date = DateTime.fromMillisecondsSinceEpoch(timestamp * 1000);
  return format.format(date);
}

String getPlatform() {
  var platform = '';
  switch (Platform.operatingSystem) {
    case ios:
      platform = apple;
      break;
    case android:
      platform = google;
      break;
    default:
      platform = '';
  }
  return platform;
}
