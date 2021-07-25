import 'package:flutter/material.dart';
import 'package:synt/theme/app_colors.dart';

class Bypasser {
   int lvl;
   int price;
  final String description;
  final Icon icon = const Icon(
    Icons.unarchive,
    color: AppColors.accent,
  );

  Bypasser(this.lvl, this.price, this.description);

    void upLvl(int count) {
    lvl += count;
  }
}
