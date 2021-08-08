import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:synt/blocs/inventory_bloc/inventory_bloc.dart';

import 'package:synt/data/hardware.dart';
import 'package:synt/pages/components/inventory_item.dart';
import 'package:synt/theme/app_colors.dart';
import 'package:synt/until/app_paddings.dart';

class InventoryWidget extends StatelessWidget {
  const InventoryWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => InventoryBloc(),
      child: Scaffold(
          appBar: AppBar(
            foregroundColor: AppColors.accent,
          ),
          backgroundColor: AppColors.background,
          body: Padding(
            padding: AppPaddings.defaultPadding,
            child: ListView.builder(
                itemCount: BlocProvider.of<InventoryBloc>(context)
                    .state
                    .hardwareItems
                    .length,
                itemBuilder: (context, index) {
                  Hardware item = BlocProvider.of<InventoryBloc>(context)
                      .state
                      .hardwareItems[index];

                  return InventoryItem(
                    description: item.description,
                    name: item.name,
                    icon: item.icon,
                  );
                }),
          )),
    );
  }
}
