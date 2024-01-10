// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';

import 'splash_screen.dart';

class qiblah extends StatefulWidget {
  const qiblah({Key? key}) : super(key: key);

  @override
  State<qiblah> createState() => _qiblahState();
}

class _qiblahState extends State<qiblah> {
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
  Widget build(BuildContext context) {
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
            if (hasPermission) {
              return const SplashScreen();
            } else {
              return Scaffold(backgroundColor: Colors.blueGrey.shade800);
            }
          },
          future: getPermission(),
        ),
      ),
    );
  }
}
