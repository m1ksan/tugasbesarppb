import 'package:flutter/material.dart';
import 'package:mac/core.dart';
import '../controller/register_controller.dart';

class RegisterView extends StatefulWidget {
  const RegisterView({Key? key}) : super(key: key);

  Widget build(context, RegisterController controller) {
    controller.view = this;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Register'),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
      backgroundColor: Colors.green[100],
      body: SafeArea(
        child: SingleChildScrollView(
          controller: ScrollController(),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 150,
                  child: Image.asset(
                    "assets/logo/logo.png",
                    fit: BoxFit.fill,
                  ),
                ),
                const SizedBox(
                  height: 30.0,
                ),
                Container(
                  width: MediaQuery.of(context).size.width / 1.5,
                  margin: const EdgeInsets.only(),
                  child: TextFormField(
                    maxLength: 20,
                    decoration: const InputDecoration(
                      labelText: 'Email',
                      labelStyle: TextStyle(
                        color: Colors.blueGrey,
                      ),
                      suffixIcon: Icon(
                        Icons.email,
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.blueGrey,
                        ),
                      ),
                      helperText: 'Enter your email address',
                    ),
                    controller: controller.emailController,
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width / 1.5,
                  margin: const EdgeInsets.only(),
                  child: TextFormField(
                    maxLines: 1,
                    maxLength: 20,
                    obscureText: true,
                    decoration: const InputDecoration(
                      labelText: 'Password',
                      labelStyle: TextStyle(
                        color: Colors.blueGrey,
                      ),
                      suffixIcon: Icon(
                        Icons.lock,
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.blueGrey,
                        ),
                      ),
                      helperText: 'Enter your password',
                    ),
                    controller: controller.passwordController,
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width / 1.5,
                  margin: const EdgeInsets.only(),
                  child: TextFormField(
                    maxLength: 20,
                    obscureText: true,
                    decoration: const InputDecoration(
                      labelText: 'Confirm Password',
                      labelStyle: TextStyle(
                        color: Colors.blueGrey,
                      ),
                      suffixIcon: Icon(
                        Icons.lock,
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.blueGrey,
                        ),
                      ),
                      helperText: 'Enter your confirm password',
                    ),
                    controller: controller.confirmPasswordController,
                  ),
                ),
                const SizedBox(
                  height: 80.0,
                ),
                ElevatedButton(
                  onPressed: () => controller.register(),
                  child: const Text('Register'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  State<RegisterView> createState() => RegisterController();
}
