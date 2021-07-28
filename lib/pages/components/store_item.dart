import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:synt/blocs/appbar_bloc/appbar_bloc.dart';
import 'package:synt/blocs/store_bloc/store_bloc.dart';
import 'package:synt/data/player.dart';
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
          CustomContainer(
            crossAxisAlignment: CrossAxisAlignment.center,
            width: 45,
            height: 45,
            child: widget.icon,
          ),
          AppPaddings.defaultSizedBoxWidth,
          Expanded(
              child: CustomContainer(
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
              if (Player.btc >= widget.price) {
                BlocProvider.of<StoreBloc>(context).add(BuyItem(widget.type));
                BlocProvider.of<AppbarBloc>(context)
                    .add(RemoveBtc(widget.price));
                Scaffold.of(context).showSnackBar(SnackBar(
                    duration: const Duration(milliseconds: 1200),
                    backgroundColor: Colors.transparent,
                    content: Text(
                      "You have purchased a ${widget.title} for ${widget.price} btc",
                      style: AppTextStyle.textStyleHeader,
                    )));
              } else {
                Scaffold.of(context).showSnackBar(const SnackBar(
                    duration: Duration(milliseconds: 600),
                    backgroundColor: AppColors.background,
                    content: Text(
                      "Not enough money",
                      style: AppTextStyle.textStyleHeader,
                    )));
              }
            },
            onTapDown: (TapDownDetails t) => setState(() => isNotPress = false),
            onTapUp: (TapUpDetails t) => setState(() => isNotPress = true),
            onTapCancel: () => setState(() => isNotPress = true),
            child: CustomContainer(
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

class AddBtc {}
