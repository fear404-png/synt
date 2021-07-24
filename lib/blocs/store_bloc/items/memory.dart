import 'package:flutter/material.dart';
import 'package:synt/theme/app_colors.dart';

class Memory {
  final double memory;
  final int price;
  final String description;
  final Icon icon = const Icon(
    Icons.save,
    color: AppColors.accent,
  );

  Memory(this.memory, this.description, this.price);
}
