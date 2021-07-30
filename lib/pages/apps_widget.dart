import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:synt/blocs/apps_bloc/apps_bloc.dart';
import 'package:synt/blocs/store_bloc/items/antivirus.dart';
import 'package:synt/blocs/store_bloc/items/bypasser.dart';
import 'package:synt/blocs/store_bloc/items/firewall.dart';
import 'package:synt/blocs/store_bloc/items/password_cracker.dart';
import 'package:synt/blocs/store_bloc/items/password_encryptor.dart';
import 'package:synt/blocs/store_bloc/items/software.dart';
import 'package:synt/blocs/store_bloc/items/spam.dart';
import 'package:synt/blocs/store_bloc/items/spyware.dart';
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
                      Software _item = state.items[index];
                      String name = "not found";
                      if (_item is Antivirus)
                        name = "Antivirus";
                      else if (_item is Bypasser)
                        name = "Bypasser";
                      else if (_item is Firewall)
                        name = "Firewall";
                      else if (_item is Bypasser)
                        name = "Bypasser";
                      else if (_item is PasswordEncryptor)
                        name = "Encryptor";
                      else if (_item is PasswordCracker)
                        name = "Cracker";
                      else if (_item is Spam)
                        name = "Spam";
                      else if (_item is Spyware) name = "Spyware";

                      return AppsItem(
                          name: name,
                          description: _item.description,
                          lvl: _item.lvl,
                          icon: _item.iconSoft);
                    }),
              );
            },
          )),
    );
  }
}
