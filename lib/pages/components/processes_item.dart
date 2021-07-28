import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:synt/blocs/processes_bloc/processes_bloc.dart';

import 'package:synt/theme/app_colors.dart';
import 'package:synt/until/app_containers.dart';
import 'package:synt/until/app_font_style.dart';
import 'package:synt/until/app_paddings.dart';

class ProcessesItemWidget extends StatelessWidget {
  final String title;
  final String ip;
  final int index;

  const ProcessesItemWidget({
    Key? key,
    required this.title,
    required this.ip,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    BlocProvider.of<ProcessesBloc>(context).add(Tick());
    return BlocBuilder<ProcessesBloc, ProcessesState>(
      builder: (context, state) {
        return Row(
          children: [
            const CustomContainer(
                width: 60,
                height: 60,
                child: Icon(
                  Icons.network_locked,
                  color: AppColors.accent,
                ),
                crossAxisAlignment: CrossAxisAlignment.center),
            AppPaddings.defaultSizedBoxWidth,
            Expanded(
                child: CustomContainer(
              height: 60,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  children: [
                    Text(
                      ip,
                      style: AppTextStyle.textStyleHeader,
                    ),
                    Text(
                      title,
                      style: AppTextStyle.textStyle,
                    ),
                  ],
                ),
              ),
              crossAxisAlignment: CrossAxisAlignment.start,
            )),
            AppPaddings.defaultSizedBoxWidth,
            CustomContainer(
                width: 60,
                height: 60,
                child: state.itemsRun.length <= index
                    ? Text(
                        "DONE",
                        style: AppTextStyle.textStyleHeader,
                      )
                    : Stack(
                        children: [
                          CircularProgressIndicator(
                            color: AppColors.accent,
                          ),
                          BlocProvider(
                            create: (context) => ProcessesBloc(),
                            child: Positioned(
                                top: 11,
                                right: 7,
                                child: Text(
                                  "${(100 - state.itemsRun[index].duration / (state.itemsRun[index].d! / 100)).floor()}%",
                                  style: AppTextStyle.textStyle,
                                )),
                          )
                        ],
                      ),
                crossAxisAlignment: CrossAxisAlignment.center),
          ],
        );
      },
    );
  }
}
