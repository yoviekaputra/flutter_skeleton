import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movie_app/home/presentation/bindings/home_binding.dart';
import 'package:movie_app/resources/dictionary.dart';
import 'package:movie_app/resources/dictionary_type.dart';

import 'home/presentation/home_page.dart';

/// Created by yovi.putra on 16/07/22"
/// Project name: movie_app

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        title: 'Flutter Demo',
        initialRoute: "/home",
        getPages: [
          GetPage(
              name: "/home",
              page: () => MyHomePage(title: "title".tr),
              binding: HomeBinding())
        ],
        defaultTransition: Transition.native,
        translations: Dictionary(),
        locale: DictionaryType.enUS,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ));
  }
}