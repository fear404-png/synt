import 'package:flutter/material.dart';
import 'package:synt/pages/components/system_monitor_label.dart';
import 'package:synt/theme/app_colors.dart';

import 'package:synt/until/app_paddings.dart';

import 'components/system_bar.dart';
import 'components/system_monitor_list.dart';

class DeviceWidget extends StatelessWidget {
  const DeviceWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppPaddings.defaultPadding,
      child: ListView(
        children: [
          SystemBar(),
          AppPaddings.defaultSizedBoxHeight,
          SystemMonitorLabel(),
          AppPaddings.defaultSizedBoxHeight,
          SystemMonitorList(),
          AppPaddings.defaultSizedBoxHeight,
          SystemMonitorList(),
          AppPaddings.defaultSizedBoxHeight,
          SystemMonitorList(),
          AppPaddings.defaultSizedBoxHeight,
          SystemMonitorList(),
        ],
      ),
    );
  }
}
