import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../../utils/riverpod.dart';
import '../../../domain/enums/photo_type.dart';
import '../../photo_card/controllers/fetch_media_provider.dart';
import 'fetch_photo_provider.dart';

final photoScreenController = Provider<PhotoScreenController>((ref) {
  final provider =
      NotifierProvider<PhotoScreenController, void>(PhotoScreenController.new);
  return ref.watch(provider.notifier);
});

class PhotoScreenController extends Controller {
  Future<void> refreshPhotos(PhotoType photoType) async {
    ref.invalidate(fetchPhotoListProvider);
    ref.invalidate(fetchMediaProvider);

    await ref.read(
      fetchPhotoListProvider((1, PhotoType.newPhoto)).future,
    );

    await Future.delayed(const Duration(milliseconds: 1000));
  }
}
