import 'package:flutter/material.dart';
import 'package:synt/until/app_font_style.dart';
import 'package:synt/until/app_paddings.dart';

class ProcessesTitle extends StatelessWidget {
  const ProcessesTitle({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        Text(
          "Total: 18",
          style: AppTextStyle.textStyleHeader,
        ),
        AppPaddings.defaultSizedBoxWidth,
        Text(
          "Running: 2",
          style: AppTextStyle.textStyleHeader,
        ),
      ],
    );
  }
}
