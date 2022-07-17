import 'package:freezed_annotation/freezed_annotation.dart';

part 'movie_response.freezed.dart';
part 'movie_response.g.dart';
/// Created by yovi.putra on 17/07/22"
/// Project name: movie_app

@freezed
class MovieResponse with _$MovieResponse {
  const factory MovieResponse(
      {@JsonKey(name: "vote_count") required int voteCount,
        @JsonKey(name: "id") required int id,
        @JsonKey(name: "video") required bool video,
        @JsonKey(name: "vote_average") required double voteAverage,
        @JsonKey(name: "title") required String title,
        @JsonKey(name: "popularity") required double popularity,
        @JsonKey(name: "poster_path") required String posterPath,
        @JsonKey(name: "original_language") required String originalLanguage,
        @JsonKey(name: "original_title") required String originalTitle,
        @JsonKey(name: "backdrop_path") required String backdropPath,
        @JsonKey(name: "adult") required bool adult,
        @JsonKey(name: "overview") required String overview,
        @JsonKey(name: "release_date") required String releaseDate}) =
  _MovieResponse;

  factory MovieResponse.fromJson(
      Map<String, Object?> json
      ) => _$MovieResponseFromJson(json);
}
