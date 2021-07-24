part of 'store_bloc.dart';

@immutable
abstract class StoreState {
  final List<RAM> itemsHardwareRam;
  final List<Memory> itemsHardwareMemory;
  final List<CPU> itemsHardwareCpu;

  StoreState(
      this.itemsHardwareRam, this.itemsHardwareMemory, this.itemsHardwareCpu);
}

class StoreInitial extends StoreState {
  StoreInitial(List<RAM> itemsHardwareRam, List<Memory> itemsHardwareMemory,
      List<CPU> itemsHardwareCpu)
      : super(itemsHardwareRam, itemsHardwareMemory, itemsHardwareCpu);
}

class StoreShowSoftware extends StoreState {
  StoreShowSoftware(List<RAM> itemsHardwareRam,
      List<Memory> itemsHardwareMemory, List<CPU> itemsHardwareCpu)
      : super(itemsHardwareRam, itemsHardwareMemory, itemsHardwareCpu);
}

class StoreShowHardware extends StoreState {
  StoreShowHardware(List<RAM> itemsHardwareRam,
      List<Memory> itemsHardwareMemory, List<CPU> itemsHardwareCpu)
      : super(itemsHardwareRam, itemsHardwareMemory, itemsHardwareCpu);
}

// class StoreBuyItem extends StoreState {
//   StoreBuyItem(List<RAM> itemsHardwareRam, List<Memory> itemsHardwareMemory)
//       : super(itemsHardwareRam, itemsHardwareMemory);
// }
