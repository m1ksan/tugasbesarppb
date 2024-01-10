import 'package:flutter/material.dart';
import 'package:mac/core.dart';
import '../controller/quran_controller.dart';

class QuranView extends StatefulWidget {
  const QuranView({Key? key}) : super(key: key);

  Widget build(context, QuranController controller) {
    controller.view = this;
    return const Placeholder();
  }

  @override
  State<QuranView> createState() => QuranController();
}
