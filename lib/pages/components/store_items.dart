import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:synt/blocs/store_bloc/items/cpu.dart';
import 'package:synt/blocs/store_bloc/items/memory.dart';
import 'package:synt/blocs/store_bloc/items/network.dart';
import 'package:synt/blocs/store_bloc/items/ram.dart';
import 'package:synt/blocs/store_bloc/store_bloc.dart';
import 'package:synt/theme/app_colors.dart';

import 'package:synt/until/app_paddings.dart';

import 'store_item.dart';

//лист с айтемами
class StoreItemsWidget extends StatelessWidget {
  final List<Widget> _listItemsSoft = [
    StoreItemWidget(
      icon: Icon(
        Icons.computer,
        color: AppColors.accent,
      ),
      title: "REAPER",
      description: "Fuck your computer",
      price: 1200,
      type: 0,
    ),
  ];

  StoreItemsWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<StoreBloc, StoreState>(builder: (context, state) {
      //генерация листа в зависимости от выбранной категории

      List items = [];

      for (var element in state.itemsHardwareRam) {
        items.add(element);
      }
      for (var element in state.itemsHardwareMemory) {
        items.add(element);
      }
      for (var element in state.itemsHardwareCpu) {
        items.add(element);
      }
      for (var element in state.itemsHardwareNetwork) {
        items.add(element);
      }

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
          //генерация листа с айтемами магазина

          child: ListView.builder(
              itemCount: items.length,
              itemBuilder: (context, index) {
                if (items[index] is RAM) {
                  RAM _ram = items[index];
                  return StoreItemWidget(
                      icon: _ram.icon,
                      title: "RAM ${_ram.ram} GB",
                      description: _ram.description,
                      price: _ram.price,
                      type: _ram);
                }
                if (items[index] is Memory) {
                  Memory _memory = items[index];
                  return StoreItemWidget(
                      icon: _memory.icon,
                      title: "Memory ${_memory.memory} GB",
                      description: _memory.description,
                      price: _memory.price,
                      type: _memory);
                }

                if (items[index] is CPU) {
                  CPU _cpu = items[index];
                  return StoreItemWidget(
                      icon: _cpu.icon,
                      title: "CPU ${_cpu.gflops} GFLOPS",
                      description: _cpu.description,
                      price: _cpu.price,
                      type: _cpu);
                }

                if (items[index] is Network) {
                  Network _network = items[index];
                  return StoreItemWidget(
                      icon: _network.icon,
                      title: "Network ${_network.speed} Mbit/s",
                      description: _network.description,
                      price: _network.price,
                      type: _network);
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
