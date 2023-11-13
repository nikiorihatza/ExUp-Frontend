import 'package:flutter/cupertino.dart';

import '../model/user.dart';

class UserProvider extends ChangeNotifier {
  late final List<User> _users = [
    User(
      id: 2010622,
      firstName: "John",
      lastName: "Doe",
      schoolClass: "5BHIF",
      primaryGroupID: 101,
    ),
    User(
      id: 2015522,
      firstName: "Jane",
      lastName: "Smith",
      schoolClass: "1BHIF",
      primaryGroupID: 102,
    ),
    User(
      id: 2013878,
      firstName: "Bob",
      lastName: "Johnson",
      schoolClass: "3CHIF",
      primaryGroupID: 103,
    ),
    User(
      id: 2010691,
      firstName: "Alice",
      lastName: "Williams",
      schoolClass: "5AHIF",
      primaryGroupID: 104,
    ),
  ];

  List<User> get users => _users;

  UserProvider() {
    initializeProvider();
  }

  void addUser(User user) {
    _users.add(user);
    notifyListeners();
  }

  void removeUser(User user) {
    _users.remove(user);
    notifyListeners();
  }

  initializeProvider() async {
    //_users = await User.fetchUser();
    //notifyListeners();
  }
}