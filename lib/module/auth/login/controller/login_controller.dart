import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:mac/core.dart';
import 'package:mac/shared/util/snackbar/snackbar.dart';

class LoginController extends State<LoginView> {
  static late LoginController instance;
  late LoginView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  final TextEditingController emailController = TextEditingController(
    text: kDebugMode ? "mac@mail.com" : null,
  );
  final TextEditingController passwordController = TextEditingController(
    text: kDebugMode ? "123456" : null,
  );

  login() async {
    final message = await AuthService().login(
      email: emailController.text,
      password: passwordController.text,
    );

    if (message == 'Login Success') {
      Get.offAll(const DashboardView());
    } else {
      snackError(message ?? 'An error occurred');
    }
  }
}
