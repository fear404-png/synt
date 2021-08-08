import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:synt/blocs/main_logic.dart';
import 'package:synt/blocs/store_bloc/store_bloc.dart';


import 'package:synt/pages/main_screen_widget.dart';
import 'package:synt/theme/app_colors.dart';

import 'package:synt/until/app_containers.dart';
import 'package:synt/until/app_font_style.dart';
import 'package:synt/until/app_paddings.dart';

//верстка айтема магазина
class StoreItemWidget extends StatefulWidget {
  final Icon icon;
  final String title;
  final String description;
  int price = 100;
  final Object type;

  StoreItemWidget({
    Key? key,
    required this.icon,
    required this.title,
    required this.description,
    required this.price,
    required this.type,
  }) : super(key: key);

  @override
  State<StoreItemWidget> createState() => _StoreItemWidgetState();
}

class _StoreItemWidgetState extends State<StoreItemWidget> {
  bool isNotPress = true;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        children: [
          CustumContainer(
            crossAxisAlignment: CrossAxisAlignment.center,
            width: 45,
            height: 45,
            child: widget.icon,
          ),
          AppPaddings.defaultSizedBoxWidth,
          Expanded(
              child: CustumContainer(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "${widget.title}",
                          style: AppTextStyle.textStyleHeader,
                          maxLines: 1,
                        ),
                        Text(
                          "${widget.description}",
                          style: AppTextStyle.textStyle,
                          maxLines: 1,
                        ),
                      ],
                    ),
                  ),
                  height: 45)),
          AppPaddings.defaultSizedBoxWidth,
          GestureDetector(
            onTap: () {
              MainLogic.buyItem(context, widget.type);
            },
            onTapDown: (TapDownDetails t) => setState(() => isNotPress = false),
            onTapUp: (TapUpDetails t) => setState(() => isNotPress = true),
            onTapCancel: () => setState(() => isNotPress = true),
            child: CustumContainer(
                color: isNotPress ? AppColors.background : AppColors.accent,
                crossAxisAlignment: CrossAxisAlignment.center,
                child: Container(
                  child: Text(
                    isNotPress ? "${widget.price} BTC" : "BUY",
                    style: isNotPress
                        ? AppTextStyle.textStyle
                        : AppTextStyle.negativeTextStyle,
                    maxLines: 1,
                  ),
                ),
                width: isNotPress ? 100 : 120,
                height: 45),
          ),
        ],
      ),
    );
  }
}

////
////
////
////
////
////
////
////
////
////
////
////
////
////
////
////
////
////
////
////
////
////
////
////
////
////
////
////
////
////
////
////
////
////
////
////
////
////
////
////
////
////
////
////
////
////
////
////
////
////
////
////
////
////
////
////
////
////
////
////
////
////
////
////
////
////
////
////
////
////
////
////
////
////
////
////
////
////
////
////
////
////
////
////
////
////
////
////
////
////
////
////
////
////
////
////
////
////
////
////
////
////
////
////
////
////
////
////
////
////
////
////
////
////
////
////
////
////
////
////
////
////
////
////
////
////
////
////
////
////
////
////
////
////
////
////
////
////
////
////
////
////
////
////
////
////
////
////
////
////
////
////
////
////
////
////
////
////
////
////
////
////
////
////
////
////
////
////
////
////
////
////
////
////
////
////
////
////
////
////
////
////
////
////
////
////
////
////
////
////
////
////
////
////
////
//// Жил ежик. Наступила осень. Ежик залез в свое дупло. Ежик сдох.
