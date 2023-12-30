import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:mapo_travel_guide/data/network/models/error_response.dart';
import 'package:mapo_travel_guide/repository/auth_repository.dart';
import 'package:meta/meta.dart';

part 'register_cubit.freezed.dart';

part 'register_state.dart';

@injectable
class RegisterCubit extends Cubit<RegisterState> {
  final AuthRepository _authRepository;
  late String name;
  late String surname;
  late String email;
  late String passwordOne;
  late String passwordTwo;

  RegisterCubit(this._authRepository) : super(_Initial());

  Future<void> doRegisterWithCredentials() async {
    emit(_RegisterProcess());
    var result = await _authRepository.signUpWithCredentials(
      name,
      surname,
      email,
      passwordOne,
    );
    emit(result.fold(
      (err) => _RegisterError(err),
      (resp) => _RegisterSuccess(),
    ));
  }
}
