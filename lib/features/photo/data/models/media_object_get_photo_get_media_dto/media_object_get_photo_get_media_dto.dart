import 'package:freezed_annotation/freezed_annotation.dart';

part 'media_object_get_photo_get_media_dto.freezed.dart';
part 'media_object_get_photo_get_media_dto.g.dart';

@freezed
class MediaObjectGetPhotoGetMediaDto with _$MediaObjectGetPhotoGetMediaDto {
  factory MediaObjectGetPhotoGetMediaDto({
    required int id,
    required String name,
  }) = _MediaObjectGetPhotoGetMediaDto;

  factory MediaObjectGetPhotoGetMediaDto.fromJson(Map<String, dynamic> json) =>
      _$MediaObjectGetPhotoGetMediaDtoFromJson(json);
}
