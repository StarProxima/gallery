import 'package:easy_refresh/easy_refresh.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../../../config/theme/app_theme/app_theme_context_extension.dart';
import '../../../../domain/enums/photo_type.dart';
import '../../controllers/photos_screen_controller.dart';

class PhotosScreenRefresh extends ConsumerStatefulWidget {
  final PhotoType photoType;
  final Widget child;

  const PhotosScreenRefresh({
    super.key,
    required this.photoType,
    required this.child,
  });

  @override
  ConsumerState<PhotosScreenRefresh> createState() =>
      _PhotosScreenRefreshState();
}

class _PhotosScreenRefreshState extends ConsumerState<PhotosScreenRefresh> {
  @override
  Widget build(BuildContext context) {
    final controller = ref.watch(photoScreenController);

    final orientation = MediaQuery.of(context).orientation;

    return EasyRefresh(
      header: CupertinoHeader(
        position: IndicatorPosition.behind,
        userWaterDrop: false,
        triggerOffset: orientation == Orientation.portrait ? 100 : 50,
        foregroundColor: context.colors.accent,
        backgroundColor: context.colors.transperent,
      ),
      onRefresh: () => controller.refreshPhotos(widget.photoType),
      child: widget.child,
    );
  }
}
