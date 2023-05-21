// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'photo_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PhotoEntity {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  DateTime get createDate => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  bool get isNew => throw _privateConstructorUsedError;
  bool get isPopular => throw _privateConstructorUsedError;
  MediaEntity? get image => throw _privateConstructorUsedError;
  String? get user => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PhotoEntityCopyWith<PhotoEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PhotoEntityCopyWith<$Res> {
  factory $PhotoEntityCopyWith(
          PhotoEntity value, $Res Function(PhotoEntity) then) =
      _$PhotoEntityCopyWithImpl<$Res, PhotoEntity>;
  @useResult
  $Res call(
      {int id,
      String name,
      DateTime createDate,
      String description,
      bool isNew,
      bool isPopular,
      MediaEntity? image,
      String? user});

  $MediaEntityCopyWith<$Res>? get image;
}

/// @nodoc
class _$PhotoEntityCopyWithImpl<$Res, $Val extends PhotoEntity>
    implements $PhotoEntityCopyWith<$Res> {
  _$PhotoEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? createDate = null,
    Object? description = null,
    Object? isNew = null,
    Object? isPopular = null,
    Object? image = freezed,
    Object? user = freezed,
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
      createDate: null == createDate
          ? _value.createDate
          : createDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      isNew: null == isNew
          ? _value.isNew
          : isNew // ignore: cast_nullable_to_non_nullable
              as bool,
      isPopular: null == isPopular
          ? _value.isPopular
          : isPopular // ignore: cast_nullable_to_non_nullable
              as bool,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as MediaEntity?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MediaEntityCopyWith<$Res>? get image {
    if (_value.image == null) {
      return null;
    }

    return $MediaEntityCopyWith<$Res>(_value.image!, (value) {
      return _then(_value.copyWith(image: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_PhotoEntityCopyWith<$Res>
    implements $PhotoEntityCopyWith<$Res> {
  factory _$$_PhotoEntityCopyWith(
          _$_PhotoEntity value, $Res Function(_$_PhotoEntity) then) =
      __$$_PhotoEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      DateTime createDate,
      String description,
      bool isNew,
      bool isPopular,
      MediaEntity? image,
      String? user});

  @override
  $MediaEntityCopyWith<$Res>? get image;
}

/// @nodoc
class __$$_PhotoEntityCopyWithImpl<$Res>
    extends _$PhotoEntityCopyWithImpl<$Res, _$_PhotoEntity>
    implements _$$_PhotoEntityCopyWith<$Res> {
  __$$_PhotoEntityCopyWithImpl(
      _$_PhotoEntity _value, $Res Function(_$_PhotoEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? createDate = null,
    Object? description = null,
    Object? isNew = null,
    Object? isPopular = null,
    Object? image = freezed,
    Object? user = freezed,
  }) {
    return _then(_$_PhotoEntity(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      createDate: null == createDate
          ? _value.createDate
          : createDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      isNew: null == isNew
          ? _value.isNew
          : isNew // ignore: cast_nullable_to_non_nullable
              as bool,
      isPopular: null == isPopular
          ? _value.isPopular
          : isPopular // ignore: cast_nullable_to_non_nullable
              as bool,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as MediaEntity?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_PhotoEntity implements _PhotoEntity {
  _$_PhotoEntity(
      {required this.id,
      required this.name,
      required this.createDate,
      required this.description,
      required this.isNew,
      required this.isPopular,
      this.image,
      this.user});

  @override
  final int id;
  @override
  final String name;
  @override
  final DateTime createDate;
  @override
  final String description;
  @override
  final bool isNew;
  @override
  final bool isPopular;
  @override
  final MediaEntity? image;
  @override
  final String? user;

  @override
  String toString() {
    return 'PhotoEntity(id: $id, name: $name, createDate: $createDate, description: $description, isNew: $isNew, isPopular: $isPopular, image: $image, user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PhotoEntity &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.createDate, createDate) ||
                other.createDate == createDate) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.isNew, isNew) || other.isNew == isNew) &&
            (identical(other.isPopular, isPopular) ||
                other.isPopular == isPopular) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, name, createDate,
      description, isNew, isPopular, image, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PhotoEntityCopyWith<_$_PhotoEntity> get copyWith =>
      __$$_PhotoEntityCopyWithImpl<_$_PhotoEntity>(this, _$identity);
}

abstract class _PhotoEntity implements PhotoEntity {
  factory _PhotoEntity(
      {required final int id,
      required final String name,
      required final DateTime createDate,
      required final String description,
      required final bool isNew,
      required final bool isPopular,
      final MediaEntity? image,
      final String? user}) = _$_PhotoEntity;

  @override
  int get id;
  @override
  String get name;
  @override
  DateTime get createDate;
  @override
  String get description;
  @override
  bool get isNew;
  @override
  bool get isPopular;
  @override
  MediaEntity? get image;
  @override
  String? get user;
  @override
  @JsonKey(ignore: true)
  _$$_PhotoEntityCopyWith<_$_PhotoEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
