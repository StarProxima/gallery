import '../../domain/media_item_entity/media_item_entity.dart';
import '../models/media_object_item_dto/media_object_item_dto.dart';

class MediaItemMapper {
  MediaItemEntity toEntity(MediaObjectItemDto dto) {
    // remove metadata
    final base64 = dto.file.split(',').last;
    return MediaItemEntity(
      id: dto.id,
      name: dto.name,
      base64: base64,
    );
  }
}
