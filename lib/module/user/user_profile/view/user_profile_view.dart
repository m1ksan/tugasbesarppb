
import 'package:flutter/material.dart';
import 'package:mac/core.dart';
import '../controller/user_profile_controller.dart';

class UserProfileView extends StatefulWidget {
  const UserProfileView({Key? key}) : super(key: key);

  Widget build(context, UserProfileController controller) {
  controller.view = this;
    return Scaffold(
      appBar: AppBar(
        title: const Text("UserProfile"),
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
  State<UserProfileView> createState() => UserProfileController();
}
    