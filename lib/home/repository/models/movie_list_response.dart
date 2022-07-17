import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:movie_app/home/repository/models/date_range.dart';

import 'movie_response.dart';

part 'movie_list_response.freezed.dart';
part 'movie_list_response.g.dart';
/// Created by yovi.putra on 16/07/22"
/// Project name: movie_app

@freezed
class MovieListResponse with _$MovieListResponse {
  const factory MovieListResponse(
      {@JsonKey(name: "page") required int? page,
        @JsonKey(name: "results") required List<MovieResponse> results,
        @JsonKey(name: "total_pages") required int? totalPages,
        @JsonKey(name: "total_results") required int? totalResults,
        @JsonKey(name: "dates") required DateRange dates}) = _MovieListResponse;

  factory MovieListResponse.fromJson(Map<String, Object?> json) =>
      _$MovieListResponseFromJson(json);
}
