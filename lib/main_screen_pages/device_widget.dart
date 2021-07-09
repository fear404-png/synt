import 'package:flutter/material.dart';
import 'package:synt/theme/app_colors.dart';
import 'package:synt/until/app_containers.dart';
import 'package:synt/until/app_paddings.dart';

class DeviceWidget extends StatelessWidget {
  const DeviceWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const _textStyle = TextStyle(color: AppColors.accent, fontSize: 12);
    const _textStyleHeader = TextStyle(color: AppColors.accent);

    return Padding(
      padding: AppPaddings.defaultPadding,
      child: ListView(
        children: [
          _SystemBar(textStyle: _textStyleHeader),
          AppPaddings.dafaultSizedBoxHeight,
          _SystemMonitorLabel(textStyle: _textStyleHeader),
          AppPaddings.dafaultSizedBoxHeight,
          _SystemMonitorList(
              textStyle: _textStyle, textStyleHeader: _textStyleHeader),
          AppPaddings.dafaultSizedBoxHeight,
          _SystemMonitorList(
              textStyle: _textStyle, textStyleHeader: _textStyleHeader),
          AppPaddings.dafaultSizedBoxHeight,
          _SystemMonitorList(
              textStyle: _textStyle, textStyleHeader: _textStyleHeader),
          AppPaddings.dafaultSizedBoxHeight,
          _SystemMonitorList(
              textStyle: _textStyle, textStyleHeader: _textStyleHeader),
        ],
      ),
    );
  }
}

class _SystemMonitorList extends StatelessWidget {
  const _SystemMonitorList({
    Key? key,
    required TextStyle textStyle,
    required TextStyle textStyleHeader,
  })  : _textStyle = textStyle,
        _textStyleHeader = textStyleHeader,
        super(key: key);

  final TextStyle _textStyle;
  final TextStyle _textStyleHeader;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 75,
          width: 75,
          decoration: AppContainers.containerBorder,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.favorite,
                  color: AppColors.accent,
                  size: 45,
                ),
                Text(
                  "NAME",
                  style: _textStyle,
                )
              ],
            ),
          ),
        ),
        AppPaddings.dafaultSizedBoxWidth,
        Expanded(
            child: Container(
          padding: AppPaddings.defaultPadding,
          decoration: AppContainers.containerBorder,
          height: 75,
          child: SingleChildScrollView(
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "NETWORK: 15 Mbps/s",
                      style: _textStyle,
                    ),
                    Text(
                      "STATUS: STABLE",
                      style: _textStyle,
                    ),
                    Text(
                      "WARNINGS: 0",
                      style: _textStyle,
                    ),
                    Text(
                      "ERRORS: 0",
                      style: _textStyle,
                    )
                  ],
                ),
                Expanded(
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Container(
                        width: 70,
                        height: 30,
                        decoration: AppContainers.containerBorder,
                        child: Center(
                          child: Text(
                            "MORE",
                            style: _textStyleHeader,
                          ),
                        )),
                  ),
                )
              ],
            ),
          ),
        ))
      ],
    );
  }
}

class _SystemMonitorLabel extends StatelessWidget {
  const _SystemMonitorLabel({
    Key? key,
    required TextStyle textStyle,
  })  : _textStyle = textStyle,
        super(key: key);

  final TextStyle _textStyle;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: AppContainers.containerBorder,
      height: 30,
      child: Center(
        child: Text(
          "SYSTEM MONITOR",
          style: _textStyle,
        ),
      ),
    );
  }
}

class _SystemBar extends StatelessWidget {
  const _SystemBar({
    Key? key,
    required TextStyle textStyle,
  })  : _textStyle = textStyle,
        super(key: key);

  final TextStyle _textStyle;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          decoration: AppContainers.containerBorder,
          width: 90,
          height: 90,
          child: Center(
            child: Icon(
              Icons.developer_board,
              color: AppColors.accent,
              size: 70,
            ),
          ),
        ),
        AppPaddings.dafaultSizedBoxWidth,
        Expanded(
            child: Container(
          padding: AppPaddings.defaultPadding,
          height: 90,
          decoration: AppContainers.containerBorder,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "CPU: 86%  ",
                style: _textStyle,
              ),
              Text(
                "RAM: 6.1/7.9 GB",
                style: _textStyle,
              ),
              Text(
                "MEMORY: 21.1/112 GB",
                style: _textStyle,
              ),
              Text(
                "WEB: 0 KB/S  ",
                style: _textStyle,
              )
            ],
          ),
        ))
      ],
    );
  }
}
