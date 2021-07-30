import 'package:synt/data/user.dart';

abstract class UserData {
  static User userData = User.defaultUser();
  static List<User> enemyUsers = [
    User.randomEnemy(),
    User.randomEnemy(),
    User.randomEnemy(),
    User.randomEnemy(),
  ];
}
