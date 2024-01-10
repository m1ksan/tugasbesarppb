import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_qiblah/flutter_qiblah.dart';
import 'package:mac/core.dart';

class QiblahView extends StatefulWidget {
  const QiblahView({Key? key}) : super(key: key);

  Widget build(context, QiblahController controller) {
    controller.view = this;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Muslim Qiblat'),
          centerTitle: true,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) =>
                        const DashboardView()), // Gantilah QiblahPage dengan nama kelas halaman Qiblah Anda
              );
            },
          ),
        ),
        body: StreamBuilder(
          stream: FlutterQiblah.qiblahStream,
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Container(
                alignment: Alignment.center,
                child: const CircularProgressIndicator(
                  color: Colors.grey,
                ),
              );
            }

            final qiblahDirection = snapshot.data;
            controller.animation = Tween(
              begin: controller.begin,
              end: (qiblahDirection!.qiblah * (pi / 180) * -1),
            ).animate(controller.animationController!);
            controller.begin = (qiblahDirection.qiblah * (pi / 180) * -1);
            controller.animationController!.forward(from: 0);

            return Center(
              child: SizedBox(
                child: AnimatedBuilder(
                  animation: controller.animation!,
                  builder: (context, child) => Transform.rotate(
                    angle: controller.animation!.value,
                    child: Image.asset(
                      'assets/qiblah/qibla_image.png',
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  @override
  State<QiblahView> createState() => QiblahController();
}
