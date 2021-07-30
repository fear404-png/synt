import 'package:flutter/material.dart';
import 'package:synt/blocs/store_bloc/items/software.dart';
import 'package:synt/theme/app_colors.dart';

class Firewall extends Software {
  int lvl;
  int price;
  final String description;
  static const Icon icon = Icon(
    Icons.whatshot,
    color: AppColors.accent,
  );

  Firewall(this.lvl, this.price, this.description)
      : super(price, price, description, icon);
}
