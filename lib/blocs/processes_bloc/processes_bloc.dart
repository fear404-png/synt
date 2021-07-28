import 'dart:async';

import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

import 'items/processes_item.dart';

part 'processes_event.dart';
part 'processes_state.dart';

class ProcessesBloc extends Bloc<ProcessesEvent, ProcessesState> {
  static List<ProcessesItem> _itemsRun = [];
  static List<ProcessesItem> _itemsFinished = [];
  ProcessesBloc() : super(ProcessesInitial(_itemsRun));

  @override
  Stream<ProcessesState> mapEventToState(
    ProcessesEvent event,
  ) async* {
    // TODO: implement mapEventToState
    if (event is AddProcess) {
      int _duration = Random().nextInt(100);

      _itemsRun.add(ProcessesItem(
          "Random process",
          "${Random().nextInt(999)}.${Random().nextInt(999)}.${Random().nextInt(999)}.${Random().nextInt(999)}",
          Icon(Icons.run_circle),
          _duration)
        ..start());

      yield ProcessesInitial(_itemsRun);
    }

    if (event is Tick) {
      Future.delayed(Duration(seconds: 1)).then((value) {
        add(Tick());
      });
      yield ProcessesInitial(_itemsRun);
    }
  }
}
