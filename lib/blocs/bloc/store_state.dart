part of 'store_bloc.dart';

@immutable
abstract class StoreState {}

class StoreInitial extends StoreState {}

class StoreShowSoftware extends StoreState {}

class StoreShowHardware extends StoreState {}
