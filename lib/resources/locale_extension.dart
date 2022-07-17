import 'dart:ui';

import 'package:get/get.dart';

/// Created by yovi.putra on 17/07/22"
/// Project name: movie_app

extension LocaleExtension on Locale {

  String getId() {
    String id;
    if (countryCode?.isNotEmpty == true) {
      id = "${languageCode}_${countryCode ?? ""}";
    } else {
      id = languageCode;
    }

    return id;
  }
}
