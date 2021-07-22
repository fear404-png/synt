part of 'store_bloc.dart';

@immutable
abstract class StoreState {
  final List<RAM> itemsHardwareRam;
   final List<Memory> itemsHardwareMemory;

  StoreState(this.itemsHardwareRam, this.itemsHardwareMemory);

}

class StoreInitial extends StoreState {
  StoreInitial(List<RAM> itemsHardwareRam, List<Memory> itemsHardwareMemory) : super(itemsHardwareRam, itemsHardwareMemory);
  
}

class StoreShowSoftware extends StoreState {
  StoreShowSoftware(List<RAM> itemsHardwareRam, List<Memory> itemsHardwareMemory) : super(itemsHardwareRam, itemsHardwareMemory);

}

class StoreShowHardware extends StoreState {
  StoreShowHardware(List<RAM> itemsHardwareRam, List<Memory> itemsHardwareMemory) : super(itemsHardwareRam, itemsHardwareMemory);

}
