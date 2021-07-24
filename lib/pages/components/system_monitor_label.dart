import 'package:flutter/material.dart';
import 'package:synt/until/app_containers.dart';
import 'package:synt/until/app_font_style.dart';

// просто табличка с названием, ничего не обчыного
class SystemMonitorLabel extends StatelessWidget {
  const SystemMonitorLabel({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: AppContainersDecoration.containerBorder,
      height: 30,
      child: const Center(
        child: Text(
          "SYSTEM MONITOR",
          style: AppTextStyle.textStyleHeader,
        ),
      ),
    );
  }
}
