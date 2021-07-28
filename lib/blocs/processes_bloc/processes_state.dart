part of 'processes_bloc.dart';

@immutable
abstract class ProcessesState {
  final List<ProcessesItem> itemsRun;
  final List<ProcessesItem> itemsFinished;

  ProcessesState(this.itemsRun, this.itemsFinished);
}

class ProcessesInitial extends ProcessesState {
  ProcessesInitial(
      List<ProcessesItem> itemsRun, List<ProcessesItem> itemsFinished)
      : super(itemsRun, itemsFinished);
}
