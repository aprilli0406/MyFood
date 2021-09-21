import 'package:flutter/material.dart';
import 'package:myfood/view/Login.dart';
import 'package:myfood/view/Register.dart';
import 'package:myfood/view/MainPage.dart';

class Routes {
  Routes._();

  static const String auth_login = '/authlogin';
  static const String auth_register = '/authregister';
  static const String main_page = '/home';

  static Map<String, WidgetBuilder> define() {
    return {
      auth_login: (context) => LoginScreen(),
      auth_register: (context) => RegisterScreen(),
      main_page: (context) => MainPage()
    };
  }
}
