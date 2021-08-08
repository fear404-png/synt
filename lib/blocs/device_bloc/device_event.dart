part of 'device_bloc.dart';

@immutable
abstract class DeviceEvent {}

class SetInstalledItem extends DeviceEvent {
  final dynamic item;

  SetInstalledItem(this.item);
}

class AddUsedResource extends DeviceEvent {
  final double resource;
  final String type;

  AddUsedResource(this.resource, this.type);
}

class RemoveUsedResource extends DeviceEvent {
  final double resource;
  final String type;

  RemoveUsedResource(this.resource, this.type);
}
