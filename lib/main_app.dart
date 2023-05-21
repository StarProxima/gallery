import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'features/photo/data/repositories/photo_repository/photo_repository.dart';
import 'features/photo/domain/photo_entity/photo_entity.dart';
import 'features/photo/presentation/photos_screen/ui/photos_screen.dart';

final photosProvider = FutureProvider.family<List<PhotoEntity>, (int, int)>(
    (ref, pageAndLimit) async {
  await Future.delayed(const Duration(seconds: 1));
  final photoRep = ref.read(photoRepositoryProvider);
  final (page, limit) = pageAndLimit;

  final photo = await photoRep.getPhotos(page: page, limit: limit);

  ref.read(totolPhotoCountProvider.notifier).state = photo.totalItems;

  return photo.data;
});

class MainApp extends ConsumerStatefulWidget {
  const MainApp({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _MainAppState();
}

class _MainAppState extends ConsumerState<MainApp> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: PhotosScreen(),
    );
  }
}
