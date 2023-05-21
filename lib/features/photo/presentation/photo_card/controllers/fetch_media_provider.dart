import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../../utils/riverpod.dart';
import '../../../data/repositories/media_repository/media_repository.dart';
import '../../../domain/media_entity/media_entity.dart';
import '../../../domain/media_item_entity/media_item_entity.dart';

final fetchMediaProvider = FutureProvider.autoDispose
    .family<MediaItemEntity, MediaEntity>((ref, mediaEntity) async {
  await Future.delayed(const Duration(seconds: 1));
  final mediaRep = ref.read(mediaRepositoryProvider);

  ref.chacheFor(const Duration(seconds: 30));

  final media = await mediaRep.getMediaItem(mediaEntity.id);
  return media;
});
