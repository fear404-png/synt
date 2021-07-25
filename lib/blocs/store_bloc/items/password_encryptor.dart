import 'package:flutter/material.dart';
import 'package:synt/theme/app_colors.dart';

class PasswordEncryptor {
  final int lvl;
  final int price;
  final String description;
  final Icon icon = const Icon(
    Icons.visibility_off,
    color: AppColors.accent,
  );

  PasswordEncryptor(this.lvl, this.price, this.description);
}
