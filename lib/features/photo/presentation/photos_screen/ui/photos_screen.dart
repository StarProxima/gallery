import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../domain/enums/photo_type.dart';
import 'widgets/photos_screen_grid.dart';

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
    final isLandscape =
        MediaQuery.of(context).orientation == Orientation.landscape;
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(isLandscape ? 48 : 84),
          child: AppBar(
            title: const Text('Photos'),
            bottom: const TabBar(
              tabs: [
                Tab(text: 'New'),
                Tab(text: 'Popular'),
              ],
            ),
          ),
        ),
        body: const Column(
          children: [
            Expanded(
              child: TabBarView(
                children: [
                  PhotosScreenGrid(photoType: PhotoType.newPhoto),
                  PhotosScreenGrid(photoType: PhotoType.popularPhoto),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
