import 'package:flutter/material.dart';
import 'package:synt/theme/app_colors.dart';
import 'package:synt/until/app_containers.dart';
import 'package:synt/until/app_font_style.dart';
import 'package:synt/until/app_paddings.dart';

//система монитор лист, ну типо
class SystemMonitorList extends StatelessWidget {
  final String name;
  final String info;
  final Icon icon;

  const SystemMonitorList({
    Key? key,
    required this.name,
    required this.info,
    required this.icon,
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
                icon,
                Text(
                  name,
                  style: AppTextStyle.textStyle,
                )
              ],
            ),
          ),
        ),
        AppPaddings.defaultSizedBoxWidth,
        Expanded(
            child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          decoration: AppContainersDecoration.containerBorder,
          height: 75,
          child: Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    info,
                    style: AppTextStyle.textStyle,
                  ),
                  const Text(
                    "STATUS: STABLE",
                    style: AppTextStyle.textStyle,
                  ),
                  const Text(
                    "WARNINGS: 0",
                    style: AppTextStyle.textStyle,
                  ),
                  const Text(
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
                      child: const Center(
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
