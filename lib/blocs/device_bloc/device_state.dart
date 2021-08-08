part of 'device_bloc.dart';

@immutable
abstract class DeviceState {
  final double usedMemory;
  final double usedRam;
  final double usedCpu;
  final double usedNetwork;

  final RAM installedRam;
  final Memory installedMemory;
  final CPU installedCpu;
  final Network installedNetwork;

  DeviceState(
      this.usedMemory,
      this.usedRam,
      this.usedCpu,
      this.usedNetwork,
      this.installedRam,
      this.installedMemory,
      this.installedCpu,
      this.installedNetwork);
}

class DeviceInitial extends DeviceState {
  DeviceInitial(
      double usedMemory,
      double usedRam,
      double usedCpu,
      double usedNetwork,
      RAM installedRam,
      Memory installedMemory,
      CPU installedCpu,
      Network installedNetwork)
      : super(usedMemory, usedRam, usedCpu, usedNetwork, installedRam,
            installedMemory, installedCpu, installedNetwork);
}
