import 'package:synt/blocs/store_bloc/items/ram.dart';
import 'package:synt/data/user.dart';

abstract class HardwareInfoType {
  static Object type = RAM(1, "1", 1);
}

abstract class EnemyUser {
  static User user = User.defaultUser();
}
