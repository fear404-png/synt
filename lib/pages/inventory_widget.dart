import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:synt/blocs/inventory_bloc/inventory_bloc.dart';
import 'package:synt/blocs/store_bloc/items/cpu.dart';
import 'package:synt/blocs/store_bloc/items/memory.dart';
import 'package:synt/blocs/store_bloc/items/network.dart';
import 'package:synt/blocs/store_bloc/items/ram.dart';
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
        body: BlocBuilder<InventoryBloc, InventoryState>(
          builder: (context, state) {
            return Padding(
              padding: AppPaddings.defaultPadding,
              child: ListView.builder(
                  itemCount: state.items.length,
                  itemBuilder: (context, index) {
                    var item = state.items[index];
                    if (item is RAM) {
                      return InventoryItem(
                        description: item.description,
                        name: "RAM ${item.ram} GB",
                        icon: item.icon,
                      );
                    }
                    if (item is Memory) {
                      return InventoryItem(
                        description: item.description,
                        name: "Memory ${item.memory} GB",
                        icon: item.icon,
                      );
                    }
                    if (item is CPU) {
                      return InventoryItem(
                        description: item.description,
                        name: "CPU ${item.gflops} GFLOPS",
                        icon: item.icon,
                      );
                    }
                    if (item is Network) {
                      return InventoryItem(
                        description: item.description,
                        name: "Network ${item.speed} Mbit/s",
                        icon: item.icon,
                      );
                    }

                    return Container();
                  }),
            );
          },
        ),
      ),
    );
  }
}
