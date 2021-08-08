import 'package:flutter/material.dart';

import 'package:synt/theme/app_colors.dart';
import 'package:synt/until/app_font_style.dart';

import 'package:synt/until/app_paddings.dart';

import 'components/store_items_hardware.dart';

import 'components/store_items_software.dart';
import 'components/store_vignette.dart';

class StoreWidget extends StatefulWidget {
  const StoreWidget({Key? key}) : super(key: key);

  @override
  State<StoreWidget> createState() => _StoreWidgetState();
}

class _StoreWidgetState extends State<StoreWidget>
    with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Padding(
        padding: AppPaddings.defaultPadding,
        child: Column(
          children: [
            //табы с выбором категорий товаров
            const TabBar(
              indicatorColor: AppColors.accent,
              tabs: [
                Text(
                  "HARDWARE",
                  style: AppTextStyle.textStyleHeader,
                ),
                Text("SOFTWARE", style: AppTextStyle.textStyleHeader)
              ],
            ),
            AppPaddings.defaultSizedBoxHeight,
            Expanded(
              child: Stack(
                children: const [
                  //генерация айтемов в магазине
                  TabBarView(children: [
                    StoreItemsHardwareWidget(),
                    StoreItemsSoftwareWidget(),
                  ]),
                  //затемнение сверху всех айтемов
                  StoreVignette()
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;
}
