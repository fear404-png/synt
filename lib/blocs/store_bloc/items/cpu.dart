import 'package:flutter/material.dart';
import 'package:synt/theme/app_colors.dart';

class CPU {
  final double gflops;
  final int price;
  final String description;
  final Icon icon = const Icon(
    Icons.gradient,
    color: AppColors.accent,
  );

  CPU(this.gflops, this.description, this.price);
}
