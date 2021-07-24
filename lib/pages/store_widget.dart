import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:synt/blocs/store_bloc/store_bloc.dart';

import 'package:synt/until/app_paddings.dart';

import 'components/store_background.dart';
import 'components/store_items.dart';

import 'components/store_tabs.dart';
import 'components/store_vignette.dart';

class StoreWidget extends StatelessWidget {
  const StoreWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => StoreBloc()..add(ShowSoftware()),
      child: Column(
        children: [
          //табы с выбором категорий товаров
          const StoreTabsWidget(),
          AppPaddings.defaultSizedBoxHeight,
          Expanded(
            child: Stack(
              children: [
                //задний градиент который создает чет типо полосок
                const StoreBackground(),
                //генерация айтемов в магазине
                StoreItemsWidget(),
                //затемнение сверху всех айтемов
                const StoreVignette()
              ],
            ),
          ),
        ],
      ),
    );
  }
}
