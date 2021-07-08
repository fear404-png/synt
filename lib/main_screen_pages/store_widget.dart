import 'package:flutter/material.dart';
import 'package:synt/theme/app_colors.dart';

class StoreWidget extends StatelessWidget {
  const StoreWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "Processes",
        style: TextStyle(backgroundColor: AppColors.accent),
      ),
    );
  }
}
