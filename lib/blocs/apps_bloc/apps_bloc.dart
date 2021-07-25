import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:synt/blocs/store_bloc/items/antivirus.dart';
import 'package:synt/blocs/store_bloc/items/bypasser.dart';
import 'package:synt/blocs/store_bloc/items/firewall.dart';
import 'package:synt/blocs/store_bloc/items/password_cracker.dart';
import 'package:synt/blocs/store_bloc/items/password_encryptor.dart';
import 'package:synt/blocs/store_bloc/items/spam.dart';
import 'package:synt/blocs/store_bloc/items/spyware.dart';

part 'apps_event.dart';
part 'apps_state.dart';

class AppsBloc extends Bloc<AppsEvent, AppsState> {
  static final List<Object> _items = [];
  AppsBloc() : super(AppsInitial(_items));

  @override
  Stream<AppsState> mapEventToState(
    AppsEvent event,
  ) async* {
    if (event is AddItem) {
      bool isFind = false;
      var item = event.item;
      for (var element in _items) {
        if (element.toString() == item.toString()) isFind = true;
      }
      if (isFind) {
        for (var element in _items) {
          if (element is Antivirus && item is Antivirus) {
            element.upLvl(item.lvl);
          }
          if (element is Bypasser && item is Bypasser) {
            element.upLvl(item.lvl);
          }
          if (element is Firewall && item is Firewall) {
            element.upLvl(item.lvl);
          }
          if (element is PasswordCracker && item is PasswordCracker) {
            element.upLvl(item.lvl);
          }
          if (element is PasswordEncryptor && item is PasswordEncryptor) {
            element.upLvl(item.lvl);
          }
          if (element is Spam && item is Spam) {
            element.upLvl(item.lvl);
          }
          if (element is Spyware && item is Spyware) {
            element.upLvl(item.lvl);
          }
        }
      } else {
        _items.add(event.item);
      }

      yield AppsInitial(_items);
    }
  }
}
