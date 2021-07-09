import 'package:flutter/cupertino.dart';
import 'package:synt/theme/app_colors.dart';

import 'package:flutter/material.dart';

abstract class AppContainers {
  static BoxDecoration containerBorder = BoxDecoration(
    border: Border.all(
        color: AppColors.accent, width: 1.0, style: BorderStyle.solid),
  );

  
}
