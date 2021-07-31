import 'package:flutter/material.dart';
import 'package:synt/theme/app_colors.dart';
import 'package:synt/until/app_containers.dart';
import 'package:synt/until/app_font_style.dart';
import 'package:synt/until/app_paddings.dart';

class EnemyItem extends StatefulWidget {
  final Icon icon;
  final String name;
  const EnemyItem({
    Key? key,
    required this.icon,
    required this.name,
  }) : super(key: key);

  @override
  State<EnemyItem> createState() => _EnemyItemState();
}

class _EnemyItemState extends State<EnemyItem> {
  bool isNotPress = true;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTapDown: (TapDownDetails t) => setState(() => isNotPress = false),
          onTapUp: (TapUpDetails t) => setState(() => isNotPress = true),
          onTapCancel: () => setState(() => isNotPress = true),
          child: CustomContainer(
              color: isNotPress ? AppColors.background : AppColors.accent,
              width: 120,
              height: 120,
              child: Column(
                children: [
                  isNotPress ? widget.icon : SizedBox(),
                  isNotPress ? AppPaddings.defaultSizedBoxWidth : SizedBox(),
                  Text(
                    widget.name,
                    style: isNotPress
                        ? AppTextStyle.textStyleHeader
                        : AppTextStyle.negativeTextStyleTextStyleHeader,
                  )
                ],
              ),
              crossAxisAlignment: CrossAxisAlignment.center),
        ),
        AppPaddings.defaultSizedBoxHeight,
      ],
    );
  }
}
