part of 'user_bloc.dart';

@immutable
abstract class UserEvent {}

class SetUserIp extends UserEvent {
  final String ip;

  SetUserIp(this.ip);
}

class SetPublicBalance extends UserEvent {
  final int btc;

  SetPublicBalance(this.btc);
}

class SetHackPoints extends UserEvent {
  final int points;

  SetHackPoints(this.points);
}

class TransfrerFromPublicBalance extends UserEvent {
  final int btc;

  TransfrerFromPublicBalance(this.btc);
}

class TransfrerFromSecureBalance extends UserEvent {
  final int btc;

  TransfrerFromSecureBalance(this.btc);
}

class AddUserBtc extends UserEvent {
  final int btc;

  AddUserBtc(this.btc);
}

class RemoveUserBtc extends UserEvent {
  final int btc;

  RemoveUserBtc(this.btc);
}

class SetMaxSecureBalance extends UserEvent {
  final int btc;

  SetMaxSecureBalance(this.btc);
}
