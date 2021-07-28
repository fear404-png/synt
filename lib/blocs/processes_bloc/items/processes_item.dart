import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:synt/blocs/processes_bloc/processes_bloc.dart';

class ProcessesItem {
  final String name;
  final String ip;
  final Icon;
  int duration;
  int? d;

  Timer? _timer;

  ProcessesItem(
    this.name,
    this.ip,
    this.Icon,
    this.duration,
  ) {
    d = duration;
  }

  start() {
    _timer = Timer.periodic(Duration(milliseconds: 400), (Timer timer) {
      if (duration == 0) {
        ProcessesBloc().add(FinalProcess(this));
        timer.cancel();
      } else {
        duration--;
      }
    });
  }
}
