import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:synt/blocs/store_bloc/items/cpu.dart';
import 'package:synt/blocs/store_bloc/items/memory.dart';
import 'package:synt/blocs/store_bloc/items/ram.dart';
import 'package:synt/data/device.dart';

part 'device_event.dart';
part 'device_state.dart';

class DeviceBloc extends Bloc<DeviceEvent, DeviceState> {
  RAM ram = Device.ram;
  Memory memory = Device.memory;
  CPU cpu = Device.cpu;
  DeviceBloc() : super(DeviceInitial(Device.ram, Device.memory, Device.cpu));

  @override
  Stream<DeviceState> mapEventToState(
    DeviceEvent event,
  ) async* {
    if (event is ChangeRam) {
      Device.ram = event.ram;
      ram = Device.ram;

      yield DeviceInitial(ram, memory, cpu);
    }
    if (event is ChangeMemory) {
      Device.memory = event.memory;
      memory = Device.memory;
      yield DeviceInitial(ram, memory, cpu);
    }
    if (event is ChangeCpu) {
      Device.cpu = event.cpu;
      cpu = Device.cpu;
      yield DeviceInitial(ram, memory, cpu);
    }
  }
}
