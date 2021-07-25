import 'package:flutter/material.dart';
import 'package:synt/theme/app_colors.dart';

class Spam {
  final int lvl;
  final int price;
  final String description;
  final Icon icon = const Icon(
    Icons.message,
    color: AppColors.accent,
  );

  Spam(this.lvl, this.price, this.description);
}
