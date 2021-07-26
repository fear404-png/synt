part of 'inventory_bloc.dart';

@immutable
abstract class InventoryState {
  final List items;

  InventoryState(this.items);
}

class InventoryInitial extends InventoryState {
  InventoryInitial(List items) : super(items);
}
