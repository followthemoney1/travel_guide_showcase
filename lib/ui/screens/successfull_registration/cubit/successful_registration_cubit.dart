import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:mapo_travel_guide/data/network/models/error_response.dart';
import 'package:mapo_travel_guide/repository/auth_repository.dart';

part 'successful_registration_state.dart';

part 'successful_registration_cubit.freezed.dart';

@singleton
class SuccessfulRegistrationCubit extends Cubit<SuccessfulRegistrationState> {
  final AuthRepository _authRepository;

  SuccessfulRegistrationCubit(this._authRepository) : super(_Initial());

  String? verificationCode;
  late Timer _timer;

  Future<void> checkCode(String code) async {
    emit(_Loading());
    var result = await _authRepository.verifyUser(code);
    emit(result.fold(
      (err) => _Error(err),
      (resp) => resp ? _Success() : _Error(ErrorResponse(0, '')),
    ));
  }

  Future<void> resendCode() async {
    // emit(_Loading());
    startTimer();
    final result = await _authRepository.resendCode();
    emit(result.fold(
      (err) => _Error(err),
      (resp) => _CodeResentSuccess(),
    ));
  }

  void startTimer() {
    var duration = Duration(
      minutes: 3,
      // seconds: 5,
    );
    emit(_LeftUntilResendingCode(duration));
    _timer = Timer.periodic(Duration(seconds: 1), (time) {
      duration -= Duration(seconds: 1);
      if (duration.isNegative) {
        time.cancel();
        emit(_CodeCanResend());
      } else {
        emit(_LeftUntilResendingCode(duration));
      }
    });
  }

  void stopTimer() {
    _timer.cancel();
  }
}
