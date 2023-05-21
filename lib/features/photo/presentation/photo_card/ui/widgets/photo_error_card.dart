import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final _showErrorProvider =
    StateProvider.autoDispose.family<bool, dynamic>((ref, error) {
  return false;
});

class PhotoErrorCard extends ConsumerWidget {
  final dynamic error;

  const PhotoErrorCard({super.key, required this.error});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final showError = ref.watch(_showErrorProvider(error));
    return Material(
      color: Colors.grey[200],
      child: InkWell(
        onTap: () {
          ref
              .read(_showErrorProvider(error).notifier)
              .update((state) => !state);
        },
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(Icons.image_not_supported_outlined),
                const SizedBox(height: 4),
                const Text(
                  'Ошибка загрузки',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                if (showError)
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 5,
                      vertical: 5,
                    ),
                    child: Text(
                      '$error',
                      style: const TextStyle(
                        fontSize: 8,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
