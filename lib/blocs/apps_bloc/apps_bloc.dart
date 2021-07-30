import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:synt/blocs/store_bloc/items/antivirus.dart';
import 'package:synt/blocs/store_bloc/items/bypasser.dart';
import 'package:synt/blocs/store_bloc/items/firewall.dart';
import 'package:synt/blocs/store_bloc/items/password_cracker.dart';
import 'package:synt/blocs/store_bloc/items/password_encryptor.dart';
import 'package:synt/blocs/store_bloc/items/software.dart';
import 'package:synt/blocs/store_bloc/items/spam.dart';
import 'package:synt/blocs/store_bloc/items/spyware.dart';

part 'apps_event.dart';
part 'apps_state.dart';

class AppsBloc extends Bloc<AppsEvent, AppsState> {
  static final List<Software> _items = [];
  AppsBloc() : super(AppsInitial(_items));

  @override
  Stream<AppsState> mapEventToState(
    AppsEvent event,
  ) async* {
    if (event is AddItem) {
      bool isFind = false;
      Software item = event.item;
      for (Software element in _items) {
        if (element.toString() == item.toString()) {
          element.upLvl(item.lvl);
          isFind = true;
        }
      }
      if (!isFind) {
        _items.add(event.item);
      }

      yield AppsInitial(_items);
    }
  }
}
