import 'package:freezed_annotation/freezed_annotation.dart';

import '../media_entity/media_entity.dart';

part 'photo_entity.freezed.dart';

@freezed
class PhotoEntity with _$PhotoEntity {
  factory PhotoEntity({
    required int id,
    required String name,
    required DateTime createDate,
    required String description,
    required bool isNew,
    required bool isPopular,
    required MediaEntity image,
    String? user,
  }) = _PhotoEntity;
}
