// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stage.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

// ignore: non_constant_identifier_names
_$_stage _$$_stageFromJson(Map<String, dynamic> json) => _$_stage(
      id: json['id'] as String,
      name: json['name'] as String,
      branch_id: json['branch_id'] as String,
      shift: json['shift'] as String,
      level: json['level'] as int,
      branch: Branch.fromJson(json['branch'] as Map<String, dynamic>),
    );

// ignore: non_constant_identifier_names
Map<String, dynamic> _$$_stageToJson(_$_stage instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'branch_id': instance.branch_id,
      'shift': instance.shift,
      'level': instance.level,
      'branch': instance.branch,
    };
