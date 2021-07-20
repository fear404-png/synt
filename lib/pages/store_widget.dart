import 'package:flutter/material.dart';

import 'package:synt/until/app_paddings.dart';

import 'components/store_background.dart';
import 'components/store_items.dart';

import 'components/store_tabs.dart';
import 'components/store_vignette.dart';

class StoreWidget extends StatelessWidget {
  const StoreWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        StoreTabsWidget(),
        AppPaddings.defaultSizedBoxHeight,
        Expanded(
          child: Stack(
            children: [StoreBackground(), StoreItemsWidget(), StoreVignette()],
          ),
        ),
      ],
    );
  }
}
