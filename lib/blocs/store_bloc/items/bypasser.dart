import 'package:flutter/material.dart';
import 'package:synt/blocs/store_bloc/items/software.dart';
import 'package:synt/theme/app_colors.dart';

class Bypasser extends Software {
  int lvl;
  int price;
  final String description;
  static const Icon icon = Icon(
    Icons.unarchive,
    color: AppColors.accent,
  );

  Bypasser(this.lvl, this.price, this.description)
      : super(lvl, price, description, icon);
}
