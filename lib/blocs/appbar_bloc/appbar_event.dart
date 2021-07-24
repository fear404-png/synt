part of 'appbar_bloc.dart';

@immutable
abstract class AppbarEvent {}

class AddBtc extends AppbarEvent {
  final int btc;

  AddBtc(this.btc);
}

class RemoveBtc extends AppbarEvent {
  final int btc;

  RemoveBtc(this.btc);
}
