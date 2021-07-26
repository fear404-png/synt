import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:synt/blocs/device_bloc/device_bloc.dart';
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
    return BlocProvider(
      create: (context) => DeviceBloc(),
      child: Padding(
        padding: AppPaddings.defaultPadding,
        child: BlocBuilder<DeviceBloc, DeviceState>(
          builder: (context, state) {
            return ListView(
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
                  info: "RAM ${state.ram.ram} GB",
                  icon: state.ram.icon,
                  type: state.ram,
                ),
                AppPaddings.defaultSizedBoxHeight,
                SystemMonitorList(
                    name: "Memory",
                    info: "Memory ${state.memory.memory} GB",
                    icon: state.memory.icon,
                    type: state.memory),
                AppPaddings.defaultSizedBoxHeight,
                SystemMonitorList(
                    name: "CPU",
                    info: "CPU ${state.cpu.gflops} GFLOPS",
                    icon: state.cpu.icon,
                    type: state.cpu),
                AppPaddings.defaultSizedBoxHeight,
                SystemMonitorList(
                    name: "Network",
                    info: "${state.network.speed} Mbit/s",
                    icon: state.network.icon,
                    type: state.network),
              ],
            );
          },
        ),
      ),
    );
  }
}
