import 'package:flutter/material.dart';

import 'package:synt/theme/app_colors.dart';
import 'package:synt/theme/app_info.dart';

import 'device_widget.dart';
import 'messages_widget.dart';
import 'processes_widget.dart';
import 'store_widget.dart';
import 'synt_widget.dart';

class MainScreenWidget extends StatefulWidget {
  MainScreenWidget({Key? key}) : super(key: key);

  @override
  _MainScreenWidgetState createState() => _MainScreenWidgetState();
}

class _MainScreenWidgetState extends State<MainScreenWidget> {
  int _selectedTab = 0;
  PageController pageController = PageController();

  static final List<Widget> _mainScreenPages = [
    DeviceWidget(),
    StoreWidget(),
    SyntWidget(),
    ProcessesWidget(),
    MessagesWidget()
  ];

  @override
  void initState() {
    super.initState();
    pageController = new PageController(initialPage: _selectedTab);
  }

  void onSelectedTap(int index) {
    pageController.animateToPage(index,
        duration: const Duration(milliseconds: 300), curve: Curves.ease);
  }

  void onPageChanged(int page) {
    setState(() {
      this._selectedTab = page;
    });
  }

  void onTap(int index) {
    if (index == _selectedTab) return;
    setState(() {
      _selectedTab = index;
      print(index);
    });
    pageController.animateToPage(index,
        duration: const Duration(milliseconds: 100), curve: Curves.easeOutSine);
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

      body: PageView(
        children: _mainScreenPages,
        scrollDirection: Axis.horizontal,
        controller: pageController,
        onPageChanged: onPageChanged,
      ),
      // body: _PagesWidget(
      //     mainScreenPages: _mainScreenPages, selectedTab: _selectedTab),

      bottomNavigationBar: BottomNavigationBar(
        iconSize: 30,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.device_hub_sharp),
            label: "Device",
            backgroundColor: AppColors.background,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.store),
            label: "Store",
            backgroundColor: AppColors.background,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.mobile_screen_share),
            label: "synt",
            backgroundColor: AppColors.background,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.wifi_protected_setup_sharp),
            label: "Processes",
            backgroundColor: AppColors.background,
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.message,
            ),
            label: "Messages",
            backgroundColor: AppColors.background,
          ),
        ],
        onTap: onTap,
        currentIndex: _selectedTab,
      ),
    );
  }
}