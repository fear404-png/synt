import 'package:flutter/material.dart';
import 'package:synt/until/app_containers.dart';
import 'package:synt/until/app_font_style.dart';
import 'package:synt/until/app_paddings.dart';

class ScanItemWidget extends StatelessWidget {
  final String ip;
  const ScanItemWidget({
    Key? key,
    required this.ip,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppPaddings.defaultPadding,
      child: Expanded(
        child: CustomContainer(
          crossAxisAlignment: CrossAxisAlignment.center,
          height: 45,
          child: Text(
            ip,
            style: AppTextStyle.textStyleHeader,
          ),
        ),
      ),
    );
  }
}
