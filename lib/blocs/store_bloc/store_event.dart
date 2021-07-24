part of 'store_bloc.dart';

@immutable
abstract class StoreEvent {}

class ShowSoftware extends StoreEvent {}

class ShowHardware extends StoreEvent {}

class BuyItem extends StoreEvent {
  var type;

  BuyItem(this.type);
}
