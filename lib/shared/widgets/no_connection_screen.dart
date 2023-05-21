import 'package:flutter/material.dart';

import '../../config/theme/app_theme/app_theme_context_extension.dart';
import '../../gen/assets/assets.gen.dart';

class NoConnectionScreen extends StatelessWidget {
  const NoConnectionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return SingleChildScrollView(
          child: Container(
            alignment: const Alignment(0, -0.25),
            padding: const EdgeInsets.symmetric(horizontal: 36),
            constraints: BoxConstraints(minHeight: constraints.maxHeight),
            child: Column(
              children: [
                Assets.noConnectionLogo.svg(),
                const SizedBox(height: 30),
                Text(
                  'Oh shucks!',
                  style: context.textStyles.title
                      .copyWith(color: context.colors.title),
                ),
                const SizedBox(height: 10),
                Text(
                  'Slow or no internet connection.\nPlease check your internet settings',
                  style: context.textStyles.min
                      .copyWith(color: context.colors.subTitle),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 36),
              ],
            ),
          ),
        );
      },
    );
  }
}
