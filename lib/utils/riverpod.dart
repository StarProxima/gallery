import 'dart:async';

import 'package:flutter/foundation.dart';
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
  @protected
  @override
  void build() {}

  @protected
  @override
  get ref => super.ref;

  @protected
  T read<T>(ProviderListenable<T> provider) => ref.read(provider);
}
