import 'package:flutter/material.dart';

import 'package:synt/until/app_containers.dart';
import 'package:synt/until/app_font_style.dart';
import 'package:synt/until/app_paddings.dart';

class StoreTabWidget extends StatelessWidget {
  final String label;
  const StoreTabWidget({
    Key? key,
    required this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        padding: AppPaddings.defaultPadding,
        decoration: AppContainersDecoration.containerBorder,
        child: Center(
          child: Text(
            "$label",
            style: AppTextStyle.textStyleHeader,
          ),
        ),
      ),
    );
  }
}
