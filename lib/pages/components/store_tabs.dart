import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:synt/blocs/store_bloc/store_bloc.dart';
import 'package:synt/theme/app_colors.dart';

import 'package:synt/until/app_paddings.dart';

import 'store_tab.dart';

//верстка табов
class StoreTabsWidget extends StatelessWidget {
  const StoreTabsWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<StoreBloc, StoreState>(builder: (context, state) {
      if (state is StoreShowHardware) {
        return Row(
          children: [
            Expanded(
                child: StoreTabWidget(
              label: "SOFTWARE",
              event: ShowSoftware(),
              isPress: false,
            )),
            AppPaddings.defaultSizedBoxWidth,
            Expanded(
                child: StoreTabWidget(
              label: "HARDWARE",
              event: ShowHardware(),
              isPress: true,
            )),
          ],
        );
      }

      if (state is StoreShowSoftware) {
        return Row(
          children: [
            Expanded(
                child: StoreTabWidget(
              label: "SOFTWARE",
              event: ShowSoftware(),
              isPress: true,
            )),
            AppPaddings.defaultSizedBoxWidth,
            Expanded(
                child: StoreTabWidget(
              label: "HARDWARE",
              event: ShowHardware(),
              isPress: false,
            )),
          ],
        );
      }

      return Row(
        children: [
          Expanded(
              child: StoreTabWidget(
            label: "SOFTWARE",
            event: ShowSoftware(),
            isPress: false,
          )),
          AppPaddings.defaultSizedBoxWidth,
          Expanded(
              child: StoreTabWidget(
            label: "HARDWARE",
            event: ShowHardware(),
            isPress: false,
          )),
        ],
      );
    });
  }
}
