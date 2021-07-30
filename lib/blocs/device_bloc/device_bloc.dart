import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:synt/blocs/store_bloc/items/cpu.dart';
import 'package:synt/blocs/store_bloc/items/memory.dart';
import 'package:synt/blocs/store_bloc/items/network.dart';
import 'package:synt/blocs/store_bloc/items/ram.dart';
import 'package:synt/data/data.dart';

part 'device_event.dart';
part 'device_state.dart';

class DeviceBloc extends Bloc<DeviceEvent, DeviceState> {
  RAM ram = UserData.userData.installedRam;
  Memory memory = UserData.userData.installedMemory;
  CPU cpu = UserData.userData.installedCpu;
  Network network = UserData.userData.installedNetwork;
  DeviceBloc()
      : super(DeviceInitial(
            UserData.userData.installedRam,
            UserData.userData.installedMemory,
            UserData.userData.installedCpu,
            UserData.userData.installedNetwork));

  @override
  Stream<DeviceState> mapEventToState(
    DeviceEvent event,
  ) async* {
    if (event is ChangeRam) {
      UserData.userData.setRam(event.ram);
      ram = UserData.userData.installedRam;

      yield DeviceInitial(ram, memory, cpu, network);
    }
    if (event is ChangeMemory) {
      UserData.userData.setMemory(event.memory);
      memory = UserData.userData.installedMemory;

      yield DeviceInitial(ram, memory, cpu, network);
    }
    if (event is ChangeCpu) {
      UserData.userData.setCpu(event.cpu);
      cpu = UserData.userData.installedCpu;

      yield DeviceInitial(ram, memory, cpu, network);
    }
    if (event is ChangeNetwork) {
      UserData.userData.setNetwork(event.network);
      network = UserData.userData.installedNetwork;

      yield DeviceInitial(ram, memory, cpu, network);
    }
  }
}
