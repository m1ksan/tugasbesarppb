import 'package:flutter/material.dart';
import 'package:mac/screens/login/home_screen.dart';
// import 'package:flutter_svg/flutter_svg.dart';
import 'package:mac/screens/menu/caldzikir/caldzikir.dart';
// import 'package:tp9/screens/uiapp.dart';
import '../../auth/auth_service.dart';
// import '../auth/auth_service.dart';
import 'register_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text('Login'),
      //   backgroundColor: Colors.green,
      //   centerTitle: true,
      // ),
      backgroundColor: Colors.green[200],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: Image.asset(
                "assets/logo/logo.png",
                // width: 120.0,
                height: 120.0,
                fit: BoxFit.cover,
              ),
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
                controller: _emailController,
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
                controller: _passwordController,
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
              onPressed: () async {
                final message = await AuthService().login(
                  email: _emailController.text,
                  password: _passwordController.text,
                );

                if (message == 'Login Success') {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) =>
                          homescreen(), // Ganti dengan nama halaman registrasi Anda
                    ),
                  );
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(message ?? 'An error occurred'),
                    ),
                  );
                }
              },
              child: const Text('Login'),
            ),
            const SizedBox(
              height: 20.0,
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) =>
                        const RegisterScreen(), // Ganti dengan nama halaman registrasi Anda
                  ),
                );
              },
              child: const Text('Register'),
            ),
          ],
        ),
      ),
    );
  }
}
