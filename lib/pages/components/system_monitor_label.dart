import 'package:flutter/material.dart';
import 'package:synt/until/app_containers.dart';
import 'package:synt/until/app_font_style.dart';

class SystemMonitorLabel extends StatelessWidget {
  const SystemMonitorLabel({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: AppContainersDecoration.containerBorder,
      height: 30,
      child: Center(
        child: Text(
          "SYSTEM MONITOR",
          style: AppTextStyle.textStyleHeader,
        ),
      ),
    );
  }
}
