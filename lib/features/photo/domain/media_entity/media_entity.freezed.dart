// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'media_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MediaEntity {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MediaEntityCopyWith<MediaEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MediaEntityCopyWith<$Res> {
  factory $MediaEntityCopyWith(
          MediaEntity value, $Res Function(MediaEntity) then) =
      _$MediaEntityCopyWithImpl<$Res, MediaEntity>;
  @useResult
  $Res call({int id, String name});
}

/// @nodoc
class _$MediaEntityCopyWithImpl<$Res, $Val extends MediaEntity>
    implements $MediaEntityCopyWith<$Res> {
  _$MediaEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MediaEntityCopyWith<$Res>
    implements $MediaEntityCopyWith<$Res> {
  factory _$$_MediaEntityCopyWith(
          _$_MediaEntity value, $Res Function(_$_MediaEntity) then) =
      __$$_MediaEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name});
}

/// @nodoc
class __$$_MediaEntityCopyWithImpl<$Res>
    extends _$MediaEntityCopyWithImpl<$Res, _$_MediaEntity>
    implements _$$_MediaEntityCopyWith<$Res> {
  __$$_MediaEntityCopyWithImpl(
      _$_MediaEntity _value, $Res Function(_$_MediaEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_$_MediaEntity(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_MediaEntity implements _MediaEntity {
  _$_MediaEntity({required this.id, required this.name});

  @override
  final int id;
  @override
  final String name;

  @override
  String toString() {
    return 'MediaEntity(id: $id, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MediaEntity &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MediaEntityCopyWith<_$_MediaEntity> get copyWith =>
      __$$_MediaEntityCopyWithImpl<_$_MediaEntity>(this, _$identity);
}

abstract class _MediaEntity implements MediaEntity {
  factory _MediaEntity({required final int id, required final String name}) =
      _$_MediaEntity;

  @override
  int get id;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$_MediaEntityCopyWith<_$_MediaEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
