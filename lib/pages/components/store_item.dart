import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:synt/blocs/appbar_bloc/appbar_bloc.dart';
import 'package:synt/blocs/store_bloc/store_bloc.dart';
import 'package:synt/data/player.dart';
import 'package:synt/theme/app_colors.dart';

import 'package:synt/until/app_containers.dart';
import 'package:synt/until/app_font_style.dart';
import 'package:synt/until/app_paddings.dart';

//верстка айтема магазина
class StoreItemWidget extends StatelessWidget {
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
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        children: [
          CustomContainer(
            crossAxisAlignment: CrossAxisAlignment.center,
            width: 45,
            height: 45,
            child: icon,
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
          GestureDetector(
            onTap: () {
              if (Player.btc >= price) {
                BlocProvider.of<StoreBloc>(context).add(BuyItem(type));
                BlocProvider.of<AppbarBloc>(context).add(RemoveBtc(price));
              }
            },
            child: CustomContainer(
                crossAxisAlignment: CrossAxisAlignment.center,
                child: Container(
                  child: Text(
                    "$price BTC",
                    style: AppTextStyle.textStyle,
                    maxLines: 1,
                  ),
                ),
                width: 100,
                height: 45),
          ),
        ],
      ),
    );
  }
}

class AddBtc {}
