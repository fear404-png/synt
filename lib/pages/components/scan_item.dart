import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:synt/blocs/enemy_page_bloc/enemy_page_bloc.dart';
import 'package:synt/data/data.dart';
import 'package:synt/data/user.dart';
import 'package:synt/theme/app_colors.dart';
import 'package:synt/until/app_containers.dart';
import 'package:synt/until/app_font_style.dart';
import 'package:synt/until/app_paddings.dart';
import 'package:synt/until/global_params.dart';

class ScanItemWidget extends StatefulWidget {
  final String ip;
  final int index;

  const ScanItemWidget({
    Key? key,
    required this.ip,
    required this.index,
  }) : super(key: key);

  @override
  State<ScanItemWidget> createState() => _ScanItemWidgetState();
}

class _ScanItemWidgetState extends State<ScanItemWidget> {
  bool isNotPress = true;
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => EnemyPageBloc(),
      child: BlocBuilder<EnemyPageBloc, EnemyPageState>(
        builder: (context, state) {
          return GestureDetector(
            onTapDown: (TapDownDetails t) => setState(() => isNotPress = false),
            onTapUp: (TapUpDetails t) => setState(() => isNotPress = true),
            onTapCancel: () => setState(() => isNotPress = true),
            onTap: () {
              BlocProvider.of<EnemyPageBloc>(context).add(SetEnemy());
              EnemyUser.user = UserData.enemyUsersList[widget.index];
              Navigator.of(context).pushNamed("/main_screen/scan/enemy");
            },
            child: Padding(
              padding: AppPaddings.defaultPadding,
              child: Expanded(
                child: GestureDetector(
                  child: CustomContainer(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    color: isNotPress ? AppColors.background : AppColors.accent,
                    height: 45,
                    child: Text(
                      widget.ip,
                      style: isNotPress
                          ? AppTextStyle.textStyleHeader
                          : AppTextStyle.negativeTextStyleTextStyleHeader,
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
