import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:synt/blocs/enemy_page_bloc/enemy_page_bloc.dart';
import 'package:synt/theme/app_colors.dart';
import 'package:synt/until/app_containers.dart';
import 'package:synt/until/app_font_style.dart';
import 'package:synt/until/app_paddings.dart';

import 'components/enemy_item.dart';

class EnemyPage extends StatelessWidget {
  const EnemyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => EnemyPageBloc(),
      child: BlocBuilder<EnemyPageBloc, EnemyPageState>(
        builder: (context, state) {
          return Scaffold(
            backgroundColor: AppColors.background,
            appBar: AppBar(
                foregroundColor: AppColors.accent,
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "${state.enemyUser.btc} BTC",
                      style: AppTextStyle.textStyleHeader,
                    ),
                    Text(
                      state.enemyUser.ip,
                      style: AppTextStyle.textStyleHeader,
                    )
                  ],
                )),
            body: Padding(
                padding: AppPaddings.defaultPadding,
                child: SingleChildScrollView(
                  child: Container(
                    width: double.infinity,
                    child: Wrap(
                      spacing: 20,
                      runSpacing: 20,
                      direction: Axis.horizontal,
                      alignment: WrapAlignment.spaceAround,
                      children: const [
                        EnemyItem(
                          name: "Processes",
                          icon: Icon(
                            Icons.replay_outlined,
                            color: AppColors.accent,
                            size: 45,
                          ),
                        ),
                        EnemyItem(
                          name: "Scan",
                          icon: Icon(
                            Icons.scanner,
                            color: AppColors.accent,
                            size: 45,
                          ),
                        ),
                        EnemyItem(
                          name: "Bank Account",
                          icon: Icon(
                            Icons.money,
                            color: AppColors.accent,
                            size: 45,
                          ),
                        ),
                        EnemyItem(
                          name: "Store",
                          icon: Icon(
                            Icons.store,
                            color: AppColors.accent,
                            size: 45,
                          ),
                        ),
                        EnemyItem(
                          name: "Messages",
                          icon: Icon(
                            Icons.mail,
                            color: AppColors.accent,
                            size: 45,
                          ),
                        ),
                        EnemyItem(
                          name: "Log",
                          icon: Icon(
                            Icons.text_fields,
                            color: AppColors.accent,
                            size: 45,
                          ),
                        ),
                        EnemyItem(
                          name: "Apps",
                          icon: Icon(
                            Icons.apps,
                            color: AppColors.accent,
                            size: 45,
                          ),
                        ),
                        EnemyItem(
                          name: "Device",
                          icon: Icon(
                            Icons.computer,
                            color: AppColors.accent,
                            size: 45,
                          ),
                        ),
                      ],
                    ),
                  ),
                )),
          );
        },
      ),
    );
  }
}
