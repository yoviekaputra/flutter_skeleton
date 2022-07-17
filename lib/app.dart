import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/route_manager.dart';
import 'package:movie_app/home/presentation/bindings/home_binding.dart';
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
            binding: HomeBinding()
          )
        ],
        defaultTransition: Transition.native,
        translations: MyTranslations(),
        locale: const Locale('pt', 'BR'),
        theme: ThemeData(
          primarySwatch: Colors.blue,
        )
    );
  }
}

class MyTranslations extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
    'en': {
      'title': 'Hello World %s',
    },
    'en_US': {
      'title': 'Hello World from US',
    },
    'pt': {
      'title': 'Olá de Portugal',
    },
    'pt_BR': {
      'title': 'Olá do Brasil',
    },
  };
}
