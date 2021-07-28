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
    return BlocProvider(
      create: (context) => ProcessesBloc(),
      child: BlocBuilder<ProcessesBloc, ProcessesState>(
        builder: (context, state) {
          return ListView.builder(
              itemCount: state.items.length,
              itemBuilder: (context, index) {
                ProcessesItem item = state.items[index];

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
      ),
    );
  }
}
