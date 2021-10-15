import 'package:flutter/material.dart';
import 'package:gtw/models/gleave_model.dart';

class GleaveDetail extends StatefulWidget {
  final GleaveModel gleaveModel;
   const GleaveDetail({Key? key, required this.gleaveModel}) : super(key: key);

  @override
  _GleaveDetailState createState() => _GleaveDetailState();
}

class _GleaveDetailState extends State<GleaveDetail> {
  GleaveModel? gleaveModel; //ตัวแปรคนละตัวกับข้างบน

  @override
  void initState() {
    super.initState();
    gleaveModel = widget.gleaveModel;  ///// *******  อันเดียวกันกับข้างบนสุด  ********************////
    
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(gleaveModel!.LEAVE_PERSON_FULLNAME),
      ),
    );
  }
}
