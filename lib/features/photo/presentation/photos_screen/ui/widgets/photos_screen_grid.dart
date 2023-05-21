import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../../../shared/widgets/no_connection_screen.dart';
import '../../../../../../shared/widgets/shimmer_loading.dart';
import '../../../../domain/enums/photo_type.dart';
import '../../../photo_card/ui/photo_card.dart';
import '../../../photo_card/ui/widgets/photo_error_card.dart';
import '../../controllers/fetch_photo_provider.dart';
import '../../controllers/total_photo_count_provider.dart';

final errorProvider = StateProvider<Object?>((ref) {
  return null;
});

class PhotosScreenGrid extends ConsumerWidget {
  final PhotoStatus photoStatus;
  const PhotosScreenGrid({super.key, required this.photoStatus});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final error = ref.watch(errorProvider);

    if (error != null) return const NoConnectionScreen();

    final photoListAsync = ref.watch(fetchPhotoListProvider((1, photoStatus)));

    return photoListAsync.when(
      loading: () => const Center(child: CircularProgressIndicator()),
      error: (err, stack) => const NoConnectionScreen(),
      data: (_) {
        return GridView.builder(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 30),
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
            childAspectRatio: 1.6,
          ),
          itemCount: ref.watch(totalPhotoCountProvider(photoStatus)),
          itemBuilder: (context, index) {
            return Consumer(
              builder: (context, ref, _) {
                final photoAsync =
                    ref.watch(fetchPhotoProvider((index, photoStatus)));

                return photoAsync.when(
                  loading: () => const ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                    child: ShimmerLoading(),
                  ),
                  error: (err, stack) => PhotoErrorCard(error: err),
                  data: (photo) {
                    return PhotoCard(
                      media: photo.image,
                    );
                  },
                );
              },
            );
          },
        );
      },
    );
  }
}
