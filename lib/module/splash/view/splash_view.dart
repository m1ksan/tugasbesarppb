import 'package:flutter/material.dart';
import 'package:mac/core.dart';
import '../controller/splash_controller.dart';

class SplashView extends StatefulWidget {
  const SplashView({Key? key}) : super(key: key);

  Widget build(context, SplashController controller) {
    controller.view = this;
    return const Scaffold(
      backgroundColor: Colors.green,
      body: Column(
        children: [
          Padding(
            padding:
                EdgeInsets.only(top: 200, bottom: 100, left: 50, right: 50),
            child: Center(
              child: Image(
                image: AssetImage('assets/qiblah/qibla.png'),
                color: Colors.blueGrey,
              ),
            ),
          ),
          Text(
            'Selamat Datang di Kompas Qiblat',
            style: TextStyle(
              fontSize: 20,
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.bold,
            ),
          )
        ],
      ),
    );
  }

  @override
  State<SplashView> createState() => SplashController();
}
