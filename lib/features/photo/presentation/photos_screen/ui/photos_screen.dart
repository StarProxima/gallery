import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../../main_app.dart';
import '../../../../../shared/widgets/shimmer_loading.dart';
import '../../photo_card/ui/photo_card.dart';
import '../../photo_card/ui/widgets/photo_error_card.dart';

final totolPhotoCountProvider = StateProvider<int?>((ref) {
  return null;
});

class PhotosScreen extends ConsumerWidget {
  const PhotosScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const _PhotosScreen();
  }
}

class _PhotosScreen extends ConsumerStatefulWidget {
  const _PhotosScreen();

  @override
  ConsumerState<_PhotosScreen> createState() => _PhotosScreenState();
}

class _PhotosScreenState extends ConsumerState<_PhotosScreen> {
  @override
  Widget build(BuildContext context) {
    const limit = 10;
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Photos'),
          bottom: const TabBar(
            tabs: [
              Tab(text: 'New'),
              Tab(text: 'Popular'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            for (int i = 0; i < 2; i++)
              GridView.builder(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 30),
                gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 200,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                  childAspectRatio: 1.6,
                ),
                itemCount: ref.watch(totolPhotoCountProvider),
                itemBuilder: (context, index) {
                  final page = index ~/ limit + 1;
                  final itemIndex = index % limit;

                  return Consumer(
                    builder: (context, ref, chimmerLoading) {
                      final photoEntityAsync =
                          ref.watch(photosProvider((page, limit)));

                      return photoEntityAsync.when(
                        data: (data) {
                          final photo = data[itemIndex];
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
              ),
          ],
        ),
      ),
    );
  }
}
