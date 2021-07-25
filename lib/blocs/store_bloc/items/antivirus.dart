import 'package:flutter/material.dart';
import 'package:synt/theme/app_colors.dart';

class Antivirus {
  final int lvl;
  final int price;
  final String description;
  final Icon icon = const Icon(
    Icons.security,
    color: AppColors.accent,
  );

  Antivirus(this.lvl, this.price, this.description);
}
