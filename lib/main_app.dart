import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'config/theme/app_colors/app_colors.dart';
import 'config/theme/app_text_styles/app_text_styles.dart';
import 'config/theme/app_theme/app_theme.dart';
import 'features/photo/presentation/photos_screen/ui/photos_screen.dart';

class MainApp extends ConsumerStatefulWidget {
  const MainApp({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _MainAppState();
}

class _MainAppState extends ConsumerState<MainApp> {
  @override
  Widget build(BuildContext context) {
    final appColors = AppColors.light;
    final appTextStyles = AppTextStyles.light;
    return MaterialApp(
      theme:
          AppTheme.themeByStyles(colors: appColors, textStyles: appTextStyles),
      home: const PhotosScreen(),
    );
  }
}
