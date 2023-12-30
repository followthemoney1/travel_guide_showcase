import 'package:bloc/bloc.dart';
import 'package:connectivity/connectivity.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:mapo_travel_guide/data/db/hive_manager.dart';
import 'package:mapo_travel_guide/data/db/models/user.dart';
import 'package:mapo_travel_guide/data/network/models/error_response.dart';
import 'package:mapo_travel_guide/repository/profile_repository.dart';
import 'package:mapo_travel_guide/util/secure_storage_keys.dart';
import 'package:meta/meta.dart';

part 'edit_data_cubit.freezed.dart';

part 'edit_data_state.dart';

@injectable
class EditDataCubit extends Cubit<EditDataState> {
  final HiveBoxConfigurator<User> _userHiveRepository;
  final FlutterSecureStorage _securedStorage;
  final ProfileRepository _profileRepository;
  User? user;
  bool? subscribed;

  EditDataCubit(
    this._profileRepository,
    this._securedStorage,
    this._userHiveRepository,
  ) : super(_EditProcess());

  void initialization() async {
    var userEither = await _profileRepository.getUser();
    user = userEither.fold((err) => null, (resp) => resp);
    emit(_Initial());
    final response = await _profileRepository.checkSubscription();
    emit(response.fold((error) => _EditError(error), (success) {
      subscribed = success.subscribed;
      return _LoadedSubscription();
    }));
  }

  Future<void> deleteProfile() async {
    var connectivityResult = await (Connectivity().checkConnectivity());
    if (connectivityResult == ConnectivityResult.none) {
      emit(_NoNetworkConnection());
      return;
    }
    emit(_EditProcess());
    final response = await _profileRepository.deleteProfile();
    final emitPayload = response.fold((error) => _EditError(error), (success) {
      return _DeleteSuccess();
    });
    await _removeUserData();
    emit(emitPayload);
  }

  Future<void> _removeUserData() async {
    await _userHiveRepository.delete(0);
    await _securedStorage.delete(key: SecuredStorage.token);
    await _securedStorage.delete(key: SecuredStorage.refreshToken);
  }

  Future<void> subscribeToTheNewsletter() async {
    emit(_EditProcess());
    await Future.delayed(Duration(seconds: 5));
    final response = await _profileRepository.subscribeToTheNewsletter(!subscribed!);
    emit(response.fold((error) => _EditError(error), (success) {
      subscribed = !subscribed!;
      return _SubscribeSuccess();
    }));
  }

  Future<void> editProfile({
    required String name,
    required String surname,
    required String email,
    required String password,
    required String confirmedPassword,
    required String oldPassword,
  }) async {
    var connectivityResult = await (Connectivity().checkConnectivity());
    if (connectivityResult == ConnectivityResult.none) {
      emit(_NoNetworkConnection());
      return;
    }
    // if (password.isNotEmpty && confirmedPassword.isNotEmpty && oldPassword.isNotEmpty) {
    emit(_EditProcess());
    user = User(id: user!.id, username: name, surname: surname, email: email);
    final response = await _profileRepository.editProfile(
      name: name,
      email: email,
      surname: surname,
      password: password,
      confirmedPassword: confirmedPassword,
      oldPassword: oldPassword,
    );
    emit(response.fold((error) => _EditError(error), (success) {
      _userHiveRepository.put(0, user!);
      return _EditSuccess();
    }));
    // }
  }
}
