import 'package:flutter/cupertino.dart';
import 'package:synt/theme/app_colors.dart';

import 'package:flutter/material.dart';
import 'package:synt/until/app_svg.dart';

abstract class AppContainersDecoration {
  static BoxDecoration containerBorder = BoxDecoration(
    border: Border.all(
        color: AppColors.accent, width: 1.0, style: BorderStyle.solid),
  );

  static BoxDecoration containerBorderWithBg = BoxDecoration(
    color: AppColors.background,
    border: Border.all(
        color: AppColors.accent, width: 2.0, style: BorderStyle.solid),
  );
}

class StoreContainer extends StatelessWidget {
  final Widget child;
  final double? width;
  final double? height;
  final CrossAxisAlignment crossAxisAlignment;
  const StoreContainer(
      {Key? key,
      required this.child,
      this.width,
      this.height,
      required this.crossAxisAlignment})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      child: Column(
        crossAxisAlignment: this.crossAxisAlignment,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [AppSvg.arrowTopLeft, AppSvg.arrowTopRight],
          ),
          child,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [AppSvg.arrowBottomLeft, AppSvg.arrowBottomRight],
          )
        ],
      ),
    );
  }
}
