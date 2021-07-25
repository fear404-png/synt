import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:synt/blocs/apps_bloc/apps_bloc.dart';
import 'package:synt/blocs/store_bloc/items/antivirus.dart';
import 'package:synt/blocs/store_bloc/items/bypasser.dart';
import 'package:synt/blocs/store_bloc/items/firewall.dart';
import 'package:synt/blocs/store_bloc/items/password_cracker.dart';
import 'package:synt/blocs/store_bloc/items/password_encryptor.dart';
import 'package:synt/blocs/store_bloc/items/spam.dart';
import 'package:synt/theme/app_colors.dart';
import 'package:synt/until/app_containers.dart';
import 'package:synt/until/app_font_style.dart';
import 'package:synt/until/app_paddings.dart';

import 'components/apps_item.dart';

class AppsWidget extends StatelessWidget {
  const AppsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AppsBloc(),
      child: Scaffold(
          backgroundColor: AppColors.background,
          appBar: AppBar(
            foregroundColor: AppColors.accent,
          ),
          body: BlocBuilder<AppsBloc, AppsState>(
            builder: (context, state) {
              return Padding(
                padding: AppPaddings.defaultPadding,
                child: ListView.builder(
                    itemCount: state.items.length,
                    itemBuilder: (context, index) {
                      var _item = state.items[index];
                      if (_item is Antivirus) {
                        return AppsItem(
                            name: "Anitivirus",
                            description: _item.description,
                            lvl: _item.lvl,
                            icon: _item.icon);
                      }
                      if (_item is Bypasser) {
                        return AppsItem(
                            name: "Bypasser",
                            description: _item.description,
                            lvl: _item.lvl,
                            icon: _item.icon);
                      }
                      if (_item is Firewall) {
                        return AppsItem(
                            name: "Firewall",
                            description: _item.description,
                            lvl: _item.lvl,
                            icon: _item.icon);
                      }
                      if (_item is PasswordEncryptor) {
                        return AppsItem(
                            name: "Password encryptor",
                            description: _item.description,
                            lvl: _item.lvl,
                            icon: _item.icon);
                      }
                      if (_item is PasswordCracker) {
                        return AppsItem(
                            name: "Password cracker",
                            description: _item.description,
                            lvl: _item.lvl,
                            icon: _item.icon);
                      }
                      if (_item is Spam) {
                        return AppsItem(
                            name: "Spam",
                            description: _item.description,
                            lvl: _item.lvl,
                            icon: _item.icon);
                      }
                      if (_item is PasswordCracker) {
                        return AppsItem(
                            name: "Spyware",
                            description: _item.description,
                            lvl: _item.lvl,
                            icon: _item.icon);
                      }
                      return Row();
                    }),
              );
            },
          )),
    );
  }
}
