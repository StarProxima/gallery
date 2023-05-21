import 'package:flutter/material.dart';

class PhotoErrorCard extends StatefulWidget {
  final dynamic error;

  const PhotoErrorCard({super.key, required this.error});

  @override
  State<PhotoErrorCard> createState() => _PhotoErrorCardState();
}

class _PhotoErrorCardState extends State<PhotoErrorCard> {
  bool showError = false;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.grey[200],
      child: InkWell(
        onTap: () => setState(() {
          showError = !showError;
        }),
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
                      '${widget.error}',
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
