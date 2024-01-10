import 'package:flutter/material.dart';
import 'package:mac/core.dart';

class QiblahSplashView extends StatefulWidget {
  const QiblahSplashView({Key? key}) : super(key: key);

  Widget build(context, QiblahSplashController controller) {
    controller.view = this;
    return Scaffold(
      // appBar: AppBar(
      //   // title: const Text("Dashboard"),
      //   actions: const [],
      //   backgroundColor: Colors.green,
      //   leading: IconButton(
      //     icon: Icon(Icons.arrow_back),
      //     onPressed: () {
      //       Navigator.pop(context);
      //     },
      //   ),
      // ),
      body: SafeArea(
        child: FutureBuilder(
          builder: (context, snapshot) {
            if (controller.hasPermission) {
              return const SplashView();
            } else {
              return Scaffold(backgroundColor: Colors.blueGrey.shade800);
            }
          },
          future: controller.getPermission(),
        ),
      ),
    );
  }

  @override
  State<QiblahSplashView> createState() => QiblahSplashController();
}
