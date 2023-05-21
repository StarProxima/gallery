import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../../api/models/pagination_list/pagination_list.dart';
import 'photos_limit_provider.dart';
import '../../../domain/enums/photo_type.dart';
import 'total_photo_count_provider.dart';

import '../../../data/repositories/photo_repository/photo_repository.dart';
import '../../../domain/photo_entity/photo_entity.dart';

final fetchPhotoProvider =
    FutureProvider.family<PhotoEntity, (int, PhotoStatus)>((ref, record) async {
  final limit = ref.watch(photosLimitProvider);
  final (index, status) = record;

  final page = index ~/ limit + 1;
  final itemIndex = index % limit;

  final photoPaginationList =
      await ref.watch(fetchPhotoListProvider((page, status)).future);

  return photoPaginationList.data[itemIndex];
});

final fetchPhotoListProvider =
    FutureProvider.family<PaginationList<PhotoEntity>, (int, PhotoStatus)>(
        (ref, record) async {
  await Future.delayed(const Duration(seconds: 1));

  final photoRep = ref.read(photoRepositoryProvider);
  final limit = ref.watch(photosLimitProvider);
  final (page, status) = record;

  final photoPaginationList =
      await photoRep.getPhotos(page: page, limit: limit, status: status);

  ref.read(totalPhotoCountProvider(status).notifier).state =
      photoPaginationList.totalItems;

  return photoPaginationList;
});
