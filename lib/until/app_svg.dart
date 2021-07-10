import 'package:flutter_svg/flutter_svg.dart';
import 'package:synt/theme/app_colors.dart';

abstract class AppSvg {
  static SvgPicture storeItemFirst = SvgPicture.asset(
    "assets/svg/store_item_first.svg",
    color: AppColors.accent,
    height: 100,
  );
  static SvgPicture storeItemSecond = SvgPicture.asset(
    "assets/svg/store_item_second.svg",
    color: AppColors.accent,
    height: 100,
  );
}
