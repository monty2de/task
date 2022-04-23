import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:task/modal/branch.dart';

part 'stage.freezed.dart';
part 'stage.g.dart';

@freezed
// ignore: camel_case_types
class stage with _$stage {
  factory stage({
    required String id,
    required String name,
    // ignore: non_constant_identifier_names
    required String branch_id,
    required String shift,
    required int level,
    required Branch branch,
  
  
  }) = _stage;

  factory stage.fromJson(Map<String, dynamic> json) =>
      _$stageFromJson(json);

  static stage fromJsonModel(dynamic json) => stage.fromJson(json);
}