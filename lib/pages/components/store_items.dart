import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:synt/blocs/store_bloc/items/antivirus.dart';
import 'package:synt/blocs/store_bloc/items/bypasser.dart';
import 'package:synt/blocs/store_bloc/items/cpu.dart';
import 'package:synt/blocs/store_bloc/items/firewall.dart';
import 'package:synt/blocs/store_bloc/items/memory.dart';
import 'package:synt/blocs/store_bloc/items/network.dart';
import 'package:synt/blocs/store_bloc/items/password_cracker.dart';
import 'package:synt/blocs/store_bloc/items/password_encryptor.dart';
import 'package:synt/blocs/store_bloc/items/ram.dart';
import 'package:synt/blocs/store_bloc/items/spam.dart';
import 'package:synt/blocs/store_bloc/items/spyware.dart';
import 'package:synt/blocs/store_bloc/store_bloc.dart';
import 'package:synt/theme/app_colors.dart';

import 'package:synt/until/app_paddings.dart';

import 'store_item.dart';

//лист с айтемами
class StoreItemsWidget extends StatelessWidget {
  StoreItemsWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<StoreBloc, StoreState>(builder: (context, state) {
      //генерация листа в зависимости от выбранной категории

      List itemsHardware = [];
      List itemsSoftware = [];

      for (var element in state.itemsHardwareRam) {
        itemsHardware.add(element);
      }
      for (var element in state.itemsHardwareMemory) {
        itemsHardware.add(element);
      }
      for (var element in state.itemsHardwareCpu) {
        itemsHardware.add(element);
      }
      for (var element in state.itemsHardwareNetwork) {
        itemsHardware.add(element);
      }

      for (var element in state.itemsSoftwareAntivirus) {
        itemsSoftware.add(element);
      }

      for (var element in state.itemsSoftwareBypasser) {
        itemsSoftware.add(element);
      }

      for (var element in state.itemsSoftwareFirewall) {
        itemsSoftware.add(element);
      }

      for (var element in state.itemsSoftwarePasswordCracker) {
        itemsSoftware.add(element);
      }

      for (var element in state.itemsSoftwarePasswordEncryptor) {
        itemsSoftware.add(element);
      }

      for (var element in state.itemsSoftwareSpam) {
        itemsSoftware.add(element);
      }

      for (var element in state.itemsSoftwareSpyware) {
        itemsSoftware.add(element);
      }

      if (state is StoreShowSoftware) {
        return Padding(
          padding: AppPaddings.defaultPadding,
          child: ListView.builder(
              itemCount: itemsSoftware.length,
              itemBuilder: (context, index) {
                if (itemsSoftware[index] is Antivirus) {
                  Antivirus _item = itemsSoftware[index];
                  return StoreItemWidget(
                      icon: _item.icon,
                      title: "Antivirus ${_item.lvl} lvl",
                      description: _item.description,
                      price: _item.price,
                      type: _item);
                }
                if (itemsSoftware[index] is Bypasser) {
                  Bypasser _item = itemsSoftware[index];
                  return StoreItemWidget(
                      icon: _item.icon,
                      title: "Bypasser ${_item.lvl} lvl",
                      description: _item.description,
                      price: _item.price,
                      type: _item);
                }
                if (itemsSoftware[index] is Firewall) {
                  Firewall _item = itemsSoftware[index];
                  return StoreItemWidget(
                      icon: _item.icon,
                      title: "Firewall ${_item.lvl} lvl",
                      description: _item.description,
                      price: _item.price,
                      type: _item);
                }
                if (itemsSoftware[index] is PasswordCracker) {
                  PasswordCracker _item = itemsSoftware[index];
                  return StoreItemWidget(
                      icon: _item.icon,
                      title: "Password cracker ${_item.lvl} lvl",
                      description: _item.description,
                      price: _item.price,
                      type: _item);
                }
                if (itemsSoftware[index] is PasswordEncryptor) {
                  PasswordEncryptor _item = itemsSoftware[index];
                  return StoreItemWidget(
                      icon: _item.icon,
                      title: "Password encryptor ${_item.lvl} lvl",
                      description: _item.description,
                      price: _item.price,
                      type: _item);
                }
                if (itemsSoftware[index] is Spam) {
                  Spam _item = itemsSoftware[index];
                  return StoreItemWidget(
                      icon: _item.icon,
                      title: "Spam ${_item.lvl} lvl",
                      description: _item.description,
                      price: _item.price,
                      type: _item);
                }
                if (itemsSoftware[index] is Spyware) {
                  Spyware _item = itemsSoftware[index];
                  return StoreItemWidget(
                      icon: _item.icon,
                      title: "Spyware ${_item.lvl} lvl",
                      description: _item.description,
                      price: _item.price,
                      type: _item);
                }
                return const Text(
                  "item not found",
                  style: TextStyle(color: AppColors.accent),
                );
              }),
        );
      }

      if (state is StoreShowHardware) {
        return Padding(
          padding: AppPaddings.defaultPadding,
          //генерация листа с айтемами магазина

          child: ListView.builder(
              itemCount: itemsHardware.length,
              itemBuilder: (context, index) {
                if (itemsHardware[index] is RAM) {
                  RAM _ram = itemsHardware[index];
                  return StoreItemWidget(
                      icon: _ram.icon,
                      title: "RAM ${_ram.ram} GB",
                      description: _ram.description,
                      price: _ram.price,
                      type: _ram);
                }
                if (itemsHardware[index] is Memory) {
                  Memory _memory = itemsHardware[index];
                  return StoreItemWidget(
                      icon: _memory.icon,
                      title: "Memory ${_memory.memory} GB",
                      description: _memory.description,
                      price: _memory.price,
                      type: _memory);
                }

                if (itemsHardware[index] is CPU) {
                  CPU _cpu = itemsHardware[index];
                  return StoreItemWidget(
                      icon: _cpu.icon,
                      title: "CPU ${_cpu.gflops} GFLOPS",
                      description: _cpu.description,
                      price: _cpu.price,
                      type: _cpu);
                }

                if (itemsHardware[index] is Network) {
                  Network _network = itemsHardware[index];
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
