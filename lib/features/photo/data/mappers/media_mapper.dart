import '../../domain/media_entity/media_entity.dart';
import '../models/media_object_get_photo_get_media_dto/media_object_get_photo_get_media_dto.dart';

class MediaMapper {
  MediaEntity toEntity(MediaObjectGetPhotoGetMediaDto dto) {
    return MediaEntity(
      id: dto.id,
      name: dto.name,
    );
  }

  MediaObjectGetPhotoGetMediaDto toDto(MediaEntity entity) {
    return MediaObjectGetPhotoGetMediaDto(
      id: entity.id,
      name: entity.name,
    );
  }
}
