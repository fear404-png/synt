import 'package:flutter/material.dart';
import 'package:synt/theme/app_colors.dart';
import 'package:synt/until/app_containers.dart';
import 'package:synt/until/app_font_style.dart';
import 'package:synt/until/app_paddings.dart';
import 'package:synt/until/app_svg.dart';

class StoreWidget extends StatefulWidget {
  StoreWidget({Key? key}) : super(key: key);

  @override
  State<StoreWidget> createState() => _StoreWidgetState();
}

class _StoreWidgetState extends State<StoreWidget> {
  final _storeItems = [
    _CategoryNameWidget(),
    _StoreItemWidget(
      title: "ANTIVIRUS",
      description:
          "At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti",
      price: 200,
      icon: Icon(Icons.favorite_rounded, size: 100),
    ),
    _StoreItemWidget(
      title: "ANTIVIRUS",
      description:
          "At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti",
      price: 200,
      icon: Icon(Icons.favorite_rounded, size: 100),
    ),
    _StoreItemWidget(
      title: "ANTIVIRUS",
      description:
          "At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti",
      price: 200,
      icon: Icon(Icons.favorite_rounded, size: 100),
    ),
    _StoreItemWidget(
      title: "ANTIVIRUS",
      description:
          "At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti",
      price: 200,
      icon: Icon(Icons.favorite_rounded, size: 100),
    ),
    _StoreItemWidget(
      title: "ANTIVIRUS",
      description:
          "At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti",
      price: 200,
      icon: Icon(Icons.favorite_rounded, size: 100),
    ),
    _StoreItemWidget(
      title: "ANTIVIRUS",
      description:
          "At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti",
      price: 200,
      icon: Icon(Icons.favorite_rounded, size: 100),
    ),
    _StoreItemWidget(
      title: "ANTIVIRUS",
      description:
          "At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti",
      price: 200,
      icon: Icon(Icons.favorite_rounded, size: 100),
    ),
    _StoreItemWidget(
      title: "ANTIVIRUS",
      description:
          "At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti",
      price: 200,
      icon: Icon(Icons.favorite_rounded, size: 100),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        physics: ClampingScrollPhysics(),
        itemCount: _storeItems.length,
        itemBuilder: (context, index) {
          return _storeItems[index];
        });
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
    required String title,
    required String description,
    required int price,
    required Icon icon,
  })  : _title = title,
        _description = description,
        _price = price,
        _icon = icon,
        super(key: key);

  final String _title;
  final String _description;
  final int _price;
  final Icon? _icon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      child: Row(
        children: [
          AppSvg.storeItemFirst,
          AppPaddings.dafaultSizedBoxWidth,
          Container(
            height: 100,
            width: 100,
            color: AppColors.accent,
            child: Center(child: _icon),
          ),
          AppPaddings.dafaultSizedBoxWidth,
          Expanded(
              child: Container(
            color: AppColors.accent,
            height: 100,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 5,
                ),
                Container(
                  color: AppColors.background,
                  height: 10,
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  color: AppColors.background,
                  height: 10,
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  color: AppColors.background,
                  height: 10,
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  color: AppColors.background,
                  height: 10,
                ),
              ],
            ),
          )),
          Stack(
            overflow: Overflow.visible,
            children: [
              AppSvg.storeItemSecond,
              Positioned(
                top: 10,
                right: -5,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  decoration: AppContainers.containerBorderWithBg,
                  height: 25,
                  child: Center(
                    child: Text(
                      "$_price BTC",
                      style: AppFontStyle.textStyleHeader,
                    ),
                  ),
                ),
              ),
              Positioned(
                  top: 10,
                  left: 10,
                  child: Container(
                    width: 150,
                    child: Text(
                      "$_title",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                      maxLines: 1,
                    ),
                  )),
              Positioned(
                  top: 38,
                  left: 10,
                  child: Container(
                    width: 260,
                    child: Text(
                      "$_description",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 12,
                      ),
                      maxLines: 3,
                    ),
                  ))
            ],
          ),
          AppPaddings.dafaultSizedBoxWidth,
        ],
      ),
    );
  }
}
