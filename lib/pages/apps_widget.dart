import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:synt/blocs/inventory_bloc/inventory_bloc.dart';

import 'package:synt/data/software.dart';
import 'package:synt/theme/app_colors.dart';
import 'package:synt/until/app_containers.dart';
import 'package:synt/until/app_font_style.dart';
import 'package:synt/until/app_paddings.dart';

import 'components/apps_item.dart';

class AppsWidget extends StatelessWidget {
  const AppsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.background,
        appBar: AppBar(
          foregroundColor: AppColors.accent,
        ),
        body: Padding(
          padding: AppPaddings.defaultPadding,
          child: ListView.builder(
              itemCount: BlocProvider.of<InventoryBloc>(context).state.softwareItems.length,
              itemBuilder: (context, index) {
                Software _item =BlocProvider.of<InventoryBloc>(context).state.softwareItems[index];

                return AppsItem(
                    name: _item.name,
                    description: _item.description,
                    lvl: _item.lvl,
                    icon: _item.icon);
              }),
        ));
  }
}
