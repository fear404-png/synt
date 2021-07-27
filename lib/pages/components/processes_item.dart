
import 'package:flutter/material.dart';
import 'package:synt/theme/app_colors.dart';
import 'package:synt/until/app_containers.dart';
import 'package:synt/until/app_font_style.dart';
import 'package:synt/until/app_paddings.dart';

class ProcessesItem extends StatelessWidget {
  const ProcessesItem({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const CustomContainer(
            width: 60,
            height: 60,
            child: Icon(
              Icons.network_wifi,
              color: AppColors.accent,
            ),
            crossAxisAlignment: CrossAxisAlignment.center),
        AppPaddings.defaultSizedBoxWidth,
        Expanded(
            child: CustomContainer(
          height: 60,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              children: const [
                Text(
                  "123.123.123.123",
                  style: AppTextStyle.textStyleHeader,
                ),
                Text(
                  "Firewall 19 lvl",
                  style: AppTextStyle.textStyle,
                ),
              ],
            ),
          ),
          crossAxisAlignment: CrossAxisAlignment.start,
        )),
        AppPaddings.defaultSizedBoxWidth,
        CustomContainer(
            width: 60,
            height: 60,
            child: Stack(
              children: const [
                CircularProgressIndicator(
                  color: AppColors.accent,
                ),
                Positioned(
                  top: 11,
                  right: 7,
                  child: Text(
                    "97%",
                    style: AppTextStyle.textStyle,
                  ),
                )
              ],
            ),
            crossAxisAlignment: CrossAxisAlignment.center),
      ],
    );
  }
}
