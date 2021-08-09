import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:synt/blocs/store_bloc/store_bloc.dart';
import 'package:synt/theme/app_colors.dart';

import 'package:synt/until/app_paddings.dart';

import 'store_item.dart';

//лист с айтемами
class StoreItemsSoftwareWidget extends StatelessWidget {
  const StoreItemsSoftwareWidget({
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
                        .softwareItems
                        .length,
                    itemBuilder: (context, index) {
                      final item = BlocProvider.of<StoreBloc>(context)
                          .state
                          .softwareItems[index];

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
