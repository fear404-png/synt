import 'package:flutter/material.dart';
import 'package:synt/blocs/store_bloc/items/hardware.dart';
import 'package:synt/theme/app_colors.dart';

class Network extends Hardware {
  final double speed;
  final int price;
  final String description;
  static const Icon myIcon = Icon(
    Icons.vpn_lock,
    color: AppColors.accent,
  );

  Network(this.speed, this.description, this.price)
      : super(speed, description, price, myIcon);
}
