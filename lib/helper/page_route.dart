import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class GoTo {
  void slidePageRoute(Widget widget, BuildContext context) {
    Navigator.push(context, CupertinoPageRoute(builder: (context) => widget));
  }

  void fadeTransaction(Widget widget, BuildContext context) {
    Navigator.push(
        context, PageTransition(type: PageTransitionType.fade, child: widget));
  }

  void leftToRightTransaction(Widget widget, BuildContext context) {
    Navigator.push(context,
        PageTransition(type: PageTransitionType.leftToRight, child: widget));
  }

  void rightToLeftTransaction(Widget widget, BuildContext context) {
    Navigator.push(context,
        PageTransition(type: PageTransitionType.rightToLeft, child: widget));
  }

  void upToDownTransaction(Widget widget, BuildContext context) {
    Navigator.push(context,
        PageTransition(type: PageTransitionType.upToDown, child: widget));
  }

  void downToUpTransaction(Widget widget, BuildContext context) {
    Navigator.push(context,
        PageTransition(type: PageTransitionType.downToUp, child: widget));
  }

  void bottomCenterTransaction(Widget widget, BuildContext context) {
    Navigator.push(
        context,
        PageTransition(
            type: PageTransitionType.scale,
            duration: Duration(milliseconds: 500),
            alignment: Alignment.bottomCenter,
            child: widget));
  }

  void rotateTransaction(Widget widget, BuildContext context) {
    Navigator.push(
        context,
        PageTransition(
            type: PageTransitionType.rotate,
            duration: Duration(seconds: 1),
            child: widget));
  }

  void rightToLeftWithFadeTransaction(Widget widget, BuildContext context) {
    Navigator.push(
        context,
        PageTransition(
            type: PageTransitionType.rightToLeftWithFade, child: widget));
  }

  void leftToRightWithFadeTransaction(Widget widget, BuildContext context) {
    Navigator.push(
        context,
        PageTransition(
            type: PageTransitionType.leftToRightWithFade, child: widget));
  }
}
