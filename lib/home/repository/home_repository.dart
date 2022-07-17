import 'package:dio/dio.dart';
import 'package:get/get.dart';

/// Created by yovi.putra on 16/07/22"
/// Project name: movie_app

abstract class HomeRepository {
  Future<String> getMovie();
}

class HomeRepositoryImpl implements HomeRepository {
  final Dio dio = Get.put(Dio());

  @override
  Future<String> getMovie() async {
    final response = await dio.get("");
    return response.data;
  }
}