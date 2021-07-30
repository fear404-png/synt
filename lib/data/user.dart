import 'dart:math';

import 'package:synt/blocs/store_bloc/items/cpu.dart';
import 'package:synt/blocs/store_bloc/items/memory.dart';
import 'package:synt/blocs/store_bloc/items/network.dart';
import 'package:synt/blocs/store_bloc/items/ram.dart';

class User {
  String ip = "127.0.0.1";
  int btc = 0;
  RAM installedRam = RAM(2, "default", 0);
  Memory installedMemory = Memory(2, "default", 0);
  CPU installedCpu = CPU(2, "default", 0);
  Network installedNetwork = Network(2, "default", 0);
  List inventoryItems = [];

  User(this.ip, this.btc, this.installedRam, this.installedMemory,
      this.installedCpu, this.installedNetwork, this.inventoryItems);

  User.defaultUser();

  User.randomEnemy() {
    Random _r = Random();
    ip =
        "${_r.nextInt(999)}.${_r.nextInt(999)}.${_r.nextInt(999)}.${_r.nextInt(999)}";
    btc = _r.nextInt(100000);
    installedRam = RAM((_r.nextDouble() * 32).floorToDouble(), "default", 0);
    installedMemory =
        Memory((_r.nextDouble() * 512).floorToDouble(), "default", 0);
    installedCpu = CPU((_r.nextDouble() * 30).floorToDouble(), "default", 0);
    installedNetwork =
        Network((_r.nextDouble() * 100).floorToDouble(), "default", 0);
  }

  setIp(String ip) {
    this.ip = ip;
  }

  setBtc(int btc) {
    this.btc = btc;
  }

  addBtc(int btc) {
    this.btc += btc;
  }

  subtractBtc(int btc) {
    this.btc -= btc;
  }

  setRam(RAM ram) {
    this.installedRam = ram;
  }

  setMemory(Memory memory) {
    this.installedMemory = memory;
  }

  setCpu(CPU cpu) {
    this.installedCpu = cpu;
  }

  setNetwork(Network network) {
    this.installedNetwork = network;
  }

  List<RAM> getOnlyRam() {
    List<RAM> _tempItems = [];
    inventoryItems.forEach((element) {
      if (element is RAM) {
        _tempItems.add(element);
      }
    });
    return _tempItems;
  }

  List<Memory> getOnlyMemory() {
    List<Memory> _tempItems = [];
    inventoryItems.forEach((element) {
      if (element is Memory) {
        _tempItems.add(element);
      }
    });
    return _tempItems;
  }

  List<CPU> getOnlyCpu() {
    List<CPU> _tempItems = [];
    inventoryItems.forEach((element) {
      if (element is CPU) {
        _tempItems.add(element);
      }
    });
    return _tempItems;
  }
}
