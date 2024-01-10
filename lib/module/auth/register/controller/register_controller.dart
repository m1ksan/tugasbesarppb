import 'package:flutter/material.dart';
import 'package:mac/core.dart';
import 'package:mac/shared/util/snackbar/snackbar.dart';

class RegisterController extends State<RegisterView> {
  static late RegisterController instance;
  late RegisterView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();

  register() async {
    if (passwordController.text != confirmPasswordController.text) {
      snackError('Password tidak sesuai sama.');
      return;
    }

    final message = await AuthService().register(
      email: emailController.text,
      password: passwordController.text,
    );

    if (message == 'Registration Success') {
      Get.back();
    } else {
      snackError(message ?? 'Terjadi kesalahan');
    }
  }
}
