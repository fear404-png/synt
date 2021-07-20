import 'package:flutter/material.dart';
import 'package:synt/theme/app_colors.dart';
import 'package:synt/until/app_containers.dart';
import 'package:synt/until/app_font_style.dart';
import 'package:synt/until/app_paddings.dart';
import 'package:synt/until/app_svg.dart';

class StoreWidget extends StatelessWidget {
  const StoreWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _StoreTabsWidget(),
        AppPaddings.defaultSizedBoxHeight,
        Expanded(
          child: Stack(
            children: [
              _StoreBackground(),
              _StoreItemsWidget(),
              _StoreVignette()
            ],
          ),
        ),
      ],
    );
  }
}

class _StoreTabsWidget extends StatelessWidget {
  const _StoreTabsWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: _StoreTabWidget(label: "SOFTWARE")),
        AppPaddings.defaultSizedBoxWidth,
        Expanded(child: _StoreTabWidget(label: "HARDWARE")),
      ],
    );
  }
}

class _StoreTabWidget extends StatelessWidget {
  final String label;
  const _StoreTabWidget({
    Key? key,
    required this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        padding: AppPaddings.defaultPadding,
        decoration: AppContainersDecoration.containerBorder,
        child: Center(
          child: Text(
            "$label",
            style: AppTextStyle.textStyleHeader,
          ),
        ),
      ),
    );
  }
}

class _StoreVignette extends StatelessWidget {
  const _StoreVignette({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(2),
      child: Container(
        height: 50,
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              colors: [Colors.transparent, AppColors.background]),
        ),
      ),
    );
  }
}

class _StoreBackground extends StatelessWidget {
  const _StoreBackground({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                colors: [AppColors.background, AppColors.accent]),
          ),
        ),
        Padding(
          padding: EdgeInsets.all(2),
          child: Container(
            color: AppColors.background,
          ),
        ),
      ],
    );
  }
}

class _StoreItemsWidget extends StatelessWidget {
  final List<Widget> _listItems = [
    _StoreItemWidget(
      icon: Icon(
        Icons.computer,
        color: AppColors.accent,
      ),
      title: "REAPER",
      description: "Fuck your computer",
      price: "1200",
    ),
    _StoreItemWidget(
      icon: Icon(
        Icons.computer,
        color: AppColors.accent,
      ),
      title: "REAPER",
      description: "Fuck your computer",
      price: "1200",
    ),
    _StoreItemWidget(
      icon: Icon(
        Icons.computer,
        color: AppColors.accent,
      ),
      title: "REAPER",
      description: "Fuck your computer",
      price: "1200",
    ),
    _StoreItemWidget(
      icon: Icon(
        Icons.computer,
        color: AppColors.accent,
      ),
      title: "REAPER",
      description: "Fuck your computer",
      price: "1200",
    ),
    _StoreItemWidget(
      icon: Icon(
        Icons.computer,
        color: AppColors.accent,
      ),
      title: "REAPER",
      description: "Fuck your computer",
      price: "1200",
    ),
    _StoreItemWidget(
      icon: Icon(
        Icons.computer,
        color: AppColors.accent,
      ),
      title: "REAPER",
      description: "Fuck your computer",
      price: "1200",
    ),
    _StoreItemWidget(
      icon: Icon(
        Icons.computer,
        color: AppColors.accent,
      ),
      title: "REAPER",
      description: "Fuck your computer",
      price: "1200",
    ),
    _StoreItemWidget(
      icon: Icon(
        Icons.computer,
        color: AppColors.accent,
      ),
      title: "REAPER",
      description: "Fuck your computer",
      price: "1200",
    ),
    _StoreItemWidget(
      icon: Icon(
        Icons.computer,
        color: AppColors.accent,
      ),
      title: "REAPER",
      description: "Fuck your computer",
      price: "1200",
    ),
    _StoreItemWidget(
      icon: Icon(
        Icons.computer,
        color: AppColors.accent,
      ),
      title: "REAPER",
      description: "Fuck your computer",
      price: "1200",
    ),
  ];
  _StoreItemsWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppPaddings.defaultPadding,
      child: ListView.builder(
          physics: ClampingScrollPhysics(),
          itemCount: _listItems.length,
          itemBuilder: (context, index) {
            return _listItems[index];
          }),
    );
  }
}

class _StoreItemWidget extends StatelessWidget {
  final Icon icon;
  final String title;
  final String description;
  final String price;
  const _StoreItemWidget({
    Key? key,
    required this.icon,
    required this.title,
    required this.description,
    required this.price,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        children: [
          StoreContainer(
            crossAxisAlignment: CrossAxisAlignment.center,
            width: 45,
            height: 45,
            child: icon as Widget,
          ),
          AppPaddings.defaultSizedBoxWidth,
          Expanded(
              child: StoreContainer(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "$title",
                          style: AppTextStyle.textStyleHeader,
                          maxLines: 1,
                        ),
                        Text(
                          "$description",
                          style: AppTextStyle.textStyle,
                          maxLines: 1,
                        ),
                      ],
                    ),
                  ),
                  height: 45)),
          AppPaddings.defaultSizedBoxWidth,
          StoreContainer(
              crossAxisAlignment: CrossAxisAlignment.center,
              child: Text(
                "$price BTC",
                style: AppTextStyle.textStyleHeader,
              ),
              width: 100,
              height: 45)
        ],
      ),
    );
  }
}
