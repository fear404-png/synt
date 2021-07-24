part of 'device_bloc.dart';

@immutable
abstract class DeviceEvent {}

class ChangeRam extends DeviceEvent {
  final RAM ram;

  ChangeRam(this.ram);
}

class ChangeMemory extends DeviceEvent {
  final Memory memory;

  ChangeMemory(this.memory);
}
