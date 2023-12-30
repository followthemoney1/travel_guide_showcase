import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:mapo_travel_guide/data/db/hive_manager.dart';
import 'package:mapo_travel_guide/data/db/models/user.dart';
import 'package:mapo_travel_guide/data/network/models/error_response.dart';
import 'package:mapo_travel_guide/repository/auth_repository.dart';
import 'package:mapo_travel_guide/routes/routes.gr.dart';
import 'package:mapo_travel_guide/util/secure_storage_keys.dart';
import 'package:meta/meta.dart';

part 'profile_main_cubit.freezed.dart';
part 'profile_main_state.dart';

@lazySingleton
class ProfileMainCubit extends Cubit<ProfileMainState> {
  final HiveBoxConfigurator<User> _userBoxConfigurator;
  final FlutterSecureStorage _securedStorage;
  final AuthRepository _authRepository;
  ProfileMainCubit(this._userBoxConfigurator, this._securedStorage, this._authRepository) : super(_Initial());

  Future<void> logout() async {
    emit(_Loading());
    final either = await _authRepository.logout();
    either.fold(
      (err) {
        _proceedLogout();
      },
      (_) {
        _proceedLogout();
        emit(_Initial());
      },
    );
  }

  void _proceedLogout() async {
    await _userBoxConfigurator.delete(0);
    await _securedStorage.delete(key: SecuredStorage.token);
    await _securedStorage.delete(key: SecuredStorage.refreshToken);
    emit(_ProceedLogout());
  }

  bool userExist() {
    return _userBoxConfigurator.isNotEmpty;
  }
}
