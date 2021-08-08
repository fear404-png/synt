part of 'store_bloc.dart';

@immutable
abstract class StoreState {
  final List<Software> softwareItems;
  final List<Hardware> hardwareItems;
  final List<Software> onlyOneTypeSoftwareItems;
  final List<Hardware> onlyOneTypeHardwareItems;

  StoreState(this.softwareItems, this.hardwareItems,
      this.onlyOneTypeSoftwareItems, this.onlyOneTypeHardwareItems);
}

class StoreInitial extends StoreState {
  StoreInitial(
      List<Software> softwareItems,
      List<Hardware> hardwareItems,
      List<Software> onlyOneTypeSoftwareItems,
      List<Hardware> onlyOneTypeHardwareItems)
      : super(softwareItems, hardwareItems, onlyOneTypeSoftwareItems,
            onlyOneTypeHardwareItems);
}
