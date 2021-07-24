import 'package:flutter/material.dart';
import 'package:synt/theme/app_colors.dart';

class MessagesWidget extends StatelessWidget {
  const MessagesWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "DEBUG",
        style: TextStyle(backgroundColor: AppColors.accent),
      ),
    );
  }
}
