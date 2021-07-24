import 'package:flutter/material.dart';
import 'package:synt/theme/app_colors.dart';

//задний фон магазина
class StoreBackground extends StatelessWidget {
  const StoreBackground({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                colors: [AppColors.background, AppColors.accent]),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(2),
          child: Container(
            color: AppColors.background,
          ),
        ),
      ],
    );
  }
}
