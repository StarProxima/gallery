import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../../../shared/widgets/shimmer_loading.dart';
import '../../../../domain/enums/photo_type.dart';
import '../../../photo_card/ui/photo_card.dart';
import '../../../photo_card/ui/widgets/photo_error_card.dart';
import '../../controllers/fetch_photo_provider.dart';
import '../../controllers/total_photo_count_provider.dart';

class PhotosScreenGrid extends ConsumerWidget {
  final PhotoStatus photoStatus;
  const PhotosScreenGrid({super.key, required this.photoStatus});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
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
            final photoEntityAsync =
                ref.watch(fetchPhotoProvider((index, photoStatus)));

            return photoEntityAsync.when(
              data: (photo) {
                return PhotoCard(
                  mediaEntity: photo.image,
                );
              },
              loading: () => const ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(5)),
                child: ShimmerLoading(),
              ),
              error: (err, stack) => PhotoErrorCard(error: err),
            );
          },
        );
      },
    );
  }
}
