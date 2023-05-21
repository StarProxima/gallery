// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

import '../media_object_get_photo_get_media_dto/media_object_get_photo_get_media_dto.dart';

part 'photo_get_photo_get_media_dto.freezed.dart';
part 'photo_get_photo_get_media_dto.g.dart';

@freezed
class PhotoGetPhotoGetMediaDto with _$PhotoGetPhotoGetMediaDto {
  factory PhotoGetPhotoGetMediaDto({
    required int id,
    required String name,
    required DateTime dateCreate,
    required String description,
    @JsonKey(name: 'new') required bool newPhoto,
    required bool popular,
    MediaObjectGetPhotoGetMediaDto? image,
    String? user,
  }) = _PhotoGetPhotoGetMediaDto;

  factory PhotoGetPhotoGetMediaDto.fromJson(Map<String, dynamic> json) =>
      _$PhotoGetPhotoGetMediaDtoFromJson(json);
}
