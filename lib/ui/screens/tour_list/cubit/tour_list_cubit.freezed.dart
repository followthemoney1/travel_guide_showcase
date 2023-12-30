// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'tour_list_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$TourListStateTearOff {
  const _$TourListStateTearOff();

  _Initial initial(List<Tour> tours) {
    return _Initial(
      tours,
    );
  }

  _Loading loading() {
    return const _Loading();
  }

  _HideInfoDialog hideInfoDialog() {
    return const _HideInfoDialog();
  }

  _Error error(ErrorResponse error) {
    return _Error(
      error,
    );
  }

  _ShowInfoDialog showInfoDialog(Set<Language> selectedByUser,
      Set<Language> intersection, Set<Language> difference) {
    return _ShowInfoDialog(
      selectedByUser,
      intersection,
      difference,
    );
  }
}

/// @nodoc
const $TourListState = _$TourListStateTearOff();

/// @nodoc
mixin _$TourListState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Tour> tours) initial,
    required TResult Function() loading,
    required TResult Function() hideInfoDialog,
    required TResult Function(ErrorResponse error) error,
    required TResult Function(Set<Language> selectedByUser,
            Set<Language> intersection, Set<Language> difference)
        showInfoDialog,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Tour> tours)? initial,
    TResult Function()? loading,
    TResult Function()? hideInfoDialog,
    TResult Function(ErrorResponse error)? error,
    TResult Function(Set<Language> selectedByUser, Set<Language> intersection,
            Set<Language> difference)?
        showInfoDialog,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_HideInfoDialog value) hideInfoDialog,
    required TResult Function(_Error value) error,
    required TResult Function(_ShowInfoDialog value) showInfoDialog,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_HideInfoDialog value)? hideInfoDialog,
    TResult Function(_Error value)? error,
    TResult Function(_ShowInfoDialog value)? showInfoDialog,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TourListStateCopyWith<$Res> {
  factory $TourListStateCopyWith(
          TourListState value, $Res Function(TourListState) then) =
      _$TourListStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$TourListStateCopyWithImpl<$Res>
    implements $TourListStateCopyWith<$Res> {
  _$TourListStateCopyWithImpl(this._value, this._then);

  final TourListState _value;
  // ignore: unused_field
  final $Res Function(TourListState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
  $Res call({List<Tour> tours});
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$TourListStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;

  @override
  $Res call({
    Object? tours = freezed,
  }) {
    return _then(_Initial(
      tours == freezed
          ? _value.tours
          : tours // ignore: cast_nullable_to_non_nullable
              as List<Tour>,
    ));
  }
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial(this.tours);

  @override
  final List<Tour> tours;

  @override
  String toString() {
    return 'TourListState.initial(tours: $tours)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Initial &&
            (identical(other.tours, tours) ||
                const DeepCollectionEquality().equals(other.tours, tours)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(tours);

  @JsonKey(ignore: true)
  @override
  _$InitialCopyWith<_Initial> get copyWith =>
      __$InitialCopyWithImpl<_Initial>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Tour> tours) initial,
    required TResult Function() loading,
    required TResult Function() hideInfoDialog,
    required TResult Function(ErrorResponse error) error,
    required TResult Function(Set<Language> selectedByUser,
            Set<Language> intersection, Set<Language> difference)
        showInfoDialog,
  }) {
    return initial(tours);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Tour> tours)? initial,
    TResult Function()? loading,
    TResult Function()? hideInfoDialog,
    TResult Function(ErrorResponse error)? error,
    TResult Function(Set<Language> selectedByUser, Set<Language> intersection,
            Set<Language> difference)?
        showInfoDialog,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(tours);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_HideInfoDialog value) hideInfoDialog,
    required TResult Function(_Error value) error,
    required TResult Function(_ShowInfoDialog value) showInfoDialog,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_HideInfoDialog value)? hideInfoDialog,
    TResult Function(_Error value)? error,
    TResult Function(_ShowInfoDialog value)? showInfoDialog,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements TourListState {
  const factory _Initial(List<Tour> tours) = _$_Initial;

  List<Tour> get tours => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$InitialCopyWith<_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$LoadingCopyWith<$Res> {
  factory _$LoadingCopyWith(_Loading value, $Res Function(_Loading) then) =
      __$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadingCopyWithImpl<$Res> extends _$TourListStateCopyWithImpl<$Res>
    implements _$LoadingCopyWith<$Res> {
  __$LoadingCopyWithImpl(_Loading _value, $Res Function(_Loading) _then)
      : super(_value, (v) => _then(v as _Loading));

  @override
  _Loading get _value => super._value as _Loading;
}

/// @nodoc

class _$_Loading implements _Loading {
  const _$_Loading();

  @override
  String toString() {
    return 'TourListState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Tour> tours) initial,
    required TResult Function() loading,
    required TResult Function() hideInfoDialog,
    required TResult Function(ErrorResponse error) error,
    required TResult Function(Set<Language> selectedByUser,
            Set<Language> intersection, Set<Language> difference)
        showInfoDialog,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Tour> tours)? initial,
    TResult Function()? loading,
    TResult Function()? hideInfoDialog,
    TResult Function(ErrorResponse error)? error,
    TResult Function(Set<Language> selectedByUser, Set<Language> intersection,
            Set<Language> difference)?
        showInfoDialog,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_HideInfoDialog value) hideInfoDialog,
    required TResult Function(_Error value) error,
    required TResult Function(_ShowInfoDialog value) showInfoDialog,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_HideInfoDialog value)? hideInfoDialog,
    TResult Function(_Error value)? error,
    TResult Function(_ShowInfoDialog value)? showInfoDialog,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements TourListState {
  const factory _Loading() = _$_Loading;
}

/// @nodoc
abstract class _$HideInfoDialogCopyWith<$Res> {
  factory _$HideInfoDialogCopyWith(
          _HideInfoDialog value, $Res Function(_HideInfoDialog) then) =
      __$HideInfoDialogCopyWithImpl<$Res>;
}

/// @nodoc
class __$HideInfoDialogCopyWithImpl<$Res>
    extends _$TourListStateCopyWithImpl<$Res>
    implements _$HideInfoDialogCopyWith<$Res> {
  __$HideInfoDialogCopyWithImpl(
      _HideInfoDialog _value, $Res Function(_HideInfoDialog) _then)
      : super(_value, (v) => _then(v as _HideInfoDialog));

  @override
  _HideInfoDialog get _value => super._value as _HideInfoDialog;
}

/// @nodoc

class _$_HideInfoDialog implements _HideInfoDialog {
  const _$_HideInfoDialog();

  @override
  String toString() {
    return 'TourListState.hideInfoDialog()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _HideInfoDialog);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Tour> tours) initial,
    required TResult Function() loading,
    required TResult Function() hideInfoDialog,
    required TResult Function(ErrorResponse error) error,
    required TResult Function(Set<Language> selectedByUser,
            Set<Language> intersection, Set<Language> difference)
        showInfoDialog,
  }) {
    return hideInfoDialog();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Tour> tours)? initial,
    TResult Function()? loading,
    TResult Function()? hideInfoDialog,
    TResult Function(ErrorResponse error)? error,
    TResult Function(Set<Language> selectedByUser, Set<Language> intersection,
            Set<Language> difference)?
        showInfoDialog,
    required TResult orElse(),
  }) {
    if (hideInfoDialog != null) {
      return hideInfoDialog();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_HideInfoDialog value) hideInfoDialog,
    required TResult Function(_Error value) error,
    required TResult Function(_ShowInfoDialog value) showInfoDialog,
  }) {
    return hideInfoDialog(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_HideInfoDialog value)? hideInfoDialog,
    TResult Function(_Error value)? error,
    TResult Function(_ShowInfoDialog value)? showInfoDialog,
    required TResult orElse(),
  }) {
    if (hideInfoDialog != null) {
      return hideInfoDialog(this);
    }
    return orElse();
  }
}

abstract class _HideInfoDialog implements TourListState {
  const factory _HideInfoDialog() = _$_HideInfoDialog;
}

/// @nodoc
abstract class _$ErrorCopyWith<$Res> {
  factory _$ErrorCopyWith(_Error value, $Res Function(_Error) then) =
      __$ErrorCopyWithImpl<$Res>;
  $Res call({ErrorResponse error});

  $ErrorResponseCopyWith<$Res> get error;
}

/// @nodoc
class __$ErrorCopyWithImpl<$Res> extends _$TourListStateCopyWithImpl<$Res>
    implements _$ErrorCopyWith<$Res> {
  __$ErrorCopyWithImpl(_Error _value, $Res Function(_Error) _then)
      : super(_value, (v) => _then(v as _Error));

  @override
  _Error get _value => super._value as _Error;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_Error(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as ErrorResponse,
    ));
  }

  @override
  $ErrorResponseCopyWith<$Res> get error {
    return $ErrorResponseCopyWith<$Res>(_value.error, (value) {
      return _then(_value.copyWith(error: value));
    });
  }
}

/// @nodoc

class _$_Error implements _Error {
  const _$_Error(this.error);

  @override
  final ErrorResponse error;

  @override
  String toString() {
    return 'TourListState.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Error &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @JsonKey(ignore: true)
  @override
  _$ErrorCopyWith<_Error> get copyWith =>
      __$ErrorCopyWithImpl<_Error>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Tour> tours) initial,
    required TResult Function() loading,
    required TResult Function() hideInfoDialog,
    required TResult Function(ErrorResponse error) error,
    required TResult Function(Set<Language> selectedByUser,
            Set<Language> intersection, Set<Language> difference)
        showInfoDialog,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Tour> tours)? initial,
    TResult Function()? loading,
    TResult Function()? hideInfoDialog,
    TResult Function(ErrorResponse error)? error,
    TResult Function(Set<Language> selectedByUser, Set<Language> intersection,
            Set<Language> difference)?
        showInfoDialog,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_HideInfoDialog value) hideInfoDialog,
    required TResult Function(_Error value) error,
    required TResult Function(_ShowInfoDialog value) showInfoDialog,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_HideInfoDialog value)? hideInfoDialog,
    TResult Function(_Error value)? error,
    TResult Function(_ShowInfoDialog value)? showInfoDialog,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements TourListState {
  const factory _Error(ErrorResponse error) = _$_Error;

  ErrorResponse get error => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ErrorCopyWith<_Error> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ShowInfoDialogCopyWith<$Res> {
  factory _$ShowInfoDialogCopyWith(
          _ShowInfoDialog value, $Res Function(_ShowInfoDialog) then) =
      __$ShowInfoDialogCopyWithImpl<$Res>;
  $Res call(
      {Set<Language> selectedByUser,
      Set<Language> intersection,
      Set<Language> difference});
}

/// @nodoc
class __$ShowInfoDialogCopyWithImpl<$Res>
    extends _$TourListStateCopyWithImpl<$Res>
    implements _$ShowInfoDialogCopyWith<$Res> {
  __$ShowInfoDialogCopyWithImpl(
      _ShowInfoDialog _value, $Res Function(_ShowInfoDialog) _then)
      : super(_value, (v) => _then(v as _ShowInfoDialog));

  @override
  _ShowInfoDialog get _value => super._value as _ShowInfoDialog;

  @override
  $Res call({
    Object? selectedByUser = freezed,
    Object? intersection = freezed,
    Object? difference = freezed,
  }) {
    return _then(_ShowInfoDialog(
      selectedByUser == freezed
          ? _value.selectedByUser
          : selectedByUser // ignore: cast_nullable_to_non_nullable
              as Set<Language>,
      intersection == freezed
          ? _value.intersection
          : intersection // ignore: cast_nullable_to_non_nullable
              as Set<Language>,
      difference == freezed
          ? _value.difference
          : difference // ignore: cast_nullable_to_non_nullable
              as Set<Language>,
    ));
  }
}

/// @nodoc

class _$_ShowInfoDialog implements _ShowInfoDialog {
  const _$_ShowInfoDialog(
      this.selectedByUser, this.intersection, this.difference);

  @override
  final Set<Language> selectedByUser;
  @override
  final Set<Language> intersection;
  @override
  final Set<Language> difference;

  @override
  String toString() {
    return 'TourListState.showInfoDialog(selectedByUser: $selectedByUser, intersection: $intersection, difference: $difference)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ShowInfoDialog &&
            (identical(other.selectedByUser, selectedByUser) ||
                const DeepCollectionEquality()
                    .equals(other.selectedByUser, selectedByUser)) &&
            (identical(other.intersection, intersection) ||
                const DeepCollectionEquality()
                    .equals(other.intersection, intersection)) &&
            (identical(other.difference, difference) ||
                const DeepCollectionEquality()
                    .equals(other.difference, difference)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(selectedByUser) ^
      const DeepCollectionEquality().hash(intersection) ^
      const DeepCollectionEquality().hash(difference);

  @JsonKey(ignore: true)
  @override
  _$ShowInfoDialogCopyWith<_ShowInfoDialog> get copyWith =>
      __$ShowInfoDialogCopyWithImpl<_ShowInfoDialog>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Tour> tours) initial,
    required TResult Function() loading,
    required TResult Function() hideInfoDialog,
    required TResult Function(ErrorResponse error) error,
    required TResult Function(Set<Language> selectedByUser,
            Set<Language> intersection, Set<Language> difference)
        showInfoDialog,
  }) {
    return showInfoDialog(selectedByUser, intersection, difference);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Tour> tours)? initial,
    TResult Function()? loading,
    TResult Function()? hideInfoDialog,
    TResult Function(ErrorResponse error)? error,
    TResult Function(Set<Language> selectedByUser, Set<Language> intersection,
            Set<Language> difference)?
        showInfoDialog,
    required TResult orElse(),
  }) {
    if (showInfoDialog != null) {
      return showInfoDialog(selectedByUser, intersection, difference);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_HideInfoDialog value) hideInfoDialog,
    required TResult Function(_Error value) error,
    required TResult Function(_ShowInfoDialog value) showInfoDialog,
  }) {
    return showInfoDialog(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_HideInfoDialog value)? hideInfoDialog,
    TResult Function(_Error value)? error,
    TResult Function(_ShowInfoDialog value)? showInfoDialog,
    required TResult orElse(),
  }) {
    if (showInfoDialog != null) {
      return showInfoDialog(this);
    }
    return orElse();
  }
}

abstract class _ShowInfoDialog implements TourListState {
  const factory _ShowInfoDialog(Set<Language> selectedByUser,
      Set<Language> intersection, Set<Language> difference) = _$_ShowInfoDialog;

  Set<Language> get selectedByUser => throw _privateConstructorUsedError;
  Set<Language> get intersection => throw _privateConstructorUsedError;
  Set<Language> get difference => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ShowInfoDialogCopyWith<_ShowInfoDialog> get copyWith =>
      throw _privateConstructorUsedError;
}
