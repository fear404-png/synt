import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:synt/data/hardware.dart';
import 'package:synt/data/software.dart';

part 'store_event.dart';
part 'store_state.dart';

class StoreBloc extends Bloc<StoreEvent, StoreState> {
  //айтемы магазина
  static List<Software> _softwareItems = [];
  static List<Hardware> _hardwareItems = [];
  //айтемы одной категории
  static List<Software> _onlyOneTypeSoftwareItems = [];
  static List<Hardware> _onlyOneTypeHardwareItems = [];

  StoreBloc()
      : super(StoreInitial(_softwareItems, _hardwareItems,
            _onlyOneTypeSoftwareItems, _onlyOneTypeHardwareItems));

  @override
  Stream<StoreState> mapEventToState(
    StoreEvent event,
  ) async* {
    if (event is StoreAddHardItem) {
      //добавить айтем харды
      _hardwareItems.add(event.hardware);
    } else if (event is StoreAddSoftItem) {
      //добавить айтем софта
      _softwareItems.add(event.software);
    } else if (event is StoreRemoveHardItem) {
      //удалить айтем харды
      _hardwareItems.remove(event.hardware);
    } else if (event is StoreRemoveSoftItem) {
      //удалить айтем софта
      _softwareItems.remove(event.software);
    } else if (event is StoreSetOnlyOneTypeSoftwareItems) {
      //изменить категорию софта
      _onlyOneTypeSoftwareItems = [];
      for (var element in _softwareItems) {
        if (element.toString() == event.software.toString()) {
          _onlyOneTypeSoftwareItems.add(element);
        }
      }
    } else if (event is SetOnlyOneTypeHardwareItems) {
      //изменить категорию харды
      _onlyOneTypeHardwareItems = [];
      for (var element in _hardwareItems) {
        if (element.toString() == event.hardware.toString()) {
          _onlyOneTypeHardwareItems.add(element);
        }
      }
    } else if (event is StoreSetHardItems) {
      //изменить изменить список харды
      _hardwareItems = event.hardwareItems;
    } else if (event is StoreSetSoftItems) {
      //изменить изменить список софта
      _softwareItems = event.softwareItems;
    }

    //возврат состояния
    yield StoreInitial(_softwareItems, _hardwareItems,
        _onlyOneTypeSoftwareItems, _onlyOneTypeHardwareItems);
  }
}
