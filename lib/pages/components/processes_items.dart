import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:synt/blocs/processes_bloc/items/processes_item.dart';
import 'package:synt/blocs/processes_bloc/processes_bloc.dart';

import 'package:synt/pages/components/processes_item.dart';

class ProcessesItemsWidget extends StatelessWidget {
  const ProcessesItemsWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProcessesBloc, ProcessesState>(
      builder: (context, state) {
        List<ProcessesItem> items = state.itemsRun + state.itemsFinished;
        return ListView.builder(
            itemCount: items.length,
            itemBuilder: (context, index) {
              ProcessesItem item = items[items.length - 1 - index];

              return Padding(
                padding: const EdgeInsets.all(5),
                child: ProcessesItemWidget(
                  title: item.name,
                  ip: item.ip,
                  index: index,
                ),
              );
            });
      },
    );
  }
}
