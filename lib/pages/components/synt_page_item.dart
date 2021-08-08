import 'package:flutter/material.dart';
import 'package:synt/theme/app_colors.dart';
import 'package:synt/until/app_containers.dart';
import 'package:synt/until/app_font_style.dart';
import 'package:synt/until/app_paddings.dart';

class SyntPageItem extends StatefulWidget {
  final String name;
  final Icon icon;
  final String pathPage;

  const SyntPageItem({
    Key? key,
    required this.name,
    required this.icon,
    required this.pathPage,
  }) : super(key: key);

  @override
  State<SyntPageItem> createState() => _SyntPageItemState();
}

class _SyntPageItemState extends State<SyntPageItem> {
  static bool isNotPress = true;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: GestureDetector(
        onTap: () => Navigator.of(context).pushNamed(widget.pathPage),
        onTapDown: (TapDownDetails t) => setState(() => isNotPress = false),
        onTapUp: (TapUpDetails t) => setState(() => isNotPress = true),
        onTapCancel: () => setState(() => isNotPress = true),
        child: Row(
          children: [
            CustumContainer(
                color: isNotPress ? AppColors.background : AppColors.accent,
                width: isNotPress ? 45 : 35,
                height: 45,
                child: widget.icon,
                crossAxisAlignment: CrossAxisAlignment.center),
            isNotPress ? AppPaddings.defaultSizedBoxWidth : SizedBox(),
            Expanded(
                child: CustumContainer(
              color: isNotPress ? AppColors.background : AppColors.accent,
              height: 45,
              child: Text(
                widget.name,
                style: isNotPress
                    ? AppTextStyle.textStyleHeader
                    : AppTextStyle.negativeTextStyle,
              ),
              crossAxisAlignment: CrossAxisAlignment.center,
            )),
            isNotPress ? AppPaddings.defaultSizedBoxWidth : SizedBox(),
            CustumContainer(
                color: isNotPress ? AppColors.background : AppColors.accent,
                width: isNotPress ? 45 : 35,
                height: 45,
                child: widget.icon,
                crossAxisAlignment: CrossAxisAlignment.center)
          ],
        ),
      ),
    );
  }
}
