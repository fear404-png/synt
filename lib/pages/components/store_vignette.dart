import 'package:flutter/material.dart';
import 'package:synt/theme/app_colors.dart';

class StoreVignette extends StatelessWidget {
  const StoreVignette({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IgnorePointer(
      child: Padding(
        padding: const EdgeInsets.all(2),
        child: Container(
          height: 50,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                colors: [Colors.transparent, AppColors.background]),
          ),
        ),
      ),
    );
  }
}
