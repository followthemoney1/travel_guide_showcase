// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'questions_and_answers.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

QuestionAndAnswer _$QuestionAndAnswerFromJson(Map<String, dynamic> json) {
  return _QuestionAndAnswer.fromJson(json);
}

/// @nodoc
class _$QuestionAndAnswerTearOff {
  const _$QuestionAndAnswerTearOff();

  _QuestionAndAnswer call(
      @HiveField(0) String question, @HiveField(1) String answer) {
    return _QuestionAndAnswer(
      question,
      answer,
    );
  }

  QuestionAndAnswer fromJson(Map<String, Object> json) {
    return QuestionAndAnswer.fromJson(json);
  }
}

/// @nodoc
const $QuestionAndAnswer = _$QuestionAndAnswerTearOff();

/// @nodoc
mixin _$QuestionAndAnswer {
  @HiveField(0)
  String get question => throw _privateConstructorUsedError;
  @HiveField(1)
  String get answer => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $QuestionAndAnswerCopyWith<QuestionAndAnswer> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuestionAndAnswerCopyWith<$Res> {
  factory $QuestionAndAnswerCopyWith(
          QuestionAndAnswer value, $Res Function(QuestionAndAnswer) then) =
      _$QuestionAndAnswerCopyWithImpl<$Res>;
  $Res call({@HiveField(0) String question, @HiveField(1) String answer});
}

/// @nodoc
class _$QuestionAndAnswerCopyWithImpl<$Res>
    implements $QuestionAndAnswerCopyWith<$Res> {
  _$QuestionAndAnswerCopyWithImpl(this._value, this._then);

  final QuestionAndAnswer _value;
  // ignore: unused_field
  final $Res Function(QuestionAndAnswer) _then;

  @override
  $Res call({
    Object? question = freezed,
    Object? answer = freezed,
  }) {
    return _then(_value.copyWith(
      question: question == freezed
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as String,
      answer: answer == freezed
          ? _value.answer
          : answer // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$QuestionAndAnswerCopyWith<$Res>
    implements $QuestionAndAnswerCopyWith<$Res> {
  factory _$QuestionAndAnswerCopyWith(
          _QuestionAndAnswer value, $Res Function(_QuestionAndAnswer) then) =
      __$QuestionAndAnswerCopyWithImpl<$Res>;
  @override
  $Res call({@HiveField(0) String question, @HiveField(1) String answer});
}

/// @nodoc
class __$QuestionAndAnswerCopyWithImpl<$Res>
    extends _$QuestionAndAnswerCopyWithImpl<$Res>
    implements _$QuestionAndAnswerCopyWith<$Res> {
  __$QuestionAndAnswerCopyWithImpl(
      _QuestionAndAnswer _value, $Res Function(_QuestionAndAnswer) _then)
      : super(_value, (v) => _then(v as _QuestionAndAnswer));

  @override
  _QuestionAndAnswer get _value => super._value as _QuestionAndAnswer;

  @override
  $Res call({
    Object? question = freezed,
    Object? answer = freezed,
  }) {
    return _then(_QuestionAndAnswer(
      question == freezed
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as String,
      answer == freezed
          ? _value.answer
          : answer // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@HiveType(typeId: HiveTypes.questionAndAnswer)
class _$_QuestionAndAnswer implements _QuestionAndAnswer {
  _$_QuestionAndAnswer(@HiveField(0) this.question, @HiveField(1) this.answer);

  factory _$_QuestionAndAnswer.fromJson(Map<String, dynamic> json) =>
      _$_$_QuestionAndAnswerFromJson(json);

  @override
  @HiveField(0)
  final String question;
  @override
  @HiveField(1)
  final String answer;

  @override
  String toString() {
    return 'QuestionAndAnswer(question: $question, answer: $answer)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _QuestionAndAnswer &&
            (identical(other.question, question) ||
                const DeepCollectionEquality()
                    .equals(other.question, question)) &&
            (identical(other.answer, answer) ||
                const DeepCollectionEquality().equals(other.answer, answer)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(question) ^
      const DeepCollectionEquality().hash(answer);

  @JsonKey(ignore: true)
  @override
  _$QuestionAndAnswerCopyWith<_QuestionAndAnswer> get copyWith =>
      __$QuestionAndAnswerCopyWithImpl<_QuestionAndAnswer>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_QuestionAndAnswerToJson(this);
  }
}

abstract class _QuestionAndAnswer implements QuestionAndAnswer {
  factory _QuestionAndAnswer(
          @HiveField(0) String question, @HiveField(1) String answer) =
      _$_QuestionAndAnswer;

  factory _QuestionAndAnswer.fromJson(Map<String, dynamic> json) =
      _$_QuestionAndAnswer.fromJson;

  @override
  @HiveField(0)
  String get question => throw _privateConstructorUsedError;
  @override
  @HiveField(1)
  String get answer => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$QuestionAndAnswerCopyWith<_QuestionAndAnswer> get copyWith =>
      throw _privateConstructorUsedError;
}

QuestionAndAnswerResponse _$QuestionAndAnswerResponseFromJson(
    Map<String, dynamic> json) {
  return _QuestionAndAnswerResponse.fromJson(json);
}

/// @nodoc
class _$QuestionAndAnswerResponseTearOff {
  const _$QuestionAndAnswerResponseTearOff();

  _QuestionAndAnswerResponse call(
      @HiveField(0) List<QuestionAndAnswer> questionsAndAnswers) {
    return _QuestionAndAnswerResponse(
      questionsAndAnswers,
    );
  }

  QuestionAndAnswerResponse fromJson(Map<String, Object> json) {
    return QuestionAndAnswerResponse.fromJson(json);
  }
}

/// @nodoc
const $QuestionAndAnswerResponse = _$QuestionAndAnswerResponseTearOff();

/// @nodoc
mixin _$QuestionAndAnswerResponse {
  @HiveField(0)
  List<QuestionAndAnswer> get questionsAndAnswers =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $QuestionAndAnswerResponseCopyWith<QuestionAndAnswerResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuestionAndAnswerResponseCopyWith<$Res> {
  factory $QuestionAndAnswerResponseCopyWith(QuestionAndAnswerResponse value,
          $Res Function(QuestionAndAnswerResponse) then) =
      _$QuestionAndAnswerResponseCopyWithImpl<$Res>;
  $Res call({@HiveField(0) List<QuestionAndAnswer> questionsAndAnswers});
}

/// @nodoc
class _$QuestionAndAnswerResponseCopyWithImpl<$Res>
    implements $QuestionAndAnswerResponseCopyWith<$Res> {
  _$QuestionAndAnswerResponseCopyWithImpl(this._value, this._then);

  final QuestionAndAnswerResponse _value;
  // ignore: unused_field
  final $Res Function(QuestionAndAnswerResponse) _then;

  @override
  $Res call({
    Object? questionsAndAnswers = freezed,
  }) {
    return _then(_value.copyWith(
      questionsAndAnswers: questionsAndAnswers == freezed
          ? _value.questionsAndAnswers
          : questionsAndAnswers // ignore: cast_nullable_to_non_nullable
              as List<QuestionAndAnswer>,
    ));
  }
}

/// @nodoc
abstract class _$QuestionAndAnswerResponseCopyWith<$Res>
    implements $QuestionAndAnswerResponseCopyWith<$Res> {
  factory _$QuestionAndAnswerResponseCopyWith(_QuestionAndAnswerResponse value,
          $Res Function(_QuestionAndAnswerResponse) then) =
      __$QuestionAndAnswerResponseCopyWithImpl<$Res>;
  @override
  $Res call({@HiveField(0) List<QuestionAndAnswer> questionsAndAnswers});
}

/// @nodoc
class __$QuestionAndAnswerResponseCopyWithImpl<$Res>
    extends _$QuestionAndAnswerResponseCopyWithImpl<$Res>
    implements _$QuestionAndAnswerResponseCopyWith<$Res> {
  __$QuestionAndAnswerResponseCopyWithImpl(_QuestionAndAnswerResponse _value,
      $Res Function(_QuestionAndAnswerResponse) _then)
      : super(_value, (v) => _then(v as _QuestionAndAnswerResponse));

  @override
  _QuestionAndAnswerResponse get _value =>
      super._value as _QuestionAndAnswerResponse;

  @override
  $Res call({
    Object? questionsAndAnswers = freezed,
  }) {
    return _then(_QuestionAndAnswerResponse(
      questionsAndAnswers == freezed
          ? _value.questionsAndAnswers
          : questionsAndAnswers // ignore: cast_nullable_to_non_nullable
              as List<QuestionAndAnswer>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@HiveType(typeId: HiveTypes.questionAndAnswerResponse)
class _$_QuestionAndAnswerResponse implements _QuestionAndAnswerResponse {
  _$_QuestionAndAnswerResponse(@HiveField(0) this.questionsAndAnswers);

  factory _$_QuestionAndAnswerResponse.fromJson(Map<String, dynamic> json) =>
      _$_$_QuestionAndAnswerResponseFromJson(json);

  @override
  @HiveField(0)
  final List<QuestionAndAnswer> questionsAndAnswers;

  @override
  String toString() {
    return 'QuestionAndAnswerResponse(questionsAndAnswers: $questionsAndAnswers)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _QuestionAndAnswerResponse &&
            (identical(other.questionsAndAnswers, questionsAndAnswers) ||
                const DeepCollectionEquality()
                    .equals(other.questionsAndAnswers, questionsAndAnswers)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(questionsAndAnswers);

  @JsonKey(ignore: true)
  @override
  _$QuestionAndAnswerResponseCopyWith<_QuestionAndAnswerResponse>
      get copyWith =>
          __$QuestionAndAnswerResponseCopyWithImpl<_QuestionAndAnswerResponse>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_QuestionAndAnswerResponseToJson(this);
  }
}

abstract class _QuestionAndAnswerResponse implements QuestionAndAnswerResponse {
  factory _QuestionAndAnswerResponse(
          @HiveField(0) List<QuestionAndAnswer> questionsAndAnswers) =
      _$_QuestionAndAnswerResponse;

  factory _QuestionAndAnswerResponse.fromJson(Map<String, dynamic> json) =
      _$_QuestionAndAnswerResponse.fromJson;

  @override
  @HiveField(0)
  List<QuestionAndAnswer> get questionsAndAnswers =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$QuestionAndAnswerResponseCopyWith<_QuestionAndAnswerResponse>
      get copyWith => throw _privateConstructorUsedError;
}
