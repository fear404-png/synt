import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:synt/data/hardware.dart';
import 'package:synt/data/software.dart';

part 'store_event.dart';
part 'store_state.dart';

class StoreBloc extends Bloc<StoreEvent, StoreState> {
  //айтемы магазина
  static List<Software> _softwareItems = [
    Spyware(
        description: "description",
        price: 1000,
        lvl: 1,
        ram: 0.2,
        memory: 0.25,
        network: 0.5),
    Firewall(
        description: "description",
        price: 800,
        lvl: 1,
        ram: 0.1,
        memory: 0.08,
        network: 0.5),
    Spam(
        description: "description",
        price: 300,
        lvl: 1,
        ram: 0.42,
        memory: 0.03,
        network: 2),
    PasswordCracker(
        description: "description",
        price: 2800,
        lvl: 1,
        ram: 1.5,
        memory: 1.3,
        network: 3),
    PasswordEncryptor(
        description: "description",
        price: 2100,
        lvl: 1,
        ram: 0.1,
        memory: 0.3,
        network: 0.01),
    Antivirus(
        description: "description",
        price: 3500,
        lvl: 1,
        ram: 0.8,
        memory: 2.3,
        network: 0.9),
  ];
  static List<Hardware> _hardwareItems = [
    RAM("description", 8000, 4),
    RAM("description", 21000, 8),
    RAM("description", 53000, 16),
    Memory("description", 4200, 512),
    Memory("description", 9500, 1024),
    Memory("description", 35000, 2048),
    CPU("description", 50000, 5),
    CPU("description", 150000, 10),
    CPU("description", 450000, 15),
    Network("description", 1200, 10),
    Network("description", 3400, 50),
    Network("description", 6700, 100),
  ];
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
