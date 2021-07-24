import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:synt/blocs/store_bloc/store_bloc.dart';
import 'package:synt/theme/app_colors.dart';

import 'package:synt/until/app_containers.dart';
import 'package:synt/until/app_font_style.dart';
import 'package:synt/until/app_paddings.dart';

class StoreTabWidget extends StatelessWidget {
  final String label;
  final StoreEvent event;
  final bool isPress;
  const StoreTabWidget({
    Key? key,
    required this.label,
    required this.event,
    required this.isPress,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<StoreBloc, StoreState>(builder: (context, state) {
      return GestureDetector(
        onTap: () {
          BlocProvider.of<StoreBloc>(context).add(event);
        },
        child: Container(
          padding: AppPaddings.defaultPadding,
          decoration: BoxDecoration(
            color: isPress ? AppColors.accent : AppColors.background,
            border: Border.all(
                color: AppColors.accent, width: 1.0, style: BorderStyle.solid),
          ),
          child: Center(
            child: Text(
              "$label",
              style: TextStyle(
                  color: isPress ? AppColors.background : AppColors.accent,
                  fontSize: 18,
                  fontFamily: "IBM"),
            ),
          ),
        ),
      );
    });
  }
}
