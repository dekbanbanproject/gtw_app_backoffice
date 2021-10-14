import 'package:flutter/material.dart';
import 'package:gtw/hn/dashboard_hn.dart';
import 'package:gtw/sidbar/sidebarhn.dart';

class LayoutsHN extends StatelessWidget {
  const LayoutsHN({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          DashboardHN(),
           SidebarHN()
           ],
      ),
    );
  }
}
