import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:synt/data/user.dart';
import 'package:synt/until/global_params.dart';

part 'enemy_page_event.dart';
part 'enemy_page_state.dart';

class EnemyPageBloc extends Bloc<EnemyPageEvent, EnemyPageState> {
  static User _enemyUser = EnemyUser.user;

  EnemyPageBloc() : super(EnemyPageInitial(_enemyUser));

  @override
  Stream<EnemyPageState> mapEventToState(
    EnemyPageEvent event,
  ) async* {
    // TODO: implement mapEventToState
    if (event is SetEnemy) {
      _enemyUser = EnemyUser.user;
      yield EnemyPageInitial(_enemyUser);
    }
  }
}
