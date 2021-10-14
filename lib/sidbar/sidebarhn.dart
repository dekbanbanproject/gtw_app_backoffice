import 'dart:async';

import 'package:flutter/material.dart';
import 'package:rxdart/rxdart.dart';


class SidebarHN extends StatefulWidget {
  const SidebarHN({Key? key}) : super(key: key);

  @override
  _SidebarHNState createState() => _SidebarHNState();
}

class _SidebarHNState extends State<SidebarHN>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late StreamController<bool> isSidebarOpenedStreamController;
  late Stream<bool> isSidebarOpenedStream;
  late StreamSink<bool> isSidebarOpenedSink;
  final _animationDuration = const Duration(milliseconds: 500);

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _animationController =
        AnimationController(vsync: this, duration: _animationDuration);
    isSidebarOpenedStreamController = PublishSubject<bool>();
    isSidebarOpenedStream = isSidebarOpenedStreamController.stream;
    isSidebarOpenedSink = isSidebarOpenedStreamController.sink;
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _animationController.dispose();
    isSidebarOpenedStreamController.close();
    isSidebarOpenedSink.close();
    super.dispose();
  }

  void onIconPressed() {
    final animationStatus = _animationController.status;
    final iaAnimationCompleted = animationStatus == AnimationStatus.completed;

    if (iaAnimationCompleted) {
      isSidebarOpenedSink.add(false);
      _animationController.reverse();
    } else {
      isSidebarOpenedSink.add(true);
      _animationController.forward();
    }
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return StreamBuilder<bool>(
      initialData: false,
      stream: isSidebarOpenedStream,
      builder: (context, isSideBarOpenedAsync) {
        return AnimatedPositioned(
          duration: _animationDuration,
          top: 0,
          bottom: 0,
          left: isSideBarOpenedAsync.data! ? 0 : -screenWidth,
          right: isSideBarOpenedAsync.data! ? 0 : screenWidth - 45,
          child: Row(
            children: [
              Expanded(
                child: Container(
                  color: Color(0xffff3b00),
                ),
              ),
              Align(
                alignment: Alignment(0, -0.9),
                child: Container(
                  width: 35,
                  height: 110,
                  color: Color(0xffff3b00),
                  alignment: Alignment.centerLeft,
                  child: AnimatedIcon(
                    progress: _animationController.view,
                    icon: AnimatedIcons.menu_close,
                    color: Color(0xFFFCFDFD),
                    size: 25,
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
