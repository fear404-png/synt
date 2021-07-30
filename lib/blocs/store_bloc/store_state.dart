part of 'store_bloc.dart';

@immutable
abstract class StoreState {
  final List<Hardware> itemsHardware;
  final List<Software> itemsSoftware;

  StoreState(this.itemsHardware, this.itemsSoftware);
}

class StoreInitial extends StoreState {
  StoreInitial(List<Hardware> itemsHardware, List<Software> itemsSoftware)
      : super(itemsHardware, itemsSoftware);
}

class StoreShowSoftware extends StoreState {
  StoreShowSoftware(List<Hardware> itemsHardware, List<Software> itemsSoftware)
      : super(itemsHardware, itemsSoftware);
}

class StoreShowHardware extends StoreState {
  StoreShowHardware(List<Hardware> itemsHardware, List<Software> itemsSoftware)
      : super(itemsHardware, itemsSoftware);
}
