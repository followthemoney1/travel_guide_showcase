import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:mapo_travel_guide/data/network/models/error_response.dart';
import 'package:mapo_travel_guide/repository/auth_repository.dart';

part 'recovery_password_state.dart';
part 'recovery_password_cubit.freezed.dart';

@singleton
class RecoveryPasswordCubit extends Cubit<RecoveryPasswordState> {
  final AuthRepository _authRepository;
  RecoveryPasswordCubit(this._authRepository) : super(_Initial());

  String? email;

  Future<void> sendVerificationCode() async {
    emit(_Loading());
    final result = await _authRepository.resetUserPassword(email!);
    print('sendVerificationCode $result');
    emit(result.fold(
      (err) => _Error(err),
      (resp) => resp ? _SentSms() : _Error(ErrorResponse(0, '')),
    ));
  }

  void initialState() {
    emit(_Initial());
  }
}
