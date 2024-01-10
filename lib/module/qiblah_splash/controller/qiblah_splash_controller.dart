import 'package:flutter/material.dart';
import 'package:mac/core.dart';
import 'package:permission_handler/permission_handler.dart';
import '../view/qiblah_splash_view.dart';

class QiblahSplashController extends State<QiblahSplashView> {
  static late QiblahSplashController instance;
  late QiblahSplashView view;
  bool hasPermission = false;

  Future getPermission() async {
    if (await Permission.location.serviceStatus.isEnabled) {
      var status = await Permission.location.status;
      if (status.isGranted) {
        hasPermission = true;
      } else {
        Permission.location.request().then((value) {
          setState(() {
            hasPermission = (value == PermissionStatus.granted);
          });
        });
      }
    }
  }

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);
}
