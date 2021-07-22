import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import 'items/memory.dart';
import 'items/ram.dart';

part 'store_event.dart';
part 'store_state.dart';

class StoreBloc extends Bloc<StoreEvent, StoreState> {
  static final List<RAM> _itemsHardwareRam = [
    RAM(4, "Ahuenno pizdato", 1000),
    RAM(8, "Kupi ili loh", 1800),
    RAM(16, "pizdec", 3200),
  ];

  static final List<Memory> _itemsHardwareMemory = [
    Memory(128, "hueta", 500),
    Memory(256, "hueta?", 850),
    Memory(512, "nu norm", 1400)
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
