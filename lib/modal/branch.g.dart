// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'branch.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

// ignore: non_constant_identifier_names
_$_Branch _$$_BranchFromJson(Map<String, dynamic> json) => _$_Branch(
      id: json['id'] as String,
      name: json['name'] as String,
      department:
          Department.fromJson(json['department'] as Map<String, dynamic>),
    );

// ignore: non_constant_identifier_names
Map<String, dynamic> _$$_BranchToJson(_$_Branch instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'department': instance.department,
    };
