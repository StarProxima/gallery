// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'media_object_item_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MediaObjectItemDto _$MediaObjectItemDtoFromJson(Map<String, dynamic> json) {
  return _MediaObjectItemDto.fromJson(json);
}

/// @nodoc
mixin _$MediaObjectItemDto {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError; // base64 with metadata
  String get file => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MediaObjectItemDtoCopyWith<MediaObjectItemDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MediaObjectItemDtoCopyWith<$Res> {
  factory $MediaObjectItemDtoCopyWith(
          MediaObjectItemDto value, $Res Function(MediaObjectItemDto) then) =
      _$MediaObjectItemDtoCopyWithImpl<$Res, MediaObjectItemDto>;
  @useResult
  $Res call({int id, String name, String file});
}

/// @nodoc
class _$MediaObjectItemDtoCopyWithImpl<$Res, $Val extends MediaObjectItemDto>
    implements $MediaObjectItemDtoCopyWith<$Res> {
  _$MediaObjectItemDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? file = null,
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
      file: null == file
          ? _value.file
          : file // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MediaObjectItemDtoCopyWith<$Res>
    implements $MediaObjectItemDtoCopyWith<$Res> {
  factory _$$_MediaObjectItemDtoCopyWith(_$_MediaObjectItemDto value,
          $Res Function(_$_MediaObjectItemDto) then) =
      __$$_MediaObjectItemDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name, String file});
}

/// @nodoc
class __$$_MediaObjectItemDtoCopyWithImpl<$Res>
    extends _$MediaObjectItemDtoCopyWithImpl<$Res, _$_MediaObjectItemDto>
    implements _$$_MediaObjectItemDtoCopyWith<$Res> {
  __$$_MediaObjectItemDtoCopyWithImpl(
      _$_MediaObjectItemDto _value, $Res Function(_$_MediaObjectItemDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? file = null,
  }) {
    return _then(_$_MediaObjectItemDto(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      file: null == file
          ? _value.file
          : file // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MediaObjectItemDto implements _MediaObjectItemDto {
  _$_MediaObjectItemDto(
      {required this.id, required this.name, required this.file});

  factory _$_MediaObjectItemDto.fromJson(Map<String, dynamic> json) =>
      _$$_MediaObjectItemDtoFromJson(json);

  @override
  final int id;
  @override
  final String name;
// base64 with metadata
  @override
  final String file;

  @override
  String toString() {
    return 'MediaObjectItemDto(id: $id, name: $name, file: $file)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MediaObjectItemDto &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.file, file) || other.file == file));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, file);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MediaObjectItemDtoCopyWith<_$_MediaObjectItemDto> get copyWith =>
      __$$_MediaObjectItemDtoCopyWithImpl<_$_MediaObjectItemDto>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MediaObjectItemDtoToJson(
      this,
    );
  }
}

abstract class _MediaObjectItemDto implements MediaObjectItemDto {
  factory _MediaObjectItemDto(
      {required final int id,
      required final String name,
      required final String file}) = _$_MediaObjectItemDto;

  factory _MediaObjectItemDto.fromJson(Map<String, dynamic> json) =
      _$_MediaObjectItemDto.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override // base64 with metadata
  String get file;
  @override
  @JsonKey(ignore: true)
  _$$_MediaObjectItemDtoCopyWith<_$_MediaObjectItemDto> get copyWith =>
      throw _privateConstructorUsedError;
}
