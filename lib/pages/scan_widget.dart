import 'package:flutter/material.dart';
import 'package:synt/data/data.dart';
import 'package:synt/theme/app_colors.dart';
import 'package:synt/until/app_containers.dart';
import 'package:synt/until/app_font_style.dart';
import 'package:synt/until/app_paddings.dart';

import 'components/scan_item.dart';

class ScanWidget extends StatelessWidget {
  const ScanWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: AppColors.accent,
      ),
      backgroundColor: AppColors.background,
      body: Padding(
        padding: AppPaddings.defaultPadding,
        child: ListView.builder(
            itemCount: UserData.enemyUsers.length,
            itemBuilder: (context, index) {
              return ScanItemWidget(
                ip: UserData.enemyUsers[index].ip,
              );
            }),
      ),
    );
  }
}
