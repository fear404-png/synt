import 'package:flutter/material.dart';
import 'package:synt/theme/app_colors.dart';

class PasswordCracker {
  int lvl;
  int price;
  final String description;
  final Icon icon = const Icon(
    Icons.face_unlock_rounded,
    color: AppColors.accent,
  );

  PasswordCracker(this.lvl, this.price, this.description);

  void upLvl(int count) {
    lvl += count;
  }
}
