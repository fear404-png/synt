import 'package:flutter/widgets.dart';
import 'package:synt/theme/app_colors.dart';

//здесь храняться стили шрифтов которые используются чаще всего
abstract class AppTextStyle {
  static const textStyle =
      TextStyle(color: AppColors.accent, fontSize: 14, fontFamily: "Console");
  static const textStyleHeader =
      TextStyle(color: AppColors.accent, fontSize: 16, fontFamily: "Console");
}
