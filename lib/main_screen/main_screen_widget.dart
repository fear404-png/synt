import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:synt/main_screen_pages/device_widget.dart';
import 'package:synt/main_screen_pages/messages_widget.dart';
import 'package:synt/main_screen_pages/processes_widget.dart';
import 'package:synt/main_screen_pages/store_widget.dart';
import 'package:synt/main_screen_pages/synt_widget.dart';
import 'package:synt/theme/app_colors.dart';
import 'package:synt/theme/app_info.dart';

class MainScreenWidget extends StatefulWidget {
  MainScreenWidget({Key? key}) : super(key: key);

  @override
  _MainScreenWidgetState createState() => _MainScreenWidgetState();
}

class _MainScreenWidgetState extends State<MainScreenWidget> {
  int _selectedTab = 0;

  static final List<Widget> _mainScreenPages = [
    DeviceWidget(),
    StoreWidget(),
    SyntWidget(),
    ProcessesWidget(),
    MessagesWidget()
  ];

  void onSelectTab(int index) {
    if (index == _selectedTab) return;
    setState(() {
      _selectedTab = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        title: Text(
          AppInfo.appName,
          style: TextStyle(color: AppColors.accent),
        ),
        backgroundColor: AppColors.background,
      ),

      // body: _mainScreenPages[_selectedTab],
      body: _PagesWidget(
          mainScreenPages: _mainScreenPages, selectedTab: _selectedTab),

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedTab,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.device_hub_sharp),
            label: "Device",
            backgroundColor: AppColors.background,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.store),
            label: "Store",
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.mobile_screen_share), label: "synt"),
          BottomNavigationBarItem(
              icon: Icon(Icons.wifi_protected_setup_sharp), label: "Processes"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.message,
              ),
              label: "Messages"),
        ],
        onTap: onSelectTab,
      ),
    );
  }
}

class _PagesWidget extends StatelessWidget {
  const _PagesWidget({
    Key? key,
    required List<Widget> mainScreenPages,
    required int selectedTab,
  })  : _mainScreenPages = mainScreenPages,
        _selectedTab = selectedTab,
        super(key: key);

  final List<Widget> _mainScreenPages;
  final int _selectedTab;

  @override
  Widget build(BuildContext context) {
    return PageTransitionSwitcher(
        transitionBuilder: (child, primaryAnimation, secondaryAnimation) =>
            FadeThroughTransition(
              animation: primaryAnimation,
              secondaryAnimation: secondaryAnimation,
              child: child,
              fillColor: AppColors.background,
            ),
        child: _mainScreenPages[_selectedTab]);
  }
}
