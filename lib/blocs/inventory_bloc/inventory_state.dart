part of 'inventory_bloc.dart';

@immutable
abstract class InventoryState {
  final List<Software> softwareItems;
  final List<Hardware> hardwareItems;
  final List<Software> onlyOneTypeSoftwareItems;
  final List<Hardware> onlyOneTypeHardwareItems;

  InventoryState(this.softwareItems, this.hardwareItems,
      this.onlyOneTypeSoftwareItems, this.onlyOneTypeHardwareItems);
}

class InventoryInitial extends InventoryState {
  InventoryInitial(List<Software> softwareItems, List<Hardware> hardwareItems, List<Software> onlyOneTypeSoftwareItems, List<Hardware> onlyOneTypeHardwareItems) : super(softwareItems, hardwareItems, onlyOneTypeSoftwareItems, onlyOneTypeHardwareItems);
}
