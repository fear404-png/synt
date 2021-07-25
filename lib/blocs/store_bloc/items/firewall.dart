import 'package:flutter/material.dart';
import 'package:synt/theme/app_colors.dart';

class Firewall {
  final int lvl;
  final int price;
  final String description;
  final Icon icon = const Icon(
    Icons.whatshot,
    color: AppColors.accent,
  );

  Firewall(this.lvl, this.price, this.description);
}
