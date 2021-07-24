part of 'device_bloc.dart';

@immutable
abstract class DeviceState {
  final RAM ram;
  final Memory memory;
  final CPU cpu;
  DeviceState(this.ram, this.memory, this.cpu);
}

class DeviceInitial extends DeviceState {
  DeviceInitial(RAM ram, Memory memory, CPU cpu) : super(ram, memory, cpu);

}
