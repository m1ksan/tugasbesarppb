import 'package:flutter/material.dart';
import 'package:mac/core.dart';
import '../view/quran_view.dart';

class QuranController extends State<QuranView>
    with SingleTickerProviderStateMixin {
  static late QuranController instance;
  late QuranView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  Widget build(BuildContext context) => widget.build(context, this);
}
