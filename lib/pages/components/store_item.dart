import 'package:flutter/material.dart';

import 'package:synt/until/app_containers.dart';
import 'package:synt/until/app_font_style.dart';
import 'package:synt/until/app_paddings.dart';

class StoreItemWidget extends StatelessWidget {
  final Icon icon;
  final String title;
  final String description;
  final String price;
  const StoreItemWidget({
    Key? key,
    required this.icon,
    required this.title,
    required this.description,
    required this.price,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        children: [
          StoreContainer(
            crossAxisAlignment: CrossAxisAlignment.center,
            width: 45,
            height: 45,
            child: icon as Widget,
          ),
          AppPaddings.defaultSizedBoxWidth,
          Expanded(
              child: StoreContainer(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "$title",
                          style: AppTextStyle.textStyleHeader,
                          maxLines: 1,
                        ),
                        Text(
                          "$description",
                          style: AppTextStyle.textStyle,
                          maxLines: 1,
                        ),
                      ],
                    ),
                  ),
                  height: 45)),
          AppPaddings.defaultSizedBoxWidth,
          StoreContainer(
              crossAxisAlignment: CrossAxisAlignment.center,
              child: Text(
                "$price BTC",
                style: AppTextStyle.textStyleHeader,
              ),
              width: 100,
              height: 45)
        ],
      ),
    );
  }
}
