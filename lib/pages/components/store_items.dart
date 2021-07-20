import 'package:flutter/material.dart';
import 'package:synt/theme/app_colors.dart';

import 'package:synt/until/app_paddings.dart';

import 'store_item.dart';

class StoreItemsWidget extends StatelessWidget {
  final List<Widget> _listItems = [
    StoreItemWidget(
      icon: Icon(
        Icons.computer,
        color: AppColors.accent,
      ),
      title: "REAPER",
      description: "Fuck your computer",
      price: "1200",
    ),
  ];
  StoreItemsWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppPaddings.defaultPadding,
      child: ListView.builder(
          physics: ClampingScrollPhysics(),
          itemCount: _listItems.length,
          itemBuilder: (context, index) {
            return _listItems[index];
          }),
    );
  }
}
