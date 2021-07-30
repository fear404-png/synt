import 'package:flutter/material.dart';
import 'package:synt/blocs/store_bloc/items/hardware.dart';
import 'package:synt/theme/app_colors.dart';

class Memory extends Hardware {
  final double memory;
  final int price;
  final String description;
  static const Icon myIcon = const Icon(
    Icons.save,
    color: AppColors.accent,
  );

  Memory(this.memory, this.description, this.price)
      : super(memory, description, price, myIcon);
}
