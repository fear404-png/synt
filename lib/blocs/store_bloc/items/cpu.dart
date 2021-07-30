import 'package:flutter/material.dart';
import 'package:synt/blocs/store_bloc/items/hardware.dart';
import 'package:synt/theme/app_colors.dart';

class CPU extends Hardware {
  final double gflops;
  final int price;
  final String description;
  static const Icon myIcon = Icon(
    Icons.gradient,
    color: AppColors.accent,
  );

  CPU(this.gflops, this.description, this.price)
      : super(gflops, description, price, myIcon);
}
