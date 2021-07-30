import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:synt/blocs/appbar_bloc/appbar_bloc.dart';
import 'package:synt/blocs/apps_bloc/apps_bloc.dart';
import 'package:synt/blocs/device_bloc/device_bloc.dart';
import 'package:synt/blocs/store_bloc/items/antivirus.dart';
import 'package:synt/blocs/store_bloc/items/bypasser.dart';
import 'package:synt/blocs/store_bloc/items/cpu.dart';
import 'package:synt/blocs/store_bloc/items/firewall.dart';
import 'package:synt/blocs/store_bloc/items/hardware.dart';
import 'package:synt/blocs/store_bloc/items/network.dart';
import 'package:synt/blocs/store_bloc/items/password_cracker.dart';
import 'package:synt/blocs/store_bloc/items/password_encryptor.dart';
import 'package:synt/blocs/store_bloc/items/software.dart';
import 'package:synt/blocs/store_bloc/items/spam.dart';
import 'package:synt/blocs/store_bloc/items/spyware.dart';
import 'package:synt/data/data.dart';

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

  static final List<Antivirus> _itemsSoftwareAntivirus = [
    Antivirus(1, 1000, "Protect your computer"),
    Antivirus(5, 4500, "Protect your computer"),
  ];

  static final List<Bypasser> _itemsSoftwareBypasser = [
    Bypasser(1, 2000, "Hz 4e eto takoe"),
    Bypasser(5, 8800, "Hz 4e eto takoe"),
  ];

  static final List<Firewall> _itemsSoftwareFirewall = [
    Firewall(1, 1200, "Encrypts your network streams"),
    Firewall(5, 5400, "Encrypts your network streams"),
  ];

  static final List<PasswordCracker> _itemsSoftwarePasswordCracker = [
    PasswordCracker(1, 4000, "Cracks passwords"),
    PasswordCracker(5, 17500, "Cracks passwords"),
  ];

  static final List<PasswordEncryptor> _itemsSoftwarePasswordEncryptor = [
    PasswordEncryptor(1, 3000, "Encrypts passwords"),
    PasswordEncryptor(5, 13000, "Encrypts passwords"),
  ];

  static final List<Spam> _itemsSoftwareSpam = [
    Spam(1, 400, "Spam..."),
    Spam(5, 1800, "Spam..."),
  ];

  static final List<Spyware> _itemsSoftwareSpyware = [
    Spyware(1, 12000, "Monitors the actions of the device"),
    Spyware(5, 53000, "Monitors the actions of the device"),
  ];

  static List<Hardware> _hardItems = [];
  static List<Software> _softItems = [];

  StoreBloc()
      : super(StoreInitial(
          _hardItems,
          _softItems,
        )) {
    _hardItems.addAll(_itemsHardwareRam);
    _hardItems.addAll(_itemsHardwareMemory);
    _hardItems.addAll(_itemsHardwareCpu);
    _hardItems.addAll(_itemsHardwareNetwork);
    _softItems.addAll(_itemsSoftwareAntivirus);
    _softItems.addAll(_itemsSoftwareBypasser);
    _softItems.addAll(_itemsSoftwareFirewall);
    _softItems.addAll(_itemsSoftwarePasswordCracker);
    _softItems.addAll(_itemsSoftwarePasswordEncryptor);
    _softItems.addAll(_itemsSoftwareSpam);
    _softItems.addAll(_itemsSoftwareSpyware);
  }

  @override
  Stream<StoreState> mapEventToState(
    StoreEvent event,
  ) async* {
    if (event is ShowHardware) {
      yield StoreShowHardware(
        _hardItems,
        _softItems,
      );
    }
    if (event is ShowSoftware) {
      yield StoreShowSoftware(
        _hardItems,
        _softItems,
      );
    }
    if (event is BuyItem) {
      if (event.type is Hardware) {
        UserData.userData.inventoryItems.add(event.type);
        _hardItems.remove(event.type);
      } else if (event.type is Software) {
        AppsBloc().add(AddItem(event.type, event.type.lvl));
        _softItems.remove(event.type);
      }

      if (state is StoreShowHardware) {
        yield StoreShowHardware(
          _hardItems,
          _softItems,
        );
      }
      if (state is StoreShowSoftware) {
        yield StoreShowSoftware(
          _hardItems,
          _softItems,
        );
      }
    }
  }
}
