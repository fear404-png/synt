import 'package:synt/data/user.dart';

abstract class UserData {
  static User userData = User.defaultUser();
  static Map<String, User> enemyUsersMap = {};
  static List<User> enemyUsersList = [];

  static createNewEnemy(int countUser) {
    enemyUsersMap.clear();
    enemyUsersList.clear();
    for (int i = 0; i <= countUser; i++) {
      User _user = User.randomEnemy();
      enemyUsersMap[_user.ip] = _user;
      enemyUsersList.add(_user);
    }
    print(enemyUsersList);
  }

  
}
