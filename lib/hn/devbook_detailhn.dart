import 'package:flutter/material.dart';
import 'package:gtw/models/book_index_model.dart';

class DevbookDetailHn extends StatefulWidget {
  final BookIndexModel bookIndexModels;
  const DevbookDetailHn({Key? key, required this.bookIndexModels})
      : super(key: key);

  @override
  _DevbookDetailHnState createState() => _DevbookDetailHnState();
}

class _DevbookDetailHnState extends State<DevbookDetailHn> {
  BookIndexModel? bookIndexModels;

  @override
  void initState() {
    super.initState();
    bookIndexModels = widget.bookIndexModels;  ///// *******  อันเดียวกันกับข้างบนสุด  ********************////
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(bookIndexModels!.BOOK_NAME),
      ),
    );
  }
}
