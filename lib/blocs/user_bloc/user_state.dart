part of 'user_bloc.dart';

@immutable
abstract class UserState {
  final String ip;
  final int secureBalance;
  final int publicBalance;
  final int hackPoints;
  final int maxSecureBlance;

  const UserState(this.ip, this.secureBalance, this.publicBalance,
      this.hackPoints, this.maxSecureBlance);
}

class UserInitial extends UserState {
  const UserInitial(String ip, int secureBalance, int publicBalance,
      int hackPoints, int maxSecureBlance)
      : super(ip, secureBalance, publicBalance, hackPoints, maxSecureBlance);
}
