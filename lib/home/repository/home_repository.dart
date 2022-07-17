import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:movie_app/home/repository/models/movie_list_response.dart';

/// Created by yovi.putra on 16/07/22"
/// Project name: movie_app

abstract class HomeRepository {
  Future<MovieListResponse> getMovie();
}

class HomeRepositoryImpl implements HomeRepository {
  final Dio dio = Dio();
  final baseUrl = "https://api.themoviedb.org/";
  final apiKey = "86d642a80186fd867574108f0eb92977";

  @override
  Future<MovieListResponse> getMovie() async {
    final response = await dio.get("${baseUrl}3/movie/upcoming?api_key=$apiKey&page=1");

    return MovieListResponse.fromJson(response.data);
  }
}