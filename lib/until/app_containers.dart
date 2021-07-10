import 'package:flutter/cupertino.dart';
import 'package:synt/theme/app_colors.dart';

import 'package:flutter/material.dart';

abstract class AppContainers {
  static BoxDecoration containerBorder = BoxDecoration(
    border: Border.all(
        color: AppColors.accent, width: 1.0, style: BorderStyle.solid),
  );

  static BoxDecoration containerBorderWithBg = BoxDecoration(
    color: AppColors.background,
    border: Border.all(
        color: AppColors.accent, width: 2.0, style: BorderStyle.solid),
  );
}
