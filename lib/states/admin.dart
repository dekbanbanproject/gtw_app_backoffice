import 'package:flutter/material.dart';
import 'package:gtw/utility/my_constant.dart';
import 'package:gtw/widgets/show_signout.dart';
import 'package:gtw/widgets/show_title.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AdminPage extends StatefulWidget {
  const AdminPage({Key? key}) : super(key: key);

  @override
  _AdminPageState createState() => _AdminPageState();
}

class _AdminPageState extends State<AdminPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.red.shade400,
        title: Text('ผู้ดูแลระบบ'),
      ),
      drawer: Drawer(
        child: ShowSignOut(),
      ),
    );
  }

  

  
}
