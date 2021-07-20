import 'package:flutter/material.dart';
import 'package:synt/theme/app_colors.dart';
import 'package:synt/until/app_containers.dart';
import 'package:synt/until/app_font_style.dart';
import 'package:synt/until/app_paddings.dart';

class SystemBar extends StatelessWidget {
  const SystemBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          decoration: AppContainersDecoration.containerBorder,
          width: 90,
          height: 90,
          child: Center(
            child: Icon(
              Icons.developer_board,
              color: AppColors.accent,
              size: 70,
            ),
          ),
        ),
        AppPaddings.defaultSizedBoxWidth,
        Expanded(
            child: Container(
          padding: AppPaddings.defaultPadding,
          height: 90,
          decoration: AppContainersDecoration.containerBorder,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "CPU: 86%  ",
                style: AppTextStyle.textStyleHeader,
              ),
              Text(
                "RAM: 6.1/7.9 GB",
                style: AppTextStyle.textStyleHeader,
              ),
              Text(
                "MEMORY: 21.1/112 GB",
                style: AppTextStyle.textStyleHeader,
              ),
              Text(
                "WEB: 0 KB/S  ",
                style: AppTextStyle.textStyleHeader,
              )
            ],
          ),
        ))
      ],
    );
  }
}
