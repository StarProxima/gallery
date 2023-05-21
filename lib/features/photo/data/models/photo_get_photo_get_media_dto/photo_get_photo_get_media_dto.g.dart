// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'photo_get_photo_get_media_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PhotoGetPhotoGetMediaDto _$$_PhotoGetPhotoGetMediaDtoFromJson(
        Map<String, dynamic> json) =>
    _$_PhotoGetPhotoGetMediaDto(
      id: json['id'] as int,
      name: json['name'] as String,
      dateCreate: DateTime.parse(json['dateCreate'] as String),
      description: json['description'] as String,
      newPhoto: json['new'] as bool,
      popular: json['popular'] as bool,
      image: json['image'] == null
          ? null
          : MediaObjectGetPhotoGetMediaDto.fromJson(
              json['image'] as Map<String, dynamic>),
      user: json['user'] as String?,
    );

Map<String, dynamic> _$$_PhotoGetPhotoGetMediaDtoToJson(
        _$_PhotoGetPhotoGetMediaDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'dateCreate': instance.dateCreate.toIso8601String(),
      'description': instance.description,
      'new': instance.newPhoto,
      'popular': instance.popular,
      'image': instance.image,
      'user': instance.user,
    };
