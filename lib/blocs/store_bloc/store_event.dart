part of 'store_bloc.dart';

@immutable
abstract class StoreEvent {}

class StoreAddHardItem extends StoreEvent {
  final Hardware hardware;

  StoreAddHardItem(this.hardware);
}

class StoreAddSoftItem extends StoreEvent {
  final Software software;

  StoreAddSoftItem(this.software);
}

class StoreRemoveHardItem extends StoreEvent {
  final Hardware hardware;

  StoreRemoveHardItem(this.hardware);
}

class StoreRemoveSoftItem extends StoreEvent {
  final Software software;

  StoreRemoveSoftItem(this.software);
}

class StoreSetOnlyOneTypeSoftwareItems extends StoreEvent {
  final Software software;

  StoreSetOnlyOneTypeSoftwareItems(this.software);
}

class SetOnlyOneTypeHardwareItems extends StoreEvent {
  final Hardware hardware;

  SetOnlyOneTypeHardwareItems(this.hardware);
}

class StoreSetHardItems extends StoreEvent {
  final List<Hardware> hardwareItems;

  StoreSetHardItems(this.hardwareItems);
}

class StoreSetSoftItems extends StoreEvent {
  final List<Software> softwareItems;

  StoreSetSoftItems(this.softwareItems);
}
