import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:synt/blocs/processes_bloc/processes_bloc.dart';

class ProcessesItem {
  final String name;
  final String ip;
  final Icon;
  int duration;

  Timer? _timer;

  ProcessesItem(this.name, this.ip, this.Icon, this.duration);

  start() {
    _timer = Timer.periodic(Duration(seconds: 1), (Timer timer) {
      if (duration == 0) {
        timer.cancel();
      } else {
        duration--;
      }
    });
  }
}
