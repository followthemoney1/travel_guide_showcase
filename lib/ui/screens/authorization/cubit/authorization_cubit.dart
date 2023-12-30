import 'package:bloc/bloc.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:mapo_travel_guide/data/network/models/error_response.dart';
import 'package:mapo_travel_guide/repository/auth_repository.dart';
import 'package:mapo_travel_guide/util/secure_storage_keys.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'authorization_state.dart';
part 'authorization_cubit.freezed.dart';

@singleton
class AuthorizationCubit extends Cubit<AuthorizationState> {
  final AuthRepository _authRepository;
  final FlutterSecureStorage _securedStorage;
  late String email;
  late String password;

  AuthorizationCubit(
    this._authRepository,
    this._securedStorage,
  ) : super(_Initial());

  Future<void> doSignInWithCredentials() async {
    emit(_AuthProcess());
    final result = await _authRepository.signInWithCredentials(email, password);
    emit(result.fold(
      (err) => _AuthError(err),
      (resp) => _AuthSuccess(),
    ));
  }

  Future<void> removeToken() async {
    await _securedStorage.delete(key: SecuredStorage.token);
  }

  Future<void> doSignInWithApple() async {
    var signInWithApple = await _authRepository.signInWithApple();
    emit(_AuthProcess());
    emit(signInWithApple.fold(
      (err) => _AuthError(err),
      (resp) => _AuthSuccess(),
    ));
  }
}
