import 'package:flutter/material.dart';

Future<void> messageDialog(BuildContext context, String message) async {
  showDialog(
    context: context,
    builder: (context) => SimpleDialog(
      title: Text(message),
      children: <Widget>[
        Row(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FlatButton(
                onPressed: () => Navigator.pop(context),
                child: Text(
                  'Ok',
                  style: TextStyle(color: Colors.red),
                )),
          ],
        )
      ],
    ),
  );
}
