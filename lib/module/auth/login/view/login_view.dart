import 'package:flutter/material.dart';
import 'package:mac/core.dart';

class LoginView extends StatefulWidget {
  const LoginView({Key? key}) : super(key: key);

  Widget build(context, LoginController controller) {
    controller.view = this;
    return Scaffold(
      backgroundColor: Colors.green[200],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/logo/logo.png",
              // width: 120.0,
              height: 120.0,
              fit: BoxFit.cover,
            ),
            Container(
                // width: 400,
                // child: Image.asset(
                //   "assets/images/grab.svg",
                //   // width: 120.0,
                //   // height: 120.0,
                //   fit: BoxFit.fill,
                // ),
                ),
            Container(
              width: MediaQuery.of(context).size.width / 1.5,
              // padding: const EdgeInsets.all(12),
              margin: const EdgeInsets.only(top: 20),
              child: TextFormField(
                // initialValue: 'admin@gmail.com',
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
                // onChanged: (value) {},
                controller: controller.emailController,
              ),
            ),
            // SizedBox(
            //   width: MediaQuery.of(context).size.width / 2,
            //   child: TextField(
            //     decoration: const InputDecoration(hintText: 'Email'),
            //   ),
            // ),
            const SizedBox(
              height: 10.0,
            ),
            Container(
              width: MediaQuery.of(context).size.width / 1.5,
              // padding: const EdgeInsets.all(12),
              margin: const EdgeInsets.only(),
              child: TextFormField(
                // initialValue: '123456',
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
                // onChanged: (value) {},
                controller: controller.passwordController,
              ),
            ),
            // SizedBox(
            //   width: MediaQuery.of(context).size.width / 2,
            //   child: TextField(
            //     obscureText: true,
            //     decoration: const InputDecoration(
            //       hintText: 'Password',
            //     ),
            //   ),
            // ),
            const SizedBox(
              height: 60.0,
            ),
            ElevatedButton(
              onPressed: () => controller.login(),
              child: const Text('Login'),
            ),
            const SizedBox(
              height: 20.0,
            ),
            TextButton(
              onPressed: () {
                Get.to(const RegisterView());
              },
              child: const Text('Register'),
            ),
          ],
        ),
      ),
    );
  }

  @override
  State<LoginView> createState() => LoginController();
}
