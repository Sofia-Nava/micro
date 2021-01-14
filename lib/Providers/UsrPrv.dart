import 'package:micropigmentacion/models/user.dart';
import 'package:flutter/cupertino.dart';

class UsrPrv with ChangeNotifier {
  User _user;
  List<User> _users = List<User>();
  User getUser(String email) {
    return _users.firstWhere(
      (element) => element.email == email,
      orElse: () {
        return null;
      },
    );
  }

  get user {
    return _user;
  }

  set user(User user) {
    _user = user;
    notifyListeners();
  }

  get users {
    return _users;
  }

  set users(User user) {
    _users.add(user);
    notifyListeners();
  }
}
