// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'media_item_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MediaItemEntity {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get base64 => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MediaItemEntityCopyWith<MediaItemEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MediaItemEntityCopyWith<$Res> {
  factory $MediaItemEntityCopyWith(
          MediaItemEntity value, $Res Function(MediaItemEntity) then) =
      _$MediaItemEntityCopyWithImpl<$Res, MediaItemEntity>;
  @useResult
  $Res call({int id, String name, String base64});
}

/// @nodoc
class _$MediaItemEntityCopyWithImpl<$Res, $Val extends MediaItemEntity>
    implements $MediaItemEntityCopyWith<$Res> {
  _$MediaItemEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? base64 = null,
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
      base64: null == base64
          ? _value.base64
          : base64 // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MediaItemEntityCopyWith<$Res>
    implements $MediaItemEntityCopyWith<$Res> {
  factory _$$_MediaItemEntityCopyWith(
          _$_MediaItemEntity value, $Res Function(_$_MediaItemEntity) then) =
      __$$_MediaItemEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name, String base64});
}

/// @nodoc
class __$$_MediaItemEntityCopyWithImpl<$Res>
    extends _$MediaItemEntityCopyWithImpl<$Res, _$_MediaItemEntity>
    implements _$$_MediaItemEntityCopyWith<$Res> {
  __$$_MediaItemEntityCopyWithImpl(
      _$_MediaItemEntity _value, $Res Function(_$_MediaItemEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? base64 = null,
  }) {
    return _then(_$_MediaItemEntity(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      base64: null == base64
          ? _value.base64
          : base64 // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_MediaItemEntity implements _MediaItemEntity {
  _$_MediaItemEntity(
      {required this.id, required this.name, required this.base64});

  @override
  final int id;
  @override
  final String name;
  @override
  final String base64;

  @override
  String toString() {
    return 'MediaItemEntity(id: $id, name: $name, base64: $base64)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MediaItemEntity &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.base64, base64) || other.base64 == base64));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, name, base64);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MediaItemEntityCopyWith<_$_MediaItemEntity> get copyWith =>
      __$$_MediaItemEntityCopyWithImpl<_$_MediaItemEntity>(this, _$identity);
}

abstract class _MediaItemEntity implements MediaItemEntity {
  factory _MediaItemEntity(
      {required final int id,
      required final String name,
      required final String base64}) = _$_MediaItemEntity;

  @override
  int get id;
  @override
  String get name;
  @override
  String get base64;
  @override
  @JsonKey(ignore: true)
  _$$_MediaItemEntityCopyWith<_$_MediaItemEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
