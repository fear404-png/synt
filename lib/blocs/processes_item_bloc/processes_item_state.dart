part of 'processes_item_bloc.dart';

@immutable
abstract class ProcessesItemState {
  int processCount;

  ProcessesItemState(this.processCount);
}

class ProcessesItemInitial extends ProcessesItemState {
  ProcessesItemInitial(int processCount) : super(processCount);
}
