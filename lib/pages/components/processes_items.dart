import 'package:flutter/material.dart';
import 'package:synt/pages/components/processes_item.dart';

class ProcessesItems extends StatelessWidget {
  const ProcessesItems({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 3,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(5),
            child: ProcessesItem(),
          );
        });
  }
}