import 'package:flutter/material.dart';


class DashboardHN extends StatefulWidget {
  const DashboardHN({ Key? key }) : super(key: key);

  @override
  _DashboardHNState createState() => _DashboardHNState();
}

class _DashboardHNState extends State<DashboardHN> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text('Dashboard HN'),
    );
  }
}