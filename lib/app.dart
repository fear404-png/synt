import 'package:flutter/material.dart';
import 'package:synt/theme/app_colors.dart';

import 'pages/main_screen_widget.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "100 btc",
      theme: ThemeData(
          accentColor: AppColors.accent,
          appBarTheme: const AppBarTheme(backgroundColor: AppColors.background),
          bottomNavigationBarTheme: BottomNavigationBarThemeData(
              backgroundColor: AppColors.background,
              selectedItemColor: AppColors.accent,
              unselectedItemColor: AppColors.accent.withAlpha(150))),
      // home: MainScreenWidget(),
      routes: {
        "/main_screen": (context) => MainScreenWidget(),
      },
      initialRoute: "/main_screen",
    );
  }
}
