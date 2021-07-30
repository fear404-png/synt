import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:synt/blocs/enemy_page_bloc/enemy_page_bloc.dart';
import 'package:synt/theme/app_colors.dart';
import 'package:synt/until/app_containers.dart';
import 'package:synt/until/app_font_style.dart';
import 'package:synt/until/app_paddings.dart';

import 'components/enemy_items_row.dart';

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
                child: ListView.builder(
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      return Column(children: [
                        EnemyItemsRow(),
                        AppPaddings.defaultSizedBoxHeight
                      ]);
                    })),
          );
        },
      ),
    );
  }
}
