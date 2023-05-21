import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';

import '../../../../../config/theme/app_theme/app_theme_context_extension.dart';
import '../../../domain/photo_entity/photo_entity.dart';
import '../../photo_card/controllers/fetch_media_provider.dart';

final photoInDetailScreen = Provider<PhotoEntity>((ref) {
  throw UnimplementedError();
});

class PhotoDetailScreen extends ConsumerWidget {
  final PhotoEntity photo;

  const PhotoDetailScreen({super.key, required this.photo});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ProviderScope(
      overrides: [photoInDetailScreen.overrideWithValue(photo)],
      child: const _PhotoDetailScreen(),
    );
  }
}

class _PhotoDetailScreen extends ConsumerStatefulWidget {
  const _PhotoDetailScreen();

  @override
  ConsumerState<_PhotoDetailScreen> createState() => _PhotoDetailScreenState();
}

class _PhotoDetailScreenState extends ConsumerState<_PhotoDetailScreen> {
  @override
  Widget build(BuildContext context) {
    final photo = ref.watch(photoInDetailScreen);
    final textStyles = context.textStyles;
    final colors = context.colors;
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (photo.image != null)
              Consumer(
                builder: (context, ref, child) {
                  final mediaItemAsync =
                      ref.watch(fetchMediaProvider(photo.image!));
                  return mediaItemAsync.when(
                    loading: () =>
                        const Center(child: CircularProgressIndicator()),
                    error: (err, stack) => Center(child: Text('Error: $err')),
                    data: (mediaItem) {
                      return Image.memory(
                        base64Decode(mediaItem.base64),
                        // height: 200,
                        width: MediaQuery.of(context).size.width,
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
                      );
                    },
                  );
                },
              ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 20),
                  Text(
                    photo.name,
                    style: textStyles.title.copyWith(color: colors.title),
                  ),
                  if (photo.user != null)
                    Padding(
                      padding: const EdgeInsets.only(top: 5),
                      child: Text(
                        'Username',
                        style: textStyles.main.copyWith(color: colors.accent),
                      ),
                    ),
                  if (photo.description.isNotEmpty)
                    Padding(
                      padding: const EdgeInsets.only(top: 15),
                      child: Text(
                        photo.description.trim(),
                        style: textStyles.min,
                      ),
                    ),
                  const SizedBox(height: 15),
                  Wrap(
                    spacing: 5,
                    children: [
                      ...[
                        'Animals',
                        'Теги какие-то..',
                        'Заходят как-то в бар русский, немец и американец..'
                      ].map(
                        (label) => Chip(
                          label: Text(
                            label,
                          ),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: 15),
                  Text(
                    DateFormat('dd MMM. yyyy')
                        .format(photo.createDate)
                        .toLowerCase(),
                    style: textStyles.min.copyWith(color: colors.subTitle),
                  ),
                  const SizedBox(height: 5),
                  Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: 'Views: ',
                          style: textStyles.min.copyWith(
                            color: colors.black,
                          ),
                        ),
                        TextSpan(
                          text: '999+',
                          style: textStyles.min.copyWith(
                            color: colors.subTitle,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 36),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
