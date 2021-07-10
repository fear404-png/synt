import 'package:flutter/material.dart';
import 'package:synt/theme/app_colors.dart';
import 'package:synt/until/app_containers.dart';
import 'package:synt/until/app_font_style.dart';
import 'package:synt/until/app_paddings.dart';

class StoreWidget extends StatefulWidget {
  StoreWidget({Key? key}) : super(key: key);

  @override
  State<StoreWidget> createState() => _StoreWidgetState();
}

class _StoreWidgetState extends State<StoreWidget> {
  final _storeItems = [
    _CategoryNameWidget(),
    _StoreItemWidget(),
    _StoreItemWidget(),
    _StoreItemWidget(),
    _StoreItemWidget(),
    _StoreItemWidget(),
    _StoreItemWidget(),
    _StoreItemWidget(),
    _StoreItemWidget(),
    _StoreItemWidget(),
    _StoreItemWidget(),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        physics: ClampingScrollPhysics(),
        itemCount: _storeItems.length,
        itemBuilder: (context, index) {
          return _storeItems[index];
        });
    // return ListView(
    //     children: [
    //       _CategoryNameWidget(),
    //       _StoreItemWidget(),
    //       _StoreItemWidget(),
    //       _StoreItemWidget(),
    //       _StoreItemWidget(),
    //       _StoreItemWidget(),
    //       _StoreItemWidget(),
    //       _StoreItemWidget(),
    //       _StoreItemWidget(),
    //       _StoreItemWidget(),
    //       _StoreItemWidget(),
    //     ],
    //   );
  }
}

class _CategoryNameWidget extends StatelessWidget {
  const _CategoryNameWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppPaddings.defaultPadding,
      child: Container(
        decoration: AppContainers.containerBorder,
        height: 30,
        child: Center(
            child: Text("SOFTWARE", style: AppFontStyle.textStyleHeader)),
      ),
    );
  }
}

class _StoreItemWidget extends StatelessWidget {
  const _StoreItemWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      child: Row(
        children: [
          Container(
            height: 45,
            width: 45,
            decoration: AppContainers.containerBorder,
            child: Center(
              child: Icon(
                Icons.favorite_border,
                color: AppColors.accent,
                size: 30,
              ),
            ),
          ),
          AppPaddings.dafaultSizedBoxWidth,
          Expanded(
            child: Container(
              height: 45,
              alignment: Alignment.center,
              decoration: AppContainers.containerBorder,
              child: Row(
                children: [
                  AppPaddings.dafaultSizedBoxWidth,
                  Text(
                    "ANTIVIRUS",
                    style: AppFontStyle.textStyleHeader,
                  ),
                  Expanded(
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        "100 btc",
                        style: AppFontStyle.textStyleHeader,
                      ),
                    ),
                  ),
                  AppPaddings.dafaultSizedBoxWidth,
                  Container(
                    width: 65,
                    height: 30,
                    decoration: AppContainers.containerBorder,
                    child: Center(
                      child: Text(
                        "BUY",
                        style: AppFontStyle.textStyle,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
