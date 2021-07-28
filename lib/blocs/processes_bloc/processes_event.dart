part of 'processes_bloc.dart';

@immutable
abstract class ProcessesEvent {}

class AddProcess extends ProcessesEvent {}

class FinalProcess extends ProcessesEvent {
  final ProcessesItem item;

  FinalProcess(this.item);
}

class Tick extends ProcessesEvent {}
