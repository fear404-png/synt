part of 'processes_bloc.dart';

@immutable
abstract class ProcessesEvent {}

class AddProcess extends ProcessesEvent {}

class Tick extends ProcessesEvent {}
