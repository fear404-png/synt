import 'dart:async';
import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
import 'package:synt/blocs/processes_item_bloc/items/processes_item.dart';
import 'package:synt/pages/components/processes_item.dart';
import 'package:synt/theme/app_colors.dart';

part 'processes_event.dart';
part 'processes_state.dart';

class ProcessesBloc extends Bloc<ProcessesEvent, ProcessesState> {
  static List<ProcessesItem> _items = [];
  ProcessesBloc() : super(ProcessesInitial(_items));

  @override
  Stream<ProcessesState> mapEventToState(
    ProcessesEvent event,
  ) async* {
    // TODO: implement mapEventToState
    if (event is AddProcess) {
      _items.add(ProcessesItem(
          "Random process",
          "${Random().nextInt(999)}.${Random().nextInt(999)}.${Random().nextInt(999)}.",
          Icon(Icons.run_circle),
          Random().nextInt(100)));
      print(_items);
      yield ProcessesInitial(_items);
    }
  }
}
