import 'package:flutter/material.dart';
import 'package:synt/pages/apps.dart';
import 'package:synt/theme/app_colors.dart';

import 'pages/main_screen_widget.dart';

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
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
        "/main_screen/apps": (context) => AppsWidget(),
      },
      initialRoute: "/main_screen",
    );
  }
}
