import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:synt/blocs/user_bloc/user_bloc.dart';

import 'package:synt/theme/app_colors.dart';
import 'package:synt/theme/app_info.dart';
import 'package:synt/until/app_font_style.dart';

import 'device_widget.dart';
import 'messages_widget.dart';
import 'processes_widget.dart';
import 'store_widget.dart';
import 'synt_widget.dart';

// Старница с навигацией основных страниц
class MainScreenWidget extends StatefulWidget {
  MainScreenWidget({Key? key}) : super(key: key);

  @override
  _MainScreenWidgetState createState() => _MainScreenWidgetState();
}

class _MainScreenWidgetState extends State<MainScreenWidget> {
  //индекс текущей странцы
  int _selectedTab = 0;
  PageController pageController = PageController();

//список показа страниц
  static final List<Widget> _mainScreenPages = [
    const DeviceWidget(),
    const StoreWidget(),
    const SyntWidget(),
    const ProcessesWidget(),
    const MessagesWidget()
  ];
// установки при иницилизации стейта
  @override
  void initState() {
    super.initState();
    pageController = PageController(initialPage: _selectedTab);
  }

//смена страницы
  void onSelectedTap(int index) {
    pageController.animateToPage(index,
        duration: const Duration(milliseconds: 300), curve: Curves.ease);
  }

//смена страницы
  void onPageChanged(int page) {
    setState(() {
      this._selectedTab = page;
    });
  }

//обработка нажатий в нижней навигации
  void onTap(int index) {
    if (index == _selectedTab) return;
    setState(() {
      _selectedTab = index;
    });
    pageController.animateToPage(index,
        duration: const Duration(milliseconds: 100), curve: Curves.easeOutSine);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        title: BlocBuilder<UserBloc, UserState>(
          builder: (context, state) {
            return Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "${BlocProvider.of<UserBloc>(context).state.publicBalance} BTC",
                  style: AppTextStyle.textStyleHeader,
                ),
                Text(
                  BlocProvider.of<UserBloc>(context).state.ip,
                  style: AppTextStyle.textStyleHeader,
                )
              ],
            );
          },
        ),
        backgroundColor: AppColors.background,
      ),
      body: PageView(
        children: _mainScreenPages,
        scrollDirection: Axis.horizontal,
        controller: pageController,
        onPageChanged: onPageChanged,
      ),
      //создание нижней навигации
      bottomNavigationBar: BottomNavigationBar(
        selectedLabelStyle: AppTextStyle.textStyleHeader,
        iconSize: 30,
        items: const [
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
            label: "DEBUG",
            backgroundColor: AppColors.background,
          ),
        ],
        onTap: onTap,
        currentIndex: _selectedTab,
      ),
    );
  }
}
