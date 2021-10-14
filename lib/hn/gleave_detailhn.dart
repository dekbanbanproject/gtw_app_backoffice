import 'package:flutter/material.dart';

class GleaveDetail extends StatefulWidget {
  const GleaveDetail({Key? key}) : super(key: key);

  @override
  _GleaveDetailState createState() => _GleaveDetailState();
}

class _GleaveDetailState extends State<GleaveDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('รายละเอียดการลา'),
      ),
    );
  }
}
