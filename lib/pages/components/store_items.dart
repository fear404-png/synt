import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:synt/blocs/store_bloc/items/antivirus.dart';
import 'package:synt/blocs/store_bloc/items/bypasser.dart';
import 'package:synt/blocs/store_bloc/items/cpu.dart';
import 'package:synt/blocs/store_bloc/items/firewall.dart';
import 'package:synt/blocs/store_bloc/items/hardware.dart';
import 'package:synt/blocs/store_bloc/items/memory.dart';
import 'package:synt/blocs/store_bloc/items/network.dart';
import 'package:synt/blocs/store_bloc/items/password_cracker.dart';
import 'package:synt/blocs/store_bloc/items/password_encryptor.dart';
import 'package:synt/blocs/store_bloc/items/ram.dart';
import 'package:synt/blocs/store_bloc/items/software.dart';
import 'package:synt/blocs/store_bloc/items/spam.dart';
import 'package:synt/blocs/store_bloc/items/spyware.dart';
import 'package:synt/blocs/store_bloc/store_bloc.dart';
import 'package:synt/theme/app_colors.dart';

import 'package:synt/until/app_paddings.dart';

import 'store_item.dart';

//лист с айтемами
class StoreItemsWidget extends StatelessWidget {
  StoreItemsWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<StoreBloc, StoreState>(builder: (context, state) {
      //генерация листа в зависимости от выбранной категории

      if (state is StoreShowSoftware) {
        return Padding(
          padding: AppPaddings.defaultPadding,
          child: ListView.builder(
              itemCount: state.itemsSoftware.length,
              itemBuilder: (context, index) {
                String title = "not found";
                Software item = state.itemsSoftware[index];

                if (item is Antivirus)
                  title = "Antivirus ${item.lvl} lvl";
                else if (item is Bypasser)
                  title = "Bypasser ${item.lvl} lvl";
                else if (item is Firewall)
                  title = "Firewall ${item.lvl} lvl";
                else if (item is PasswordCracker)
                  title = "Cracker ${item.lvl} lvl";
                else if (item is PasswordEncryptor)
                  title = "Encryptor ${item.lvl} lvl";
                else if (item is Spam)
                  title = "Spam ${item.lvl} lvl";
                else if (item is Spyware) title = "Spyware ${item.lvl} lvl";

                return StoreItemWidget(
                    icon: item.iconSoft,
                    title: title,
                    description: item.description,
                    price: item.price,
                    type: item);
              }),
        );
      }

      if (state is StoreShowHardware) {
        return Padding(
          padding: AppPaddings.defaultPadding,
          //генерация листа с айтемами магазина

          child: ListView.builder(
              itemCount: state.itemsHardware.length,
              itemBuilder: (context, index) {
                String title = "not found";
                Hardware item = state.itemsHardware[index];

                if (item is RAM)
                  title = "RAM ${item.param} GB";
                else if (item is Memory)
                  title = "Memory ${item.param} GB";
                else if (item is CPU)
                  title = "CPU ${item.param} GFLOPS";
                else if (item is Network)
                  title = "Network ${item.param} Mbit/s";

                return StoreItemWidget(
                    icon: state.itemsHardware[index].icon,
                    title: title,
                    description: state.itemsHardware[index].description,
                    price: state.itemsHardware[index].price,
                    type: state.itemsHardware[index]);
              }),
        );
      }

      return const Center(
        child: Text(
          "page not found",
          style: TextStyle(color: AppColors.accent),
        ),
      );
    });
  }
}
