import '../../domain/photo_entity/photo_entity.dart';

import 'media_mapper.dart';
import '../models/photo_get_photo_get_media_dto/photo_get_photo_get_media_dto.dart';

class PhotoMapper {
  final _mediaMapper = MediaMapper();

  PhotoEntity toEntity(PhotoGetPhotoGetMediaDto dto) {
    return PhotoEntity(
      id: dto.id,
      name: dto.name,
      createDate: dto.dateCreate,
      description: dto.description,
      isNew: dto.newPhoto,
      isPopular: dto.popular,
      image: _mediaMapper.toEntity(dto.image),
      user: dto.user,
    );
  }

  PhotoGetPhotoGetMediaDto toDto(PhotoEntity entity) {
    return PhotoGetPhotoGetMediaDto(
      id: entity.id,
      name: entity.name,
      dateCreate: entity.createDate,
      description: entity.description,
      newPhoto: entity.isNew,
      popular: entity.isPopular,
      image: _mediaMapper.toDto(entity.image),
      user: entity.user,
    );
  }
}
