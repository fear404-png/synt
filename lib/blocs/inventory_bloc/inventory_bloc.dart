import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:synt/data/inventory.dart';

part 'inventory_event.dart';
part 'inventory_state.dart';

class InventoryBloc extends Bloc<InventoryEvent, InventoryState> {
  static List items = Inventory.inventoryItems;
  InventoryBloc() : super(InventoryInitial(items));

  @override
  Stream<InventoryState> mapEventToState(
    InventoryEvent event,
  ) async* {
    if (event is InventoryAddItem) {
      Inventory.inventoryItems.add(event.item);
      items = Inventory.inventoryItems;
    }
  }
}
