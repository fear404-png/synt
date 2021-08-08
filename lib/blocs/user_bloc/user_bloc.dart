import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'user_event.dart';
part 'user_state.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  //параметры игрока
  static String _ip = "127.0.0.1";
  static int _secureBalance = 0;
  static int _publicBalance = 0;
  static int _hackPoints = 0;
  static int _maxSecureBalance = 10000;

  UserBloc()
      : super(UserInitial(_ip, _secureBalance, _publicBalance, _hackPoints,
            _maxSecureBalance));

  @override
  Stream<UserState> mapEventToState(
    UserEvent event,
  ) async* {
    if (event is SetUserIp) {
      //смена айпи
      _ip = event.ip;
    } else if (event is SetPublicBalance) {
      //изменить публичный баланас пользователя
      _publicBalance = event.btc;
    } else if (event is SetHackPoints) {
      _hackPoints = event.points;
    } else if (event is TransfrerFromPublicBalance) {
      //отправить средства с публичного баланса в защищенный
      _secureBalance += event.btc;
      _publicBalance -= event.btc;
    } else if (event is TransfrerFromSecureBalance) {
      //отправить средства с защищенного баланса в публичный
      _secureBalance -= event.btc;
      _publicBalance += event.btc;
    } else if (event is AddUserBtc) {
      //добавить биткоинов в публичный баланс
      _publicBalance += event.btc;
    } else if (event is RemoveUserBtc) {
      //снять биткоины с публичного баланса
      _publicBalance -= event.btc;
    } else if (event is SetMaxSecureBalance) {
      //измекнить максимально доступные средства на защищенном балансе
      _maxSecureBalance = event.btc;
    }
    //возвращает стейт после изменений
    yield UserInitial(
        _ip, _secureBalance, _publicBalance, _hackPoints, _maxSecureBalance);
  }
}
