import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:synt/data/hardware.dart';
import 'package:synt/data/software.dart';

part 'inventory_event.dart';
part 'inventory_state.dart';

class InventoryBloc extends Bloc<InventoryEvent, InventoryState> {
  static List<Software> _softwareItems = [];
  static List<Hardware> _hardwareItems = [];
  static List<Software> _onlyOneTypeSoftwareItems = [];
  static List<Hardware> _onlyOneTypeHardwareItems = [];
  InventoryBloc()
      : super(InventoryInitial(_softwareItems, _hardwareItems,
            _onlyOneTypeSoftwareItems, _onlyOneTypeHardwareItems));

  @override
  Stream<InventoryState> mapEventToState(
    InventoryEvent event,
  ) async* {
    if (event is InventoryAddHardItem) {
      _hardwareItems.add(event.hardware);
    } else if (event is InventoryAddSoftItem) {
      _softwareItems.add(event.software);
    } else if (event is InventoryRemoveHardItem) {
      _hardwareItems.remove(event.hardware);
    } else if (event is InventoryRemoveSoftItem) {
      _softwareItems.remove(event.software);
    } else if (event is InventorySetOnlyOneTypeSoftwareItems) {
      _onlyOneTypeSoftwareItems = [];
      for (var element in _softwareItems) {
        if (element.toString() == event.software.toString()) {
          _onlyOneTypeSoftwareItems.add(element);
        }
      }
    } else if (event is InventorySetOnlyOneTypeHardwareItems) {
      _onlyOneTypeHardwareItems = [];

      for (var element in _hardwareItems) {
        if (element.toString() == event.hardware.toString()) {
          print(element.name);
          _onlyOneTypeHardwareItems.add(element);
        }
      }
    } else if (event is InventorySetHardItems) {
      _hardwareItems = event.hardwareItems;
    } else if (event is InventorySetSoftItems) {
      _softwareItems = event.softwareItems;
    }
    yield InventoryInitial(_softwareItems, _hardwareItems,
        _onlyOneTypeSoftwareItems, _onlyOneTypeHardwareItems);
  }
}
