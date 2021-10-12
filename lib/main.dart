import 'package:flutter/material.dart';
import 'package:gtw/states/admin.dart';
import 'package:gtw/states/authen.dart';
import 'package:gtw/states/hn.dart';
import 'package:gtw/states/home.dart';
import 'package:gtw/states/po.dart';
import 'package:gtw/states/reset.dart';
import 'package:gtw/states/user.dart';
import 'package:gtw/utility/my_constant.dart';
import 'package:shared_preferences/shared_preferences.dart';

final Map<String, WidgetBuilder> map = {
  '/home': (BuildContext context) => const Home(),
  '/authen': (BuildContext context) => const Authen(),
  '/user': (BuildContext context) => const UserPage(),
  '/hn': (BuildContext context) => const HnPage(),
  '/po': (BuildContext context) => const PoPage(),
  '/ad': (BuildContext context) => const AdminPage(),
  '/reset': (BuildContext context) => const ResetPage(),
};

String? initlalRoute;

Future<Null> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences preferences = await SharedPreferences.getInstance();
  String? type = preferences.getString('type');
  String? fullname = preferences.getString('fullname');
  String? personid = preferences.getString('personid');
  String? positionid = preferences.getString('positionid');
  String? depsubsubid = preferences.getString('depsubsubid');
  print('### ===> $type');
  print('### ===> $fullname');
  print('###personid ===> $personid');
  print('###positionid ===> $positionid');
  print('###depsubsubid ===> $depsubsubid');

  if (type?.isEmpty ?? true) {
    initlalRoute = MyConstant.routeAuthen;
    runApp(MyApp());
  } else {
    switch (type) {
      case 'US':
        initlalRoute = MyConstant.routeUserPage;
        break;
      case 'PO':
        initlalRoute = MyConstant.routePoPage;
        break; 
      case 'HN':
        initlalRoute = MyConstant.routeHnPage;
        break;
      case 'AD':
        initlalRoute = MyConstant.routeAdminPage;
        break;
      default:
    }
  }
}

// void main() {
//   initlalRoute = MyConstant.routeAuthen;
//   runApp(MyApp());
// }

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: MyConstant.appName,
      debugShowCheckedModeBanner: false,
      routes: map,
      initialRoute: initlalRoute,
    );
  }
}
