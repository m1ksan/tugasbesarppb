import 'dart:async';

import 'package:flutter/material.dart';
// import 'package:get/get.dart';
import 'package:mac/core.dart';
import '../view/splash_app_view.dart';

class SplashAppController extends State<SplashAppView> {
  static late SplashAppController instance;
  late SplashAppView view;

  @override
  void initState() {
    instance = this;
    super.initState();
    Timer(
        const Duration(seconds: 3),
        () => Get.offAll(
              const LoginView(),
              // transition: Transition.fadeIn, // Animasi memudar
              // duration: const Duration(milliseconds: 500))
            ));
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);
}

// Navigator.pushAndRemoveUntil(
//           context,
//           MaterialPageRoute(builder: (context) => LoginView()),
//           (route) => false, 
//         );