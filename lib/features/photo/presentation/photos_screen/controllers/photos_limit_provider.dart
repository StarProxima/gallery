import 'package:flutter_riverpod/flutter_riverpod.dart';

final photosLimitProvider = StateProvider<int>((ref) {
  return 10;
});
