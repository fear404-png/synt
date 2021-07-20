import 'package:flutter/widgets.dart';
import 'package:synt/theme/app_colors.dart';

abstract class AppTextStyle {
  static const textStyle =
      TextStyle(color: AppColors.accent, fontSize: 14, fontFamily: "IBM");
  static const textStyleHeader =
      TextStyle(color: AppColors.accent, fontSize: 16, fontFamily: "IBM");
}
