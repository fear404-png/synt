import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:synt/data/player.dart';

part 'appbar_event.dart';
part 'appbar_state.dart';

class AppbarBloc extends Bloc<AppbarEvent, AppbarState> {
  int btc = Player.btc;
  AppbarBloc() : super(AppbarInitial(0));

  @override
  Stream<AppbarState> mapEventToState(
    AppbarEvent event,
  ) async* {
    if (event is AddBtc) {
      Player.btc += event.btc;
      btc = Player.btc;
      yield AppbarInitial(btc);
    }
    if (event is RemoveBtc) {
      Player.btc -= event.btc;
      btc = Player.btc;
      yield AppbarInitial(btc);
    }
  }
}
