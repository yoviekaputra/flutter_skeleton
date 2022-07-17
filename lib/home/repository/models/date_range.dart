import 'package:freezed_annotation/freezed_annotation.dart';

part 'date_range.freezed.dart';
part 'date_range.g.dart';
/// Created by yovi.putra on 17/07/22"
/// Project name: movie_app

@freezed
class DateRange with _$DateRange {
  const factory DateRange(
      {@JsonKey(name: "maximum") required String max,
        @JsonKey(name: "minimum") required String min}) = _DateRange;

  factory DateRange.fromJson(Map<String, Object?> json) =>
      _$DateRangeFromJson(json);
}
