import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:mapo_travel_guide/data/dto/language/language.dart';
import 'package:mapo_travel_guide/data/network/models/filter_response.dart';
import 'package:mapo_travel_guide/repository/main_repository.dart';
import 'package:mapo_travel_guide/util/full_languages.dart';

part 'languages_bottom_sheet_cubit.freezed.dart';

part 'languages_bottom_sheet_state.dart';

@injectable
class LanguagesBottomSheetCubit extends Cubit<LanguagesBottomSheetState> {
  final MainRepository _mainRepository;
  List<LanguageCode>? languageCodes;

  LanguagesBottomSheetCubit(this._mainRepository) : super(_Loading());

  Set<Language> get languages =>
      languageCodes
          ?.map(
            (langCode) => Language(
              id: langCode.languageCode,
              name: FullLang.getFullName(langCode.languageCode, nativeName: true),
              flagPath: langCode.flag,
            ),
          )
          .toSet() ??
      {};

  Future<void> getAllLanguages() async {
    var response = await _mainRepository.getAllLanguages();

    response.fold((e) {}, (res) {
      languageCodes = res.languageCodes;
      emit(_Initial());
    });
  }
}
