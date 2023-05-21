import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../../api/api_client_provider.dart';
import '../../../domain/media_item_entity/media_item_entity.dart';
import '../../mappers/media_item_mapper.dart';
import 'media_api.dart';

final mediaRepositoryProvider = Provider<MediaRepository>((ref) {
  return MediaRepository(
    api: MediaApi(ref.watch(apiClientProvider)),
  );
});

class MediaRepository {
  final MediaApi _api;
  final _mapper = MediaItemMapper();

  MediaRepository({
    required MediaApi api,
  }) : _api = api;

  Future<MediaItemEntity> getMediaItem(int id) async {
    final mediaItemDto = await _api.getMediaItem(id);
    final mediaItemEntity = _mapper.toEntity(mediaItemDto);
    return mediaItemEntity;
  }
}
