import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:synt/blocs/appbar_bloc/appbar_bloc.dart';
import 'package:synt/blocs/device_bloc/device_bloc.dart';
import 'package:synt/blocs/store_bloc/items/cpu.dart';
import 'package:synt/blocs/store_bloc/items/network.dart';
import 'package:synt/data/player.dart';

import 'items/memory.dart';
import 'items/ram.dart';

part 'store_event.dart';
part 'store_state.dart';

class StoreBloc extends Bloc<StoreEvent, StoreState> {
  static final List<RAM> _itemsHardwareRam = [
    RAM(4, "Random-access memory ", 1000),
    RAM(8, "Random-access memory ", 1800),
    RAM(16, "Random-access memory ", 3200),
  ];

  static final List<Memory> _itemsHardwareMemory = [
    Memory(128, "Increases the storage", 500),
    Memory(256, "Increases the storage", 850),
    Memory(512, "Increases the storage", 1400)
  ];

  static final List<CPU> _itemsHardwareCpu = [
    CPU(12, "Central processing unit ", 2400),
    CPU(18, "Central processing unit", 3000),
    CPU(22, "Central processing unit", 3500)
  ];

  static final List<Network> _itemsHardwareNetwork = [
    Network(
        10, "Increases the speed of downloading files from the network", 1500),
    Network(
        15, "Increases the speed of downloading files from the network", 1800),
    Network(
        20, "Increases the speed of downloading files from the network", 2500),
  ];

  StoreBloc()
      : super(StoreInitial(_itemsHardwareRam, _itemsHardwareMemory,
            _itemsHardwareCpu, _itemsHardwareNetwork));

  @override
  Stream<StoreState> mapEventToState(
    StoreEvent event,
  ) async* {
    if (event is ShowHardware) {
      yield StoreShowHardware(_itemsHardwareRam, _itemsHardwareMemory,
          _itemsHardwareCpu, _itemsHardwareNetwork);
    }
    if (event is ShowSoftware) {
      yield StoreShowSoftware(_itemsHardwareRam, _itemsHardwareMemory,
          _itemsHardwareCpu, _itemsHardwareNetwork);
    }
    if (event is BuyItem) {
      if (event.type is RAM) {
        DeviceBloc().add(ChangeRam(event.type));
        _itemsHardwareRam.remove(event.type);
      } else if (event.type is Memory) {
        DeviceBloc().add(ChangeMemory(event.type));
        _itemsHardwareMemory.remove(event.type);
      } else if (event.type is CPU) {
        DeviceBloc().add(ChangeCpu(event.type));
        _itemsHardwareCpu.remove(event.type);
      } else if (event.type is Network) {
        DeviceBloc().add(ChangeNetwork(event.type));
        _itemsHardwareNetwork.remove(event.type);
      }
      yield StoreShowHardware(_itemsHardwareRam, _itemsHardwareMemory,
          _itemsHardwareCpu, _itemsHardwareNetwork);

      if (state is StoreShowHardware) {}
    }
  }
}
