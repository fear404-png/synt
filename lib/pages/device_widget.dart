import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:synt/blocs/device_bloc/device_bloc.dart';
import 'package:synt/data/hardware.dart';
import 'package:synt/pages/components/system_monitor_label.dart';
import 'package:synt/theme/app_colors.dart';

import 'package:synt/until/app_paddings.dart';

import 'components/system_bar.dart';
import 'components/system_monitor_list.dart';

//страница с информацией о девайсе
class DeviceWidget extends StatelessWidget {
  const DeviceWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    RAM ram = BlocProvider.of<DeviceBloc>(context).state.installedRam;
    Memory memory = BlocProvider.of<DeviceBloc>(context).state.installedMemory;
    CPU cpu = BlocProvider.of<DeviceBloc>(context).state.installedCpu;
    Network network =
        BlocProvider.of<DeviceBloc>(context).state.installedNetwork;
    return Padding(
      padding: AppPaddings.defaultPadding,
      child: ListView(
        children: [
          // Основное окно информации
          const SystemBar(),
          AppPaddings.defaultSizedBoxHeight,
          // Просто плашка с названием
          const SystemMonitorLabel(),
          AppPaddings.defaultSizedBoxHeight,
          // Показывает какие слоты установлены и их состояние
          SystemMonitorList(
            name: "RAM",
            info: ram.name,
            icon: ram.icon,
            type: ram,
          ),
          AppPaddings.defaultSizedBoxHeight,
          SystemMonitorList(
              name: "Memory",
              info: memory.name,
              icon: memory.icon,
              type: memory),
          AppPaddings.defaultSizedBoxHeight,
          SystemMonitorList(
              name: "CPU", info: cpu.name, icon: cpu.icon, type: cpu),
          AppPaddings.defaultSizedBoxHeight,
          SystemMonitorList(
              name: "Network",
              info: network.name,
              icon: network.icon,
              type: network),
        ],
      ),
    );
  }
}
