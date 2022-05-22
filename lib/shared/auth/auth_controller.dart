import 'package:flutter/material.dart';
import 'package:payflow/modules/home/home_page.dart';

import '../../modules/login/login_page.dart';

class AuthController {
  var _isAuthencicated = false;
  var _user;

  get user => _user;

  void setUser(BuildContext context, var user) {
    if (user != null) {
      _user = user;
      _isAuthencicated = true;
      Navigator.pushReplacementNamed(
          context, "/home");
    } else {
      _isAuthencicated = false;
      Navigator.pushReplacementNamed(
          context, "/login");
    }
  }
}
