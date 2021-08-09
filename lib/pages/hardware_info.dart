import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:synt/blocs/device_bloc/device_bloc.dart';
import 'package:synt/blocs/inventory_bloc/inventory_bloc.dart';
import 'package:synt/blocs/main_logic.dart';

import 'package:synt/data/hardware.dart';

import 'package:synt/theme/app_colors.dart';
import 'package:synt/until/app_paddings.dart';

import 'components/inventory_item.dart';

class HardwareInfo extends StatelessWidget {
  const HardwareInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: AppColors.accent,
      ),
      backgroundColor: AppColors.background,
      body: Padding(
        padding: AppPaddings.defaultPadding,
        child: ListView.builder(
            itemCount: BlocProvider.of<InventoryBloc>(context)
                .state
                .onlyOneTypeHardwareItems
                .length,
            itemBuilder: (context, index) {
              Hardware item = BlocProvider.of<InventoryBloc>(context)
                  .state
                  .onlyOneTypeHardwareItems[index];

              return GestureDetector(
                onTap: () {
                  MainLogic.setInstalledHardware(context, item);

                  Navigator.of(context).pushNamedAndRemoveUntil(
                      '/main_screen', (Route<dynamic> route) => false);
                },
                child: InventoryItem(
                  description: item.description,
                  name: item.name,
                  icon: item.icon,
                ),
              );
            }),
      ),
    );
  }
}
