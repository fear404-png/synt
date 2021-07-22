import 'package:flutter/material.dart';
import 'package:synt/theme/app_colors.dart';

class RAM {
  final double ram;
  final int price;
  final String description;
  final Icon icon = const Icon(
    Icons.apps,
    color: AppColors.accent,
  );

  RAM(this.ram, this.description, this.price);
}
