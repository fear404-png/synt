import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:synt/blocs/processes_bloc/processes_bloc.dart';
import 'package:synt/until/app_font_style.dart';
import 'package:synt/until/app_paddings.dart';

class ProcessesTitle extends StatelessWidget {
  const ProcessesTitle({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProcessesBloc, ProcessesState>(
      builder: (context, state) {
        return Row(
          children: [
            Text(
              "Total: ${state.itemsFinished.length + state.itemsRun.length}",
              style: AppTextStyle.textStyleHeader,
            ),
            AppPaddings.defaultSizedBoxWidth,
            Text(
              "Running: ${state.itemsRun.length}",
              style: AppTextStyle.textStyleHeader,
            ),
          ],
        );
      },
    );
  }
}
