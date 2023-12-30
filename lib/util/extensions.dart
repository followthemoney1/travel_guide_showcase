import 'dart:io';

extension Format on Duration {
  String toFormattedString() {
    String twoDigits(int n) {
      if (n >= 10) return '$n';
      return '0$n';
    }

    return '${twoDigits(inMinutes.remainder(60))}:${twoDigits(inSeconds.remainder(60))}';
  }
}

extension Language on Platform {
  String language() {
    return Platform.localeName.substring(0, 2);
  }
}
