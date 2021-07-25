part of 'apps_bloc.dart';

@immutable
abstract class AppsEvent {}

class AddItem extends AppsEvent {
  final item;
  final int lvl;

  AddItem(this.item, this.lvl);
}
