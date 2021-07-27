import 'package:flutter/material.dart';
import 'package:synt/theme/app_colors.dart';
import 'package:synt/until/app_containers.dart';
import 'package:synt/until/app_font_style.dart';
import 'package:synt/until/app_paddings.dart';

class ProcessesItemWidget extends StatelessWidget {
  final String title;
  final String ip;

  const ProcessesItemWidget({
    Key? key,
    required this.title,
    required this.ip,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const CustomContainer(
            width: 60,
            height: 60,
            child: Icon(
              Icons.network_locked,
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
              children: [
                Text(
                  ip,
                  style: AppTextStyle.textStyleHeader,
                ),
                Text(
                  title,
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
