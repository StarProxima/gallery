import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../photo_detail_screen/ui/photo_detail_screen.dart';
import '../../controllers/photos_screen_controller.dart';
import 'photos_screen_refresh.dart';

import '../../../../../../shared/widgets/no_connection_screen.dart';
import '../../../../../../shared/widgets/shimmer_loading.dart';
import '../../../../domain/enums/photo_type.dart';
import '../../../photo_card/ui/photo_card.dart';
import '../../../photo_card/ui/widgets/photo_error_card.dart';
import '../../controllers/fetch_photo_provider.dart';
import '../../controllers/total_photo_count_provider.dart';

class PhotosScreenGrid extends ConsumerStatefulWidget {
  final PhotoType photoType;

  const PhotosScreenGrid({super.key, required this.photoType});

  @override
  ConsumerState<PhotosScreenGrid> createState() => _PhotosScreenGridState();
}

class _PhotosScreenGridState extends ConsumerState<PhotosScreenGrid> {
  @override
  Widget build(BuildContext context) {
    final controller = ref.watch(photoScreenController);

    final photoListAsync =
        ref.watch(fetchPhotoListProvider((1, widget.photoType)));

    return photoListAsync.when(
      loading: () => const Center(child: CircularProgressIndicator()),
      error: (err, stack) => const NoConnectionScreen(),
      data: (_) {
        return PhotosScreenRefresh(
          photoType: widget.photoType,
          child: GridView.builder(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 200,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
              childAspectRatio: 1.6,
            ),
            itemCount: ref.watch(totalPhotoCountProvider(widget.photoType)),
            itemBuilder: (context, index) {
              return Consumer(
                builder: (context, ref, _) {
                  final photoAsync =
                      ref.watch(fetchPhotoProvider((index, widget.photoType)));

                  return photoAsync.when(
                    loading: () => const ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                      child: ShimmerLoading(),
                    ),
                    error: (err, stack) => ClipRRect(
                      borderRadius: const BorderRadius.all(Radius.circular(5)),
                      child: PhotoErrorCard(error: err),
                    ),
                    data: (photo) {
                      if (photo.image == null) {
                        return const ClipRRect(
                          borderRadius: BorderRadius.all(Radius.circular(5)),
                          child: PhotoErrorCard(error: 'No Image Found'),
                        );
                      }
                      return PhotoCard(
                        media: photo.image!,
                        onTap: () {
                          controller.goToDetailScreen(photo);
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) =>
                                  PhotoDetailScreen(photo: photo),
                            ),
                          );
                        },
                      );
                    },
                  );
                },
              );
            },
          ),
        );
      },
    );
  }
}
