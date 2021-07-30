import 'package:flutter/material.dart';
import 'package:synt/app.dart';

import 'data/data.dart';

void main() {
  const myApp = MyApp();
  UserData.createNewEnemy(4);
  runApp(myApp);
}
