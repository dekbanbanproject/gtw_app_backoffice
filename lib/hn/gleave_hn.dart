import 'dart:async';
import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:gtw/hn/gleave_detailhn.dart';
import 'package:gtw/models/gleave_model.dart';
import 'package:gtw/models/gleave_model.dart';
import 'package:gtw/utility/my_constant.dart';
import 'package:gtw/utility/my_dialog.dart';

class GleaveHn extends StatefulWidget {
  const GleaveHn({Key? key}) : super(key: key);

  @override
  _GleaveHnState createState() => _GleaveHnState();
}

class _GleaveHnState extends State<GleaveHn> {
  List<GleaveModel> gleavemodels = [];
  List<GleaveModel> searchgleavemodels = [];
  final debouncer = Debouncer(millisecond: 500);
  bool loadStatus = true;

  @override
  void initState() {
    super.initState();
    readdatagleave();
  }

  Future<Null> readdatagleave() async {
    String apireaData = '${MyConstant.domain}/gtw/api/gleavehn.php?isAdd=true';
    await Dio().get(apireaData).then((value) {
      if (value.toString() == 'null') {
        MyDialog().normalDialog(context, 'ไม่มีข้อมูล', 'ไม่มีการร้องขอการลา');
      } else {
        for (var item in json.decode(value.data)) {
          GleaveModel model = GleaveModel.fromMap(item);
          print('### ==>>>${model.LEAVE_PERSON_FULLNAME}');

          setState(() {
            gleavemodels.add(model);
            searchgleavemodels = gleavemodels;
          });
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: gleavemodels.length == 0
          ? Center(child: CircularProgressIndicator())
          : SingleChildScrollView(
              child: Column(
                children: [
                  builSearch(),
                  buildListView(),
                ],
              ),
            ),
    );
  }

  Container builSearch() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: TextFormField(
        onChanged: (value) {
          debouncer.run(() {
            setState(() {
              searchgleavemodels = gleavemodels
                  .where((element) => element.LEAVE_PERSON_FULLNAME
                      .toLowerCase()
                      .contains(value.toLowerCase()))
                  .toList();
            });
          });
        },
        decoration: InputDecoration(
          prefixIcon: Icon(Icons.search),
          border: OutlineInputBorder(),
        ),
      ),
    );
  }

  ListView buildListView() {
    return ListView.builder(
      padding: EdgeInsets.symmetric(horizontal: 16),
      shrinkWrap: true,
      physics: const ScrollPhysics(),
      itemCount: searchgleavemodels.length,
      itemBuilder: (context, index) => GestureDetector(
          onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => GleaveDetail(),
              )),
          child: Card(
              child: Text(searchgleavemodels[index].LEAVE_PERSON_FULLNAME))),
    );
  }
}

class Debouncer {
  final int millisecond;
  Timer? timer;
  VoidCallback? callback;

  Debouncer({required this.millisecond});

  run(VoidCallback callback) {
    if (null != timer) {
      timer!.cancel();
    }
    timer = Timer(Duration(milliseconds: millisecond), callback);
  }
}  

//   Container buildSearch() {
//     return Container(
//       margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
//       child: TextFormField(
//         onChanged: (value) {
//           debouncer.run(() {
//             setState(() {
//               searchgleavemodels = gleavemodels
//                   .where((element) => element.LEAVE_PERSON_FULLNAME
//                       .toLowerCase()
//                       .contains(value.toLowerCase()))
//                   .toList();
//             });
//           });
//         },
//         decoration: const InputDecoration(
//           prefixIcon: Icon(Icons.search),
//           border: OutlineInputBorder(),
//         ),
//       ),
//     );
//   }
// }


// class GleaveHn extends StatelessWidget {
//   const GleaveHn({ Key? key }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {

//     return Text(
//       'เห็นชอบระบบลา'
//     );
//   }

