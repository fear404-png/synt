import 'package:flutter/material.dart';
import 'package:synt/theme/app_colors.dart';

class SyntWidget extends StatelessWidget {
  const SyntWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "SYNT",
        style: TextStyle(backgroundColor: AppColors.accent),
      ),
    );
  }
}
