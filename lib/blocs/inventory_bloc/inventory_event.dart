part of 'inventory_bloc.dart';

@immutable
abstract class InventoryEvent {}

class InventoryAddItem extends InventoryEvent {
  final item;

  InventoryAddItem(this.item);
}
