import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:synt/theme/app_colors.dart';

//здесь храняться svg
abstract class AppSvg {
  static final SvgPicture arrowTopLeft =
      SvgPicture.asset("assets/svg/arrow_top_left.svg");
  static final SvgPicture arrowTopRight =
      SvgPicture.asset("assets/svg/arrow_top_right.svg");
  static final SvgPicture arrowBottomLeft =
      SvgPicture.asset("assets/svg/arrow_bottom_left.svg");
  static final SvgPicture arrowBottomRight =
      SvgPicture.asset("assets/svg/arrow_bottom_right.svg");
}
