import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:synt/blocs/store_bloc/store_bloc.dart';
import 'package:synt/theme/app_colors.dart';

import 'package:synt/until/app_paddings.dart';

import 'store_item.dart';

//лист с айтемами
class StoreItemsHardwareWidget extends StatelessWidget {
  const StoreItemsHardwareWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
        //генерация листа в зависимости от выбранной категории

        Padding(
            padding: AppPaddings.defaultPadding,
            child: BlocBuilder<StoreBloc, StoreState>(
              builder: (context, state) {
                return ListView.builder(
                    itemCount: BlocProvider.of<StoreBloc>(context)
                        .state
                        .hardwareItems
                        .length,
                    itemBuilder: (context, index) {
                      final item = BlocProvider.of<StoreBloc>(context)
                          .state
                          .hardwareItems[index];

                      return StoreItemWidget(
                          icon: item.icon,
                          title: item.name,
                          description: item.description,
                          price: item.price,
                          type: item);
                    });
              },
            ));
  }
}
