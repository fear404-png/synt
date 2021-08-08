part of 'inventory_bloc.dart';

@immutable
abstract class InventoryEvent {}

class InventoryAddHardItem extends InventoryEvent {
  final Hardware hardware;

  InventoryAddHardItem(this.hardware);
}

class InventoryAddSoftItem extends InventoryEvent {
  final Software software;

  InventoryAddSoftItem(this.software);
}

class InventoryRemoveHardItem extends InventoryEvent {
  final Hardware hardware;

  InventoryRemoveHardItem(this.hardware);
}

class InventoryRemoveSoftItem extends InventoryEvent {
  final Software software;

  InventoryRemoveSoftItem(this.software);
}

class InventorySetOnlyOneTypeSoftwareItems extends InventoryEvent {
  final Software software;

  InventorySetOnlyOneTypeSoftwareItems(this.software);
}

class InventorySetOnlyOneTypeHardwareItems extends InventoryEvent {
  final Hardware hardware;

  InventorySetOnlyOneTypeHardwareItems(this.hardware);
}

class InventorySetHardItems extends InventoryEvent {
  final List<Hardware> hardwareItems;

  InventorySetHardItems(this.hardwareItems);
}

class InventorySetSoftItems extends InventoryEvent {
  final List<Software> softwareItems;

  InventorySetSoftItems(this.softwareItems);
}
