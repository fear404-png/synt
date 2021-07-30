import 'package:flutter/material.dart';
import 'package:synt/blocs/store_bloc/items/hardware.dart';
import 'package:synt/theme/app_colors.dart';

class RAM extends Hardware {
  final double ram;
  final int price;
  final String description;
  static const Icon myIcon = const Icon(
    Icons.apps,
    color: AppColors.accent,
  );

  RAM(this.ram, this.description, this.price)
      : super(ram, description, price, myIcon);
}
