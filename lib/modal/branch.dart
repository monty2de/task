import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:task/modal/department.dart';

part 'branch.freezed.dart';
part 'branch.g.dart';

@freezed
class Branch with _$Branch {
  factory Branch({
    required String id,
    required String name,
    required Department department,
  
  
  }) = _Branch;

  factory Branch.fromJson(Map<String, dynamic> json) =>
      _$BranchFromJson(json);

  static Branch fromJsonModel(dynamic json) => Branch.fromJson(json);
}