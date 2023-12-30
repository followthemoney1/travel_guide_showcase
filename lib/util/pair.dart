import 'package:freezed_annotation/freezed_annotation.dart';

part 'pair.freezed.dart';

@freezed
class Pair<T, V> with _$Pair<T,V> {
  factory Pair(T first, V second) = _Pair;
}
