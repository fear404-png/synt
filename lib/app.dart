import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:synt/blocs/device_bloc/device_bloc.dart';
import 'package:synt/blocs/inventory_bloc/inventory_bloc.dart';
import 'package:synt/blocs/store_bloc/store_bloc.dart';
import 'package:synt/blocs/user_bloc/user_bloc.dart';

import 'package:synt/pages/apps_widget.dart';
import 'package:synt/pages/enemy_page.dart';
import 'package:synt/pages/hardware_info.dart';
import 'package:synt/pages/inventory_widget.dart';
import 'package:synt/pages/scan_widget.dart';
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
    return MultiBlocProvider(
      providers: [
        BlocProvider<UserBloc>(
          create: (BuildContext context) => UserBloc(),
        ),
        BlocProvider<DeviceBloc>(
          create: (BuildContext context) => DeviceBloc(),
        ),
        BlocProvider<InventoryBloc>(
          create: (BuildContext context) => InventoryBloc(),
        ),
        BlocProvider<StoreBloc>(
          create: (BuildContext context) => StoreBloc(),
        ),
      ],
      child: MaterialApp(
        title: "100 btc",
        theme: ThemeData(
            accentColor: AppColors.accent,
            appBarTheme:
                const AppBarTheme(backgroundColor: AppColors.background),
            bottomNavigationBarTheme: BottomNavigationBarThemeData(
                backgroundColor: AppColors.background,
                selectedItemColor: AppColors.accent,
                unselectedItemColor: AppColors.accent.withAlpha(150))),
        // home: MainScreenWidget(),
        routes: {
          "/main_screen": (context) => MainScreenWidget(),
          "/main_screen/apps": (context) => const AppsWidget(),
          "/main_screen/inventory": (context) => const InventoryWidget(),
          "/main_screen/hardware_info": (context) => const HardwareInfo(),
          "/main_screen/scan": (context) => const ScanWidget(),
          "/main_screen/scan/enemy": (context) => const EnemyPage(),
        },
        initialRoute: "/main_screen",
      ),
    );
  }
}
