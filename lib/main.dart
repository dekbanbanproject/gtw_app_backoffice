import 'package:flutter/material.dart';
import 'package:gtw/states/authen.dart';
import 'package:gtw/states/hn.dart';
import 'package:gtw/states/home.dart';
import 'package:gtw/states/po.dart';
import 'package:gtw/states/reset.dart';
import 'package:gtw/states/user.dart';
import 'package:gtw/utility/my_constant.dart';

final Map<String, WidgetBuilder> map = {
  '/home': (BuildContext context) => const Home(),
  '/authen': (BuildContext context) => const Authen(),
  '/user': (BuildContext context) => const UserPage(),
  '/hn': (BuildContext context) => const HnPage(),
  '/po': (BuildContext context) => const PoPage(),
  '/reset': (BuildContext context) => const ResetPage(),
};

String? initlalRoute;

void main() {
  initlalRoute = MyConstant.routeAuthen;
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: MyConstant.appName,debugShowCheckedModeBanner: false,
      routes: map,
      initialRoute: initlalRoute,
    );
  }
}
