part of 'appbar_bloc.dart';

@immutable
abstract class AppbarState {
  final int btc;

  const AppbarState(this.btc);
}

class AppbarInitial extends AppbarState {
  const AppbarInitial(int btc) : super(btc);
}
