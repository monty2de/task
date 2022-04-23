// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'stage.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

stage _$stageFromJson(Map<String, dynamic> json) {
  return _stage.fromJson(json);
}

/// @nodoc
mixin _$stage {
  String get id => throw _privateConstructorUsedError;
  String get name =>
      throw _privateConstructorUsedError; // ignore: non_constant_identifier_names
  String get branch_id => throw _privateConstructorUsedError;
  String get shift => throw _privateConstructorUsedError;
  int get level => throw _privateConstructorUsedError;
  Branch get branch => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $stageCopyWith<stage> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $stageCopyWith<$Res> {
  factory $stageCopyWith(stage value, $Res Function(stage) then) =
      _$stageCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String name,
      String branch_id,
      String shift,
      int level,
      Branch branch});

  $BranchCopyWith<$Res> get branch;
}

/// @nodoc
class _$stageCopyWithImpl<$Res> implements $stageCopyWith<$Res> {
  _$stageCopyWithImpl(this._value, this._then);

  final stage _value;
  // ignore: unused_field
  final $Res Function(stage) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? branch_id = freezed,
    Object? shift = freezed,
    Object? level = freezed,
    Object? branch = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      branch_id: branch_id == freezed
          ? _value.branch_id
          : branch_id // ignore: cast_nullable_to_non_nullable
              as String,
      shift: shift == freezed
          ? _value.shift
          : shift // ignore: cast_nullable_to_non_nullable
              as String,
      level: level == freezed
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as int,
      branch: branch == freezed
          ? _value.branch
          : branch // ignore: cast_nullable_to_non_nullable
              as Branch,
    ));
  }

  @override
  $BranchCopyWith<$Res> get branch {
    return $BranchCopyWith<$Res>(_value.branch, (value) {
      return _then(_value.copyWith(branch: value));
    });
  }
}

/// @nodoc
abstract class _$stageCopyWith<$Res> implements $stageCopyWith<$Res> {
  factory _$stageCopyWith(_stage value, $Res Function(_stage) then) =
      __$stageCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String name,
      String branch_id,
      String shift,
      int level,
      Branch branch});

  @override
  $BranchCopyWith<$Res> get branch;
}

/// @nodoc
class __$stageCopyWithImpl<$Res> extends _$stageCopyWithImpl<$Res>
    implements _$stageCopyWith<$Res> {
  __$stageCopyWithImpl(_stage _value, $Res Function(_stage) _then)
      : super(_value, (v) => _then(v as _stage));

  @override
  _stage get _value => super._value as _stage;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? branch_id = freezed,
    Object? shift = freezed,
    Object? level = freezed,
    Object? branch = freezed,
  }) {
    return _then(_stage(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      branch_id: branch_id == freezed
          ? _value.branch_id
          : branch_id // ignore: cast_nullable_to_non_nullable
              as String,
      shift: shift == freezed
          ? _value.shift
          : shift // ignore: cast_nullable_to_non_nullable
              as String,
      level: level == freezed
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as int,
      branch: branch == freezed
          ? _value.branch
          : branch // ignore: cast_nullable_to_non_nullable
              as Branch,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_stage implements _stage {
  _$_stage(
      {required this.id,
      required this.name,
      required this.branch_id,
      required this.shift,
      required this.level,
      required this.branch});

  factory _$_stage.fromJson(Map<String, dynamic> json) =>
      _$$_stageFromJson(json);

  @override
  final String id;
  @override
  final String name;
// ignore: non_constant_identifier_names
  @override
  final String branch_id;
  @override
  final String shift;
  @override
  final int level;
  @override
  final Branch branch;

  @override
  String toString() {
    return 'stage(id: $id, name: $name, branch_id: $branch_id, shift: $shift, level: $level, branch: $branch)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _stage &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.branch_id, branch_id) &&
            const DeepCollectionEquality().equals(other.shift, shift) &&
            const DeepCollectionEquality().equals(other.level, level) &&
            const DeepCollectionEquality().equals(other.branch, branch));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(branch_id),
      const DeepCollectionEquality().hash(shift),
      const DeepCollectionEquality().hash(level),
      const DeepCollectionEquality().hash(branch));

  @JsonKey(ignore: true)
  @override
  _$stageCopyWith<_stage> get copyWith =>
      __$stageCopyWithImpl<_stage>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_stageToJson(this);
  }
}

abstract class _stage implements stage {
  factory _stage(
      {required final String id,
      required final String name,
      required final String branch_id,
      required final String shift,
      required final int level,
      required final Branch branch}) = _$_stage;

  factory _stage.fromJson(Map<String, dynamic> json) = _$_stage.fromJson;

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override // ignore: non_constant_identifier_names
  String get branch_id => throw _privateConstructorUsedError;
  @override
  String get shift => throw _privateConstructorUsedError;
  @override
  int get level => throw _privateConstructorUsedError;
  @override
  Branch get branch => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$stageCopyWith<_stage> get copyWith => throw _privateConstructorUsedError;
}
