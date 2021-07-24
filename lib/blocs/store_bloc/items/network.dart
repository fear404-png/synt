import 'package:flutter/material.dart';
import 'package:synt/theme/app_colors.dart';

class Network {
  final double speed;
  final int price;
  final String description;
  final Icon icon = const Icon(
    Icons.vpn_lock,
    color: AppColors.accent,
  );

  Network(this.speed, this.description, this.price);
}
