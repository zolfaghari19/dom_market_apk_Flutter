import 'package:application/models/user_model.dart';
import 'package:flutter/material.dart';

class UserProviders extends ChangeNotifier {
  UserModel _user = UserModel(
    name: "Ali",
    email: "me.2025@gmail.com",
    image: "assets/images/Profiles.jpg",
  );

  UserModel get user => _user;

  void UpdateUser(String name, String email) {
    _user = UserModel(name: name, email: email, image: _user.image);
    notifyListeners();
  }
}
