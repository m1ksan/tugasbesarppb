import 'package:flutter/material.dart';
import 'package:mac/core.dart';
import '../view/qiblah_view.dart';

class QiblahController extends State<QiblahView>
    with SingleTickerProviderStateMixin {
  static late QiblahController instance;
  late QiblahView view;
  Animation<double>? animation;
  AnimationController? animationController;
  double begin = 0.0;

  @override
  void initState() {
    instance = this;
    super.initState();
    animationController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 500));
    animation = Tween(begin: 0.0, end: 0.0).animate(animationController!);
  }

  @override
  Widget build(BuildContext context) => widget.build(context, this);
}
