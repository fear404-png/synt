import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:synt/blocs/bloc/store_bloc.dart';
import 'package:synt/theme/app_colors.dart';

import 'package:synt/until/app_paddings.dart';

import 'store_item.dart';

class StoreItemsWidget extends StatelessWidget {
  final List<Widget> _listItemsSoft = [
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

  final List<Widget> _listItemsHard = [
    StoreItemWidget(
      icon: Icon(
        Icons.computer,
        color: AppColors.accent,
      ),
      title: "RAM 8 GB",
      description: "Ez",
      price: "1200",
    ),
  ];

  StoreItemsWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<StoreBloc, StoreState>(builder: (context, state) {
      print(state);
      if (state is StoreShowSoftware) {
        return Padding(
          padding: AppPaddings.defaultPadding,
          child: ListView.builder(
              physics: ClampingScrollPhysics(),
              itemCount: _listItemsSoft.length,
              itemBuilder: (context, index) {
                return _listItemsSoft[index];
              }),
        );
      }
      if (state is StoreShowHardware) {
        return Padding(
          padding: AppPaddings.defaultPadding,
          child: ListView.builder(
              physics: ClampingScrollPhysics(),
              itemCount: _listItemsHard.length,
              itemBuilder: (context, index) {
                return _listItemsHard[index];
              }),
        );
      }
      return Center(
        child: Text(
          "page not found",
          style: TextStyle(color: AppColors.accent),
        ),
      );
    });
  }
}
