import 'package:flutter/material.dart';
import 'package:gtw/utility/my_constant.dart';
import 'package:gtw/widgets/show_signout.dart';
import 'package:gtw/widgets/show_title.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HnPage extends StatefulWidget {
  const HnPage({Key? key}) : super(key: key);

  @override
  _HnPageState createState() => _HnPageState();
}

class _HnPageState extends State<HnPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange.shade400,
        title: Text('หัวหน้า'),
      ),
      drawer: Drawer(
        child: Stack(
          children: [
            ShowSignOut(),
            Column(
              children: [
                UserAccountsDrawerHeader(accountName: null, accountEmail: null),
                ListTile(
                  leading: Icon(
                    Icons.medication,
                    size: 36,
                    color: Colors.orange,
                  ),
                  title: ShowTitle(
                    title: 'ประชาสัมพันธ์',
                    textStyle: MyConstant().h2dark(),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
