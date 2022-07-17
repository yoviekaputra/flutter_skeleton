import 'package:freezed_annotation/freezed_annotation.dart';

/// Created by yovi.putra on 16/07/22"
/// Project name: movie_app

@freezed
class MovieResponse with _$MovieResponse {
  const factory MovieResponse(String name) = _MovieResponse;
}
