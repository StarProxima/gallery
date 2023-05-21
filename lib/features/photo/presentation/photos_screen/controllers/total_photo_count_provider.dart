import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../domain/enums/photo_type.dart';
import 'fetch_photo_provider.dart';

/// Updates from [fetchPhotoListProvider]
final totalPhotoCountProvider =
    StateProvider.family<int?, PhotoStatus>((ref, status) {
  return null;
});
