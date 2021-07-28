import 'package:flutter/material.dart';
import 'package:synt/theme/app_colors.dart';

import 'package:synt/until/app_paddings.dart';

import 'components/synt_page_item.dart';

class SyntWidget extends StatelessWidget {
  const SyntWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppPaddings.defaultPadding,
      child: Column(
        children: [
          GestureDetector(
            onTap: () => Navigator.of(context).pushNamed("/main_screen/apps"),
            child: const SyntPageItem(
                name: "APPS",
                icon: Icon(
                  Icons.apps_outlined,
                  color: AppColors.accent,
                ),
                pathPage: "/main_screen/apps"),
          ),
          const SyntPageItem(
            name: "INVENTORY",
            icon: Icon(
              Icons.inventory,
              color: AppColors.accent,
            ),
            pathPage: "/main_screen/inventory",
          ),
        ],
      ),
    );
  }
}
