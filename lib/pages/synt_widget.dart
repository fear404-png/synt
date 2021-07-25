import 'package:flutter/material.dart';
import 'package:synt/theme/app_colors.dart';
import 'package:synt/until/app_containers.dart';
import 'package:synt/until/app_font_style.dart';
import 'package:synt/until/app_paddings.dart';

import 'components/synt_page_item.dart';

class SyntWidget extends StatelessWidget {
  const SyntWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppPaddings.defaultPadding,
      child: Column(
        children: const [
          SyntPageItem(
            name: "APPS",
            icon: Icon(
              Icons.apps_outlined,
              color: AppColors.accent,
            ),
          ),
          SyntPageItem(
            name: "INVENTORY",
            icon: Icon(
              Icons.inventory,
              color: AppColors.accent,
            ),
          ),
        ],
      ),
    );
  }
}
