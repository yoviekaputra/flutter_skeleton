import 'package:get/get.dart';
import 'package:movie_app/resources/locale_extension.dart';

import 'dictionary_type.dart';

/// Created by yovi.putra on 17/07/22"
/// Project name: movie_app

class Dictionary extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
    DictionaryType.id.getId(): {
      'title': 'Halo Dunia dari Indonesia',
    },
    DictionaryType.enUS.getId(): {
      'title': 'Hello World from US',
    },
    DictionaryType.en.getId(): {
      'title': 'Hello World',
    },
  };
}
