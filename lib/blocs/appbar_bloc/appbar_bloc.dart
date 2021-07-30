import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:synt/data/data.dart';

part 'appbar_event.dart';
part 'appbar_state.dart';

class AppbarBloc extends Bloc<AppbarEvent, AppbarState> {
  int btc = UserData.userData.btc;
  AppbarBloc() : super(AppbarInitial(0));

  @override
  Stream<AppbarState> mapEventToState(
    AppbarEvent event,
  ) async* {
    if (event is AddBtc) {
      UserData.userData.btc += event.btc;
      btc = UserData.userData.btc;
      yield AppbarInitial(btc);
    }
    if (event is RemoveBtc) {
      UserData.userData.btc -= event.btc;
      btc = UserData.userData.btc;
      yield AppbarInitial(btc);
    }
  }
}
