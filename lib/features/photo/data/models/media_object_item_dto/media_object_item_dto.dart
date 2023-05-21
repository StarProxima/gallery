import 'package:freezed_annotation/freezed_annotation.dart';

part 'media_object_item_dto.freezed.dart';
part 'media_object_item_dto.g.dart';

@freezed
class MediaObjectItemDto with _$MediaObjectItemDto {
  factory MediaObjectItemDto({
    required int id,
    required String name,
    // base64 with metadata
    required String file,
  }) = _MediaObjectItemDto;

  factory MediaObjectItemDto.fromJson(Map<String, dynamic> json) =>
      _$MediaObjectItemDtoFromJson(json);
}
