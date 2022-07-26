import 'package:petti_app/presentation/theme/app_animations.dart';
import 'package:petti_app/presentation/theme/app_colors.dart';
import 'package:petti_app/presentation/theme/app_images.dart';
import 'package:petti_app/presentation/theme/app_styles.dart';

class AppTheme {
  static AppColors get colors => AppColorsTheme();
  static AppTextStyles get textStyles => AppTextStyleTheme();
  static AppImages get images => AppImagesTheme();
  static AppAnimations get animations => AppAnimationsTheme();
}
