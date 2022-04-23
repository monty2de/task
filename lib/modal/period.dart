import 'package:freezed_annotation/freezed_annotation.dart';

part 'period.freezed.dart';
part 'period.g.dart';

@freezed
class Period with _$Period {
  factory Period({
    required String id,
    // ignore: non_constant_identifier_names
    required String start_time,
    // ignore: non_constant_identifier_names
    required String end_time,
    String? name,


  
  
  }) = _Period;

  factory Period.fromJson(Map<String, dynamic> json) =>
      _$PeriodFromJson(json);

  static Period fromJsonModel(dynamic json) => Period.fromJson(json);
}