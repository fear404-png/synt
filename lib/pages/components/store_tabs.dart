import 'package:flutter/material.dart';

import 'package:synt/until/app_paddings.dart';

import 'store_tab.dart';

class StoreTabsWidget extends StatelessWidget {
  const StoreTabsWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: StoreTabWidget(label: "SOFTWARE")),
        AppPaddings.defaultSizedBoxWidth,
        Expanded(child: StoreTabWidget(label: "HARDWARE")),
      ],
    );
  }
}
