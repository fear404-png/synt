import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:synt/blocs/device_bloc/device_bloc.dart';
import 'package:synt/blocs/inventory_bloc/inventory_bloc.dart';
import 'package:synt/blocs/store_bloc/store_bloc.dart';
import 'package:synt/blocs/user_bloc/user_bloc.dart';
import 'package:synt/data/hardware.dart';
import 'package:synt/data/software.dart';
import 'package:synt/pages/components/store_item.dart';

abstract class MainLogic {
  //логика покупки
  static buyItem(BuildContext context, dynamic item) {
    if (item is Hardware) {
      if (BlocProvider.of<UserBloc>(context).state.publicBalance >=
          item.price) {
        BlocProvider.of<UserBloc>(context).add(RemoveUserBtc(item.price));
        BlocProvider.of<InventoryBloc>(context).add(InventoryAddHardItem(item));
        BlocProvider.of<StoreBloc>(context).add(StoreRemoveHardItem(item));
      }
    } else if (item is Software) {
      if (BlocProvider.of<UserBloc>(context).state.publicBalance >=
          item.price) {
        BlocProvider.of<UserBloc>(context).add(RemoveUserBtc(item.price));
        BlocProvider.of<InventoryBloc>(context).add(InventoryAddSoftItem(item));
        BlocProvider.of<StoreBloc>(context).add(StoreRemoveSoftItem(item));
      }
    }
  }

//сменить категорию
  static showOnlyOneTypeHardwareInventory(BuildContext context, dynamic item) {
    BlocProvider.of<InventoryBloc>(context)
        .add(InventorySetOnlyOneTypeHardwareItems(item));
  }

//сменить категорию
  static showOnlyOneTypeHardwareStore(BuildContext context, dynamic item) {
    BlocProvider.of<StoreBloc>(context).add(SetOnlyOneTypeHardwareItems(item));
  }

  //смена слота харды
  static setInstalledHardware(BuildContext context, dynamic item) {
    BlocProvider.of<DeviceBloc>(context).add(SetInstalledItem(item));
  }

  //добавление биткоинов через дебаг меню
  static addBtc(BuildContext context, int btc) {
    BlocProvider.of<UserBloc>(context).add(AddUserBtc(btc));
  }
}
