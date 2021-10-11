import 'package:flutter/material.dart';
import 'package:gtw/utility/my_constant.dart';
import 'package:gtw/widgets/show_image.dart';
import 'package:gtw/widgets/show_title.dart';


class MyDialog{
  Future<Null> normalDialog(BuildContext context, String message, String s) async {
  showDialog(
    context: context,
    builder: (context) => SimpleDialog(
      title: ListTile(
        leading: ShowImage(path: MyConstant.img2),
        title: ShowTitle(title: 'title', textStyle: MyConstant().h2dan()),
        subtitle: ShowTitle(title: 'title', textStyle: MyConstant().h3dark()),
      ),
      children: [
        TextButton(
          onPressed: () => Navigator.pop(context),
          child: Text('OK'),
        )
      ],
    ),
  );
}
}