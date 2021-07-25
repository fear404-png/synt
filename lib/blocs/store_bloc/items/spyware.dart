import 'package:flutter/material.dart';
import 'package:synt/theme/app_colors.dart';

class Spyware {
  int lvl;
  int price;
  final String description;
  final Icon icon = const Icon(
    Icons.visibility,
    color: AppColors.accent,
  );

  Spyware(this.lvl, this.price, this.description);

  void upLvl(int count) {
    lvl += count;
  }
}
