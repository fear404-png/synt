import 'package:flutter/material.dart';
import 'package:synt/theme/app_colors.dart';
import 'package:synt/until/app_containers.dart';
import 'package:synt/until/app_font_style.dart';
import 'package:synt/until/app_paddings.dart';

class EnemyItem extends StatelessWidget {
  const EnemyItem({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomContainer(
            width: 90,
            height: 100,
            child: Column(
              children: [
                const Icon(
                  Icons.dangerous,
                  color: AppColors.accent,
                  size: 60,
                ),
                Text(
                  "NAAAAME",
                  style: AppTextStyle.textStyleHeader,
                )
              ],
            ),
            crossAxisAlignment: CrossAxisAlignment.center),
        AppPaddings.defaultSizedBoxHeight,
      ],
    );
  }
}
