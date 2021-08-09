import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:synt/blocs/processes_bloc/processes_bloc.dart';
import 'package:synt/theme/app_colors.dart';
import 'package:synt/until/app_containers.dart';
import 'package:synt/until/app_font_style.dart';
import 'package:synt/until/app_paddings.dart';

import 'components/processes_items.dart';
import 'components/processes_title.dart';

class ProcessesWidget extends StatelessWidget {
  const ProcessesWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ProcessesBloc(),
      child: Padding(
        padding: AppPaddings.defaultPadding,
        child: Column(
          children: const [
            ProcessesTitle(),
            AppPaddings.defaultSizedBoxHeight,
            Expanded(child: ProcessesItemsWidget())
          ],
        ),
      ),
    );
  }
}
