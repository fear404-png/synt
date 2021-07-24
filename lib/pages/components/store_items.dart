import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:synt/blocs/store_bloc/store_bloc.dart';
import 'package:synt/theme/app_colors.dart';

import 'package:synt/until/app_paddings.dart';

import 'store_item.dart';

class StoreItemsWidget extends StatelessWidget {
  final List<Widget> _listItemsSoft = [
    const StoreItemWidget(
      icon: Icon(
        Icons.computer,
        color: AppColors.accent,
      ),
      title: "REAPER",
      description: "Fuck your computer",
      price: "1200",
      type: 0,
    ),
  ];

  StoreItemsWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<StoreBloc, StoreState>(builder: (context, state) {
      if (state is StoreShowSoftware) {
        return Padding(
          padding: AppPaddings.defaultPadding,
          child: ListView.builder(
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
              itemCount: state.itemsHardwareRam.length +
                  state.itemsHardwareMemory.length,
              itemBuilder: (context, index) {
                if (index <= state.itemsHardwareRam.length - 1 &&
                    state.itemsHardwareRam.isNotEmpty) {
                  return StoreItemWidget(
                    icon: state.itemsHardwareRam[index].icon,
                    title: "RAM ${state.itemsHardwareRam[index].ram} gb",
                    description: state.itemsHardwareRam[index].description,
                    price: "${state.itemsHardwareRam[index].price}",
                    type: state.itemsHardwareRam[index],
                  );
                } else if (state.itemsHardwareMemory.isNotEmpty) {
                  return StoreItemWidget(
                    icon: state
                        .itemsHardwareMemory[
                            index - state.itemsHardwareRam.length]
                        .icon,
                    title:
                        "Memory ${state.itemsHardwareMemory[index - state.itemsHardwareRam.length].memory} GB",
                    description: state
                        .itemsHardwareMemory[
                            index - state.itemsHardwareRam.length]
                        .description,
                    price:
                        "${state.itemsHardwareMemory[index - state.itemsHardwareRam.length].price}",
                    type: state.itemsHardwareMemory[
                        index - state.itemsHardwareRam.length],
                  );
                }
                return const Text(
                  "item not found",
                  style: TextStyle(color: AppColors.accent),
                );
              }),
        );
      }

      return const Center(
        child: Text(
          "page not found",
          style: TextStyle(color: AppColors.accent),
        ),
      );
    });
  }
}
