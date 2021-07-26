import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:synt/blocs/device_bloc/device_bloc.dart';
import 'package:synt/blocs/inventory_bloc/inventory_bloc.dart';
import 'package:synt/blocs/store_bloc/items/cpu.dart';
import 'package:synt/blocs/store_bloc/items/memory.dart';
import 'package:synt/blocs/store_bloc/items/network.dart';
import 'package:synt/blocs/store_bloc/items/ram.dart';

import 'package:synt/theme/app_colors.dart';
import 'package:synt/until/app_paddings.dart';
import 'package:synt/until/global_params.dart';

import 'components/inventory_item.dart';

class HardwareInfo extends StatelessWidget {
  const HardwareInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => InventoryBloc()),
        BlocProvider(create: (context) => DeviceBloc())
      ],
      child: Scaffold(
        appBar: AppBar(
          foregroundColor: AppColors.accent,
        ),
        backgroundColor: AppColors.background,
        body: BlocBuilder<InventoryBloc, InventoryState>(
          builder: (context, state) {
            final type = HardwareInfoType.type;
            return Padding(
              padding: AppPaddings.defaultPadding,
              child: ListView.builder(
                  itemCount: state.items.length,
                  itemBuilder: (context, index) {
                    var item = state.items[index];

                    if (type.toString() == item.toString()) {
                      if (item is RAM) {
                        return GestureDetector(
                          onTap: () {
                            BlocProvider.of<DeviceBloc>(context)
                                .add(ChangeRam(item));

                            Navigator.of(context).pushNamedAndRemoveUntil(
                                '/main_screen',
                                (Route<dynamic> route) => false);
                          },
                          child: InventoryItem(
                            description: item.description,
                            name: "RAM ${item.ram} GB",
                            icon: item.icon,
                          ),
                        );
                      }
                      if (item is Memory) {
                        return GestureDetector(
                          onTap: () {
                            BlocProvider.of<DeviceBloc>(context)
                                .add(ChangeMemory(item));

                            Navigator.of(context).pushNamedAndRemoveUntil(
                                '/main_screen',
                                (Route<dynamic> route) => false);
                          },
                          child: InventoryItem(
                            description: item.description,
                            name: "Memory ${item.memory} GB",
                            icon: item.icon,
                          ),
                        );
                      }
                      if (item is CPU) {
                        return GestureDetector(
                          onTap: () {
                            BlocProvider.of<DeviceBloc>(context)
                                .add(ChangeCpu(item));

                            Navigator.of(context).pushNamedAndRemoveUntil(
                                '/main_screen',
                                (Route<dynamic> route) => false);
                          },
                          child: InventoryItem(
                            description: item.description,
                            name: "CPU ${item.gflops} GFLOPS",
                            icon: item.icon,
                          ),
                        );
                      }
                      if (item is Network) {
                        return GestureDetector(
                          onTap: () {
                            BlocProvider.of<DeviceBloc>(context)
                                .add(ChangeNetwork(item));

                            Navigator.of(context).pushNamedAndRemoveUntil(
                                '/main_screen',
                                (Route<dynamic> route) => false);
                          },
                          child: InventoryItem(
                            description: item.description,
                            name: "Network ${item.speed} Mbit/s",
                            icon: item.icon,
                          ),
                        );
                      }
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
