
import 'package:flutter/material.dart';
import 'package:mac/core.dart';
import '../controller/user_dashboard_controller.dart';

class UserDashboardView extends StatefulWidget {
  const UserDashboardView({Key? key}) : super(key: key);

  Widget build(context, UserDashboardController controller) {
  controller.view = this;
    return Scaffold(
      appBar: AppBar(
        title: const Text("UserDashboard"),
        actions: const [],
        ),
        body: SingleChildScrollView(
        child: Container(
            padding: const EdgeInsets.all(10.0),
            child: const Column(
            children: [],
            ),
        ),
      ),
    );
  }

  @override
  State<UserDashboardView> createState() => UserDashboardController();
}
    