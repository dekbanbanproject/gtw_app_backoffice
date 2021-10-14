import 'package:flutter/material.dart';
import 'package:gtw/hn/dev_hn.dart';
import 'package:gtw/hn/devbook_hn.dart';
import 'package:gtw/hn/gleave_hn.dart';
import 'package:gtw/hn/supplies_hn.dart';
import 'package:gtw/hn/wherehouse_hn.dart';
import 'package:gtw/utility/my_constant.dart';

class AdvertisePage extends StatefulWidget {
  const AdvertisePage({Key? key}) : super(key: key);

  @override
  _AdvertisePageState createState() => _AdvertisePageState();
}

class _AdvertisePageState extends State<AdvertisePage> {
  List<String>? menus;
  List<Color>? colors;
  List<Widget> widgets = [
    const DevbookHn(),
    const GleaveHn(),
    const DevHN(),
    const SuppliesHn(),
    const WhereHouseHn(),
  ];

  int indexBody = 0;
  final scaffoldKey = GlobalKey<ScaffoldState>();


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    menus = MyConstant.menus;
    colors = MyConstant.colors;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(key: scaffoldKey,
      body: SafeArea(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // IconButton(
              //   onPressed: () {
              //      scaffoldKey.currentState!.openDrawer();
              //   },
              //   icon: const Icon(Icons.menu),
              // ),
              SizedBox(
                // height: 30,
              ),
              builListview(),
              widgets[indexBody],
            ],
          ),
        ),
      ),
    );
  }

  Container builListview() {
    return Container(height: 50,
      child: Expanded(
        child: ListView.builder(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemCount: menus!.length,
          itemBuilder: (context, index) => GestureDetector(
            onTap: () {
              setState(() {
                indexBody = index;
              });
            },
            child: Card(
              color: colors![index],
              child: Padding(
                padding: const EdgeInsets.only(
                    left: 20, top: 8, right: 20, bottom: 8),
                child: Center(
                  child: Text(menus![index]),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}