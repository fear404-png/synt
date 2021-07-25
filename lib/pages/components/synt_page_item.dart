import 'package:flutter/material.dart';
import 'package:synt/theme/app_colors.dart';
import 'package:synt/until/app_containers.dart';
import 'package:synt/until/app_font_style.dart';
import 'package:synt/until/app_paddings.dart';

class SyntPageItem extends StatelessWidget {
  final String name;
  final Icon icon;
  const SyntPageItem({
    Key? key,
    required this.name,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Row(
        children: [
          StoreContainer(
              width: 45,
              height: 45,
              child: icon,
              crossAxisAlignment: CrossAxisAlignment.center),
          AppPaddings.defaultSizedBoxWidth,
          Expanded(
              child: StoreContainer(
            height: 45,
            child: Text(
              name,
              style: AppTextStyle.textStyleHeader,
            ),
            crossAxisAlignment: CrossAxisAlignment.center,
          )),
          AppPaddings.defaultSizedBoxWidth,
          StoreContainer(
              width: 45,
              height: 45,
              child: icon,
              crossAxisAlignment: CrossAxisAlignment.center)
        ],
      ),
    );
  }
}
