import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:synt/data/hardware.dart';

part 'device_event.dart';
part 'device_state.dart';

class DeviceBloc extends Bloc<DeviceEvent, DeviceState> {
  static double _usedMemory = 0;
  static double _usedRam = 0;
  static double _usedCpu = 0;
  static double _usedNetwork = 0;

  static RAM _installedRam = RAM("default", "default", 0, 0);
  static Memory _installedMemory = Memory("default", "default", 0, 0);
  static CPU _installedCpu = CPU("default", "default", 0, 0);
  static Network _installedNetwork = Network("default", "default", 0, 0);

  DeviceBloc()
      : super(DeviceInitial(_usedMemory, _usedRam, _usedCpu, _usedNetwork,
            _installedRam, _installedMemory, _installedCpu, _installedNetwork));

  @override
  Stream<DeviceState> mapEventToState(
    DeviceEvent event,
  ) async* {
    if (event is SetInstalledItem) {
      if (event.item is RAM) {
        _installedRam = event.item;
      } else if (event.item is Memory) {
        _installedMemory = event.item;
      } else if (event.item is CPU) {
        _installedCpu = event.item;
      } else if (event.item is Network) {
        _installedNetwork = event.item;
      }
    } else if (event is AddUsedResource) {
      String type = event.type.toLowerCase();
      switch (type) {
        case "ram":
          _usedRam += event.resource;
          break;
        case "memory":
          _usedMemory += event.resource;
          break;
        case "cpu":
          _usedCpu += event.resource;
          break;
        case "network":
          _usedNetwork += event.resource;
          break;
      }
    } else if (event is RemoveUsedResource) {
      String type = event.type.toLowerCase();
      switch (type) {
        case "ram":
          _usedRam -= event.resource;
          break;
        case "memory":
          _usedMemory -= event.resource;
          break;
        case "cpu":
          _usedCpu -= event.resource;
          break;
        case "network":
          _usedNetwork -= event.resource;
          break;
      }
    }
    yield DeviceInitial(_usedMemory, _usedRam, _usedCpu, _usedNetwork,
        _installedRam, _installedMemory, _installedCpu, _installedNetwork);
  }
}
