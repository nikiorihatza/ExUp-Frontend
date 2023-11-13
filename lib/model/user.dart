import 'dart:convert';

import 'package:flutter/services.dart';

class User {
  int id;
  String firstName;
  String lastName;
  String schoolClass;
  int primaryGroupID;

  User({
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.schoolClass,
    required this.primaryGroupID
  });

  String getFullName() {
    return "$firstName $lastName";
  }

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      id: json['id'] as int,
      firstName: json['firstName'] as String,
      lastName: json['lastName'] as String,
      schoolClass: json['schoolClass'] as String,
      primaryGroupID: json['primaryGroupID'] as int,
    );
  }

  static Future<List<User>> fetchUser() async {
    final String userJson = await rootBundle.loadString('H:\\School\\ExUp\\frontend\\lib\\assets\\dataFiles\\users.json');
    final List<dynamic> usersList = json.decode(userJson);
    return usersList.map((user) => User.fromJson(user)).toList();
  }
}