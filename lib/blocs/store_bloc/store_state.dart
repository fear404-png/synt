part of 'store_bloc.dart';

@immutable
abstract class StoreState {
  final List<RAM> itemsHardwareRam;
  final List<Memory> itemsHardwareMemory;
  final List<CPU> itemsHardwareCpu;
  final List<Network> itemsHardwareNetwork;

  StoreState(this.itemsHardwareRam, this.itemsHardwareMemory,
      this.itemsHardwareCpu, this.itemsHardwareNetwork);
}

class StoreInitial extends StoreState {
  StoreInitial(List<RAM> itemsHardwareRam, List<Memory> itemsHardwareMemory,
      List<CPU> itemsHardwareCpu, List<Network> itemsHardwareNetwork)
      : super(itemsHardwareRam, itemsHardwareMemory, itemsHardwareCpu,
            itemsHardwareNetwork);
}

class StoreShowSoftware extends StoreState {
  StoreShowSoftware(
      List<RAM> itemsHardwareRam,
      List<Memory> itemsHardwareMemory,
      List<CPU> itemsHardwareCpu,
      List<Network> itemsHardwareNetwork)
      : super(itemsHardwareRam, itemsHardwareMemory, itemsHardwareCpu,
            itemsHardwareNetwork);
}

class StoreShowHardware extends StoreState {
  StoreShowHardware(
      List<RAM> itemsHardwareRam,
      List<Memory> itemsHardwareMemory,
      List<CPU> itemsHardwareCpu,
      List<Network> itemsHardwareNetwork)
      : super(itemsHardwareRam, itemsHardwareMemory, itemsHardwareCpu,
            itemsHardwareNetwork);
}

// class StoreBuyItem extends StoreState {
//   StoreBuyItem(List<RAM> itemsHardwareRam, List<Memory> itemsHardwareMemory)
//       : super(itemsHardwareRam, itemsHardwareMemory);
// }
