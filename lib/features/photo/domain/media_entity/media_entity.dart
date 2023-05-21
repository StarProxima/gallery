import 'package:freezed_annotation/freezed_annotation.dart';

part 'media_entity.freezed.dart';

@freezed
class MediaEntity with _$MediaEntity {
  factory MediaEntity({
    required int id,
    required String name,
  }) = _MediaEntity;
}
