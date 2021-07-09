import 'package:flutter/material.dart';
import 'package:synt/main_screen/main_screen_widget.dart';
import 'package:synt/theme/app_colors.dart';

void main() {
  const myApp = MyApp();
  runApp(myApp);
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "synt",
      theme: ThemeData(
          appBarTheme: const AppBarTheme(backgroundColor: AppColors.background),
          bottomNavigationBarTheme: BottomNavigationBarThemeData(
              backgroundColor: AppColors.background,
              selectedItemColor: AppColors.accent,
              unselectedItemColor: AppColors.accent.withAlpha(200))),
      home: MainScreenWidget(),
    );
  }
}
