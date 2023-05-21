import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../../api/models/pagination_list/pagination_list.dart';
import '../../../domain/enums/photo_type.dart';
import 'photo_api.dart';

import '../../../../../api/api_client_provider.dart';
import '../../../domain/photo_entity/photo_entity.dart';
import '../../mappers/photo_mapper.dart';

final photoRepositoryProvider = Provider<PhotoRepository>((ref) {
  return PhotoRepository(
    api: PhotoApi(ref.watch(apiClientProvider)),
  );
});

class PhotoRepository {
  final PhotoApi _api;
  final _mapper = PhotoMapper();

  PhotoRepository({
    required PhotoApi api,
  }) : _api = api;

  Future<PaginationList<PhotoEntity>> getPhotos({
    int? page,
    int? limit,
    PhotoType type = PhotoType.none,
  }) async {
    final listResultDto = await _api.getPhotos(
      page: page,
      limit: limit,
      newPhoto: type.isNewPhoto ? true : null,
      popular: type.isPopularPhoto ? true : null,
    );
    final listResultEntity = listResultDto.map(_mapper.toEntity);
    return listResultEntity;
  }

  Future<PhotoEntity> getPhoto(int id) async {
    final photoDto = await _api.getPhoto(id);
    final photoEntity = _mapper.toEntity(photoDto);
    return photoEntity;
  }
}
