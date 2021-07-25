part of 'apps_bloc.dart';

@immutable
abstract class AppsState {
  final List<Object> items;

  AppsState(this.items);
}

class AppsInitial extends AppsState {
  AppsInitial(List<Object> items) : super(items);
}
