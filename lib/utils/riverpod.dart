// ignore_for_file: avoid_public_notifier_properties
import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';

extension RefCache on AutoDisposeFutureProviderRef {
  static Timer? _timer;

  void chacheFor(Duration duration) {
    final link = keepAlive();

    onCancel(() {
      _timer = Timer(duration, link.close);
    });

    onResume(() => _timer?.cancel());
  }
}

class Controller extends Notifier<void> {
  @override
  void build() {}

  T read<T>(ProviderListenable<T> provider) => super.ref.read(provider);
}
