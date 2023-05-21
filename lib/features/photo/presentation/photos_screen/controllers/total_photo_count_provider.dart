import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../domain/enums/photo_type.dart';
import 'fetch_photo_provider.dart';

/// Updates from [fetchPhotoListProvider]
final totalPhotoCountProvider =
    StateProvider.family<int?, PhotoType>((ref, status) {
  return null;
});
