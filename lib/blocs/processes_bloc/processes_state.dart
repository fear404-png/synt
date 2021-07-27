part of 'processes_bloc.dart';

@immutable
abstract class ProcessesState {
  final List<ProcessesItem> items;

  ProcessesState(this.items);
}

class ProcessesInitial extends ProcessesState {
  ProcessesInitial(List<ProcessesItem> items) : super(items);
}
