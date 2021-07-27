import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

import 'items/processes_item.dart';

part 'processes_item_event.dart';
part 'processes_item_state.dart';

class ProcessesItemBloc extends Bloc<ProcessesItemEvent, ProcessesItemState> {
  ProcessesItemBloc() : super(ProcessesItemInitial(0));

  @override
  Stream<ProcessesItemState> mapEventToState(
    ProcessesItemEvent event,
  ) async* {
    // TODO: implement mapEventToState
  }
}
