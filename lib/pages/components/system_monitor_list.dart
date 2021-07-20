import 'package:flutter/material.dart';
import 'package:synt/theme/app_colors.dart';
import 'package:synt/until/app_containers.dart';
import 'package:synt/until/app_font_style.dart';
import 'package:synt/until/app_paddings.dart';

class SystemMonitorList extends StatelessWidget {
  const SystemMonitorList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 75,
          width: 75,
          decoration: AppContainersDecoration.containerBorder,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.favorite,
                  color: AppColors.accent,
                  size: 45,
                ),
                Text(
                  "NAME",
                  style: AppTextStyle.textStyle,
                )
              ],
            ),
          ),
        ),
        AppPaddings.defaultSizedBoxWidth,
        Expanded(
            child: Container(
          padding: EdgeInsets.symmetric(horizontal: 10),
          decoration: AppContainersDecoration.containerBorder,
          height: 75,
          child: Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "NETWORK: 15 Mbps/s",
                    style: AppTextStyle.textStyle,
                  ),
                  Text(
                    "STATUS: STABLE",
                    style: AppTextStyle.textStyle,
                  ),
                  Text(
                    "WARNINGS: 0",
                    style: AppTextStyle.textStyle,
                  ),
                  Text(
                    "ERRORS: 0",
                    style: AppTextStyle.textStyle,
                  )
                ],
              ),
              Expanded(
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Container(
                      width: 70,
                      height: 30,
                      decoration: AppContainersDecoration.containerBorder,
                      child: Center(
                        child: Text(
                          "MORE",
                          style: AppTextStyle.textStyleHeader,
                        ),
                      )),
                ),
              )
            ],
          ),
        ))
      ],
    );
  }
}
