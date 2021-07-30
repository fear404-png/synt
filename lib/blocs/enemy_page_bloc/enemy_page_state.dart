part of 'enemy_page_bloc.dart';

@immutable
abstract class EnemyPageState {
  final User enemyUser;

  EnemyPageState(this.enemyUser);
}

class EnemyPageInitial extends EnemyPageState {
  EnemyPageInitial(User enemyUser) : super(enemyUser);
}
