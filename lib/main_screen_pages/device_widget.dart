import 'package:flutter/material.dart';
import 'package:synt/theme/app_colors.dart';

class DeviceWidget extends StatelessWidget {
  const DeviceWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "Device",
        style: TextStyle(backgroundColor: AppColors.accent),
      ),
    );
  }
}
