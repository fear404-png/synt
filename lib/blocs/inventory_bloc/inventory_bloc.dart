import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:synt/data/data.dart';

part 'inventory_event.dart';
part 'inventory_state.dart';

class InventoryBloc extends Bloc<InventoryEvent, InventoryState> {
  static List items = UserData.userData.inventoryItems;
  InventoryBloc() : super(InventoryInitial(items));

  @override
  Stream<InventoryState> mapEventToState(
    InventoryEvent event,
  ) async* {
    if (event is InventoryAddItem) {
      UserData.userData.inventoryItems.add(event.item);
      items = UserData.userData.inventoryItems;
    }
  }
}
