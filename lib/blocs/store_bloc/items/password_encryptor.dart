import 'package:flutter/material.dart';
import 'package:synt/theme/app_colors.dart';

class PasswordEncryptor {
  int lvl;
  int price;
  final String description;
  final Icon icon = const Icon(
    Icons.visibility_off,
    color: AppColors.accent,
  );

  PasswordEncryptor(this.lvl, this.price, this.description);

  void upLvl(int count) {
    lvl += count;
  }
}
