import 'package:get/get.dart';

import '../controller/home_controller.dart';

/// Created by yovi.putra on 17/07/22"
/// Project name: movie_app

class HomeBinding implements Bindings {

  @override
  void dependencies() {
    Get.lazyPut(() => HomeController());
  }
}