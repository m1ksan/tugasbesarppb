import 'package:flutter/material.dart';
import 'package:mac/core.dart';
import '../controller/surah_detail_controller.dart';

class SurahDetailView extends StatefulWidget {
  const SurahDetailView({Key? key}) : super(key: key);

  Widget build(context, SurahDetailController controller) {
    controller.view = this;
    return const Placeholder();
  }

  @override
  State<SurahDetailView> createState() => SurahDetailController();
}
