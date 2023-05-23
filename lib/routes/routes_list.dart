import 'package:get/get.dart';
import 'package:flutter_bootcamp_tugas1_widget/pages/login/login_page.dart';
import 'package:flutter_bootcamp_tugas1_widget/pages/home/home_page.dart';

class MyRoutes {
  static const String _login = "/";
  static const String _home = "/HomePage";

  static String getLoginRoute() => _login;
  static String getHomeRoute() => _home;

  static List<GetPage> routes = [
    GetPage(
      name: _login, 
      page: () => const LoginPage(),
    ),
    GetPage(
      name: _home, 
      page: () => const HomePage(),
    )




  ];
}