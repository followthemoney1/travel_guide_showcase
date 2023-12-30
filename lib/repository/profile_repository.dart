import 'package:auto_route/auto_route.dart';
import 'package:either_option/either_option.dart';
import 'package:injectable/injectable.dart';
import 'package:mapo_travel_guide/data/db/hive_manager.dart';
import 'package:mapo_travel_guide/data/db/models/user.dart';
import 'package:mapo_travel_guide/data/network/models/error_response.dart';
import 'package:mapo_travel_guide/data/network/models/profile.dart';
import 'package:mapo_travel_guide/data/network/models/questions_and_answers.dart';
import 'package:mapo_travel_guide/data/network/models/subscription_response.dart';
import 'package:mapo_travel_guide/data/network/profile_api_client.dart';

@singleton
class ProfileRepository {
  final ProfileApiClient _api;
  final HiveBoxConfigurator<FavoritesResponse> _favoriteToursBoxManager;
  final HiveBoxConfigurator<User> _userBoxManager;
  final HiveBoxConfigurator<UserPromocodesResponse> _userPromocodesBoxManager;
  final HiveBoxConfigurator<QuestionAndAnswerResponse> _questionAndAnswerResponseBoxManager;

  ProfileRepository(
    this._api,
    this._userBoxManager,
    this._favoriteToursBoxManager,
    this._userPromocodesBoxManager,
    this._questionAndAnswerResponseBoxManager,
  );

  Future<Either<ErrorResponse, bool>> deleteProfile() async {
    return _api.deleteProfile();
  }

  Future<Either<ErrorResponse, MeResponse>> getMyInfo() async {
    return _api.getMyInfo();
  }

  Future<Either<ErrorResponse, User>> getUser() async {
    var myInfo = await _api.getMyInfo();
    return myInfo.fold((err) {
      var user = _userBoxManager.get(0);
      if (user != null) {
        return Right(user);
      }
      return Left(err);
    }, (resp) {
      var user = User(
        id: '${resp.id}',
        email: resp.email,
        surname: resp.surname,
        username: resp.name,
      );
      _userBoxManager.put(0, user);
      return Right(user);
    });
  }

  Future<Either<ErrorResponse, bool>> subscribeToTheNewsletter(bool subscribe) async {
    return _api.subscribeToTheNewsletter(subscribe);
  }

  Future<Either<ErrorResponse, bool>> editProfile({
    required String name,
    required String surname,
    required String email,
    required String password,
    required String confirmedPassword,
    required String oldPassword,
  }) async {
    final either = await _api.editProfile(
      name: name,
      surname: surname,
      email: email,
      password: password,
      confirmedPassword: confirmedPassword,
      oldPassword: oldPassword,
    );

    return either.fold((error) => Left(error), (resp) => Right(resp));
  }

  Future<Either<ErrorResponse, SubscriptionResponse>> checkSubscription() async {
    return _api.checkSubscription();
  }

  Future<Either<ErrorResponse, FavoritesResponse>> getFavoritesList() async {
    final response = await _api.getFavoritesList();
    return response.fold((error) {
      var favoritesResponse = _favoriteToursBoxManager.get(0);
      if (favoritesResponse != null) {
        favoritesResponse.favoriteTours;
        return Right(favoritesResponse);
      }
      return Left(error);
    }, (result) {
      _favoriteToursBoxManager.put(0, result);
      return Right(result);
    });
  }

  Future<Either<ErrorResponse, UserPromocodesResponse>> getPromocodes() async {
    final response = await _api.getPromocodes();
    return response.fold((error) {
      var userPromocodesResponse = _userPromocodesBoxManager.get(0);
      if (userPromocodesResponse != null) {
        return Right(userPromocodesResponse);
      }
      return Left(error);
    }, (result) {
      _userPromocodesBoxManager.put(0, result);
      return Right(result);
    });
  }

  Future<Either<ErrorResponse, QuestionAndAnswerResponse>> getQuestionsAndAnswers() async {
    final questionsAndAnswers = await _api.getQuestionsAndAnswers();
    return questionsAndAnswers.fold((err) {
      var questionAndAnswerResponse = _questionAndAnswerResponseBoxManager.get(0);
      if (questionAndAnswerResponse == null) {
        return Left(err);
      }
      return Right(questionAndAnswerResponse);
    }, (response) {
      _questionAndAnswerResponseBoxManager.put(0, response);
      return Right(response);
    });
  }
}
