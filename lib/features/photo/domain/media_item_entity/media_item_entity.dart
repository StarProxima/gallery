import 'package:freezed_annotation/freezed_annotation.dart';

part 'media_item_entity.freezed.dart';

@freezed
class MediaItemEntity with _$MediaItemEntity {
  factory MediaItemEntity({
    required int id,
    required String name,
    required String base64,
  }) = _MediaItemEntity;
}
