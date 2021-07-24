part of 'device_bloc.dart';

@immutable
abstract class DeviceState {
  final RAM ram;
   final Memory memory;
  DeviceState(this.ram, this.memory);
}

class DeviceInitial extends DeviceState {
  DeviceInitial(RAM ram, Memory memory) : super(ram, memory);
}
