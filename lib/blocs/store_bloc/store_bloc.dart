import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:synt/blocs/device_bloc/device_bloc.dart';

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

  StoreBloc() : super(StoreInitial(_itemsHardwareRam, _itemsHardwareMemory));

  @override
  Stream<StoreState> mapEventToState(
    StoreEvent event,
  ) async* {
    if (event is ShowHardware) {
      yield StoreShowHardware(_itemsHardwareRam, _itemsHardwareMemory);
    }
    if (event is ShowSoftware) {
      yield StoreShowSoftware(_itemsHardwareRam, _itemsHardwareMemory);
    }
    if (event is BuyItem) {
      if (event.type is RAM) {
        DeviceBloc().add(ChangeRam(event.type));
        _itemsHardwareRam.remove(event.type);
      } else {
        DeviceBloc().add(ChangeMemory(event.type));
        _itemsHardwareMemory.remove(event.type);
      }
      yield StoreShowHardware(_itemsHardwareRam, _itemsHardwareMemory);

      if (state is StoreShowHardware) {}
    }
  }

  void addHarwareItemRam(RAM item) {
    _itemsHardwareRam.add(item);
    _itemsHardwareRam.sort();
  }

  void addHarwareItemMemory(Memory item) {
    _itemsHardwareMemory.add(item);
    _itemsHardwareMemory.sort();
  }
}
