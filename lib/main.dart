import 'package:flutter/material.dart';
import 'package:flutter_bootcamp_tugas1_widget/constants/default_constants.dart';
import 'package:get/get.dart';
import 'package:get/route_manager.dart';
import 'routes/routes_list.dart';


void main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: NamesConstans.APPS_TITLE,
      debugShowCheckedModeBanner: false,
      getPages: MyRoutes.routes,
      initialRoute: MyRoutes.getLoginRoute(),
    );
  }
}
