part of 'device_bloc.dart';

@immutable
abstract class DeviceState {
  final RAM ram;
  final Memory memory;
  final CPU cpu;
  final Network network;
  DeviceState(this.ram, this.memory, this.cpu, this.network);
}

class DeviceInitial extends DeviceState {
  DeviceInitial(RAM ram, Memory memory, CPU cpu, Network network)
      : super(ram, memory, cpu, network);
}
