import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../domain/enums/photo_type.dart';

/// Updates from [fetchPhotosProvider]
final totalPhotoCountProvider =
    StateProvider.family<int?, PhotoStatus>((ref, status) {
  return null;
});
