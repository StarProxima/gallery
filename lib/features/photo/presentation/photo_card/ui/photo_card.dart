import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../controllers/photo_card_controller.dart';
import 'widgets/photo_error_card.dart';
import '../controllers/fetch_media_provider.dart';

import '../../../../../shared/widgets/shimmer_loading.dart';
import '../../../domain/media_entity/media_entity.dart';

class PhotoCard extends ConsumerWidget {
  final MediaEntity mediaEntity;

  const PhotoCard({super.key, required this.mediaEntity});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
      ),
      clipBehavior: Clip.antiAlias,
      child: Consumer(
        builder: (context, ref, child) {
          final mediaItemAsync = ref.watch(fetchMediaProvider(mediaEntity));
          return mediaItemAsync.when(
            data: (data) {
              return InkWell(
                onTap: () {
                  ref.read(photoCardController.notifier).goToDetailScreen();
                },
                child: Image.memory(
                  base64Decode(data.base64),
                  frameBuilder:
                      (context, child, frame, wasSynchronouslyLoaded) {
                    if (wasSynchronouslyLoaded) return child;
                    return ColoredBox(
                      color: Colors.grey[300]!,
                      child: AnimatedOpacity(
                        opacity: frame == null ? 0 : 1,
                        duration: const Duration(milliseconds: 500),
                        curve: Curves.easeOut,
                        child: child,
                      ),
                    );
                  },
                  fit: BoxFit.cover,
                ),
              );
            },
            loading: () => const ShimmerLoading(),
            error: (error, stackTrace) => PhotoErrorCard(error: error),
          );
        },
      ),
    );
  }
}
