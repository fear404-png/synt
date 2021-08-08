import 'package:flutter/material.dart';

import 'package:synt/theme/app_colors.dart';
import 'package:synt/until/app_containers.dart';
import 'package:synt/until/app_font_style.dart';
import 'package:synt/until/app_paddings.dart';

//система монитор лист, ну типо
class SystemMonitorList extends StatefulWidget {
  final String name;
  final String info;
  final Icon icon;
  final type;

  SystemMonitorList({
    Key? key,
    required this.name,
    required this.info,
    required this.icon,
    this.type,
  }) : super(key: key);

  @override
  State<SystemMonitorList> createState() => _SystemMonitorListState();
}

class _SystemMonitorListState extends State<SystemMonitorList> {
  Color buttonColor = AppColors.background;

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
                widget.icon,
                Text(
                  widget.name,
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
                    widget.info,
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
                  child: GestureDetector(
                    onTapDown: (TapDownDetails tapDownDetails) =>
                        setState(() => buttonColor = AppColors.accent),
                    onTapUp: (TapUpDetails tapUpDetails) =>
                        setState(() => buttonColor = AppColors.background),
                    onTapCancel: () =>
                        setState(() => buttonColor = AppColors.background),
                    onTap: () {
                      Navigator.of(context).pushNamed(
                        "/main_screen/hardware_info",
                      );
                    },
                    child: AnimatedContainer(
                        duration: const Duration(milliseconds: 200),
                        curve: Curves.linearToEaseOut,
                        width: 70,
                        height: 30,
                        decoration: BoxDecoration(
                          color: buttonColor,
                          border: Border.all(
                              color: AppColors.accent,
                              width: 1.0,
                              style: BorderStyle.solid),
                        ),
                        child: const Center(
                          child: Text(
                            "CHANGE",
                            style: AppTextStyle.textStyleHeader,
                          ),
                        )),
                  ),
                ),
              )
            ],
          ),
        ))
      ],
    );
  }
}
