import 'package:flutter/material.dart';
import 'package:mac/core.dart';
import '../controller/splash_app_controller.dart';

class SplashAppView extends StatefulWidget {
  const SplashAppView({Key? key}) : super(key: key);

  Widget build(context, SplashAppController controller) {
    controller.view = this;
    return Scaffold(
      // appBar: AppBar(
      //   // title: const Text("SplashApp"),
      //   actions: const [],
      //   ),
      body: SingleChildScrollView(
        child: Container(
          // padding: const EdgeInsets.all(10.0),
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: const BoxDecoration(
              color: Colors.black,
              image: DecorationImage(
                  image: AssetImage("assets/splash/splash.jpg"),
                  fit: BoxFit.cover,
                  opacity: 0.4)),
          child: Center(
            child: SizedBox(
              width: MediaQuery.of(context).size.width / 2.5,
              child: Image.asset(
                "assets/logo/logoapp.png",
                width: 120.0,
                // height: 120.0,
                fit: BoxFit.fill,
              ),
            ),
          ),
        ),
      ),
    );
  }

  @override
  State<SplashAppView> createState() => SplashAppController();
}
