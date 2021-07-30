part of 'apps_bloc.dart';

@immutable
abstract class AppsState {
  final List<Software> items;

  AppsState(this.items);
}

class AppsInitial extends AppsState {
  AppsInitial(List<Software> items) : super(items);
}
