import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:mac/screens/login/login_screen.dart';
import 'package:mac/screens/menu/caldzikir/caldzikir.dart';
import 'package:mac/screens/menu/qiblahcompass/qiblah.dart';

import '../../auth/auth_service.dart';
import '../menu/todos/todohome.dart';

class homescreen extends StatelessWidget {
  final AuthService _authService = AuthService();

  homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    if (!_authService.isUserLoggedIn) {
      // Jika belum, arahkan ke halaman login
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => LoginScreen()),
      );
    }
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text("Dashboard"),
      //   actions: const [],
      // ),
      backgroundColor: Colors.green,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(25.0),
            child: Column(
              children: [
                Image.asset(
                  "assets/logo/logoapp.png",
                  // width: 120.0,
                  // height: 120.0,
                  // fit: BoxFit.fill,
                ),
                SizedBox(
                  child: Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.green[800],
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => qiblah()),
                            );
                          },
                          child: Column(
                            children: [
                              Container(
                                width: 100.0,
                                height: 100.0,
                                child: Image.asset(
                                  "assets/home/qiblah.png",
                                  fit: BoxFit.contain,
                                ),
                              ),
                              Text(
                                "Arah Qiblah",
                                style: TextStyle(
                                  fontSize: 20.0,
                                ),
                              ),
                            ],
                          ),
                        ),
                        width: MediaQuery.of(context).size.width / 2.5,
                      ),
                      const SizedBox(
                        width: 20.0,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.green[800],
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => caldzikir()),
                            );
                          },
                          child: Column(
                            children: [
                              Container(
                                width: 100.0,
                                height: 100.0,
                                child: Image.asset(
                                  "assets/home/tasbih.png",
                                  fit: BoxFit.fill,
                                ),
                              ),
                              Text(
                                "Dzikir",
                                style: TextStyle(
                                  fontSize: 20.0,
                                ),
                              ),
                            ],
                          ),
                        ),
                        width: MediaQuery.of(context).size.width / 2.5,
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                SizedBox(
                  // height: 200.0,
                  child: Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.green[800],
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: InkWell(
                          onTap: () {
                            // Navigator.push(
                            //   context,
                            //   MaterialPageRoute(builder: (context) => qiblah()),
                            // );
                          },
                          child: Column(
                            children: [
                              Container(
                                width: 100.0,
                                height: 100.0,
                                child: Image.asset(
                                  "assets/home/quran.png",
                                  fit: BoxFit.contain,
                                ),
                              ),
                              Text(
                                "Alqur'an",
                                style: TextStyle(
                                  fontSize: 20.0,
                                ),
                              ),
                            ],
                          ),
                        ),
                        width: MediaQuery.of(context).size.width / 2.5,
                      ),
                      const SizedBox(
                        width: 20.0,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.green[800],
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => todohome()),
                            );
                          },
                          child: Column(
                            children: [
                              Container(
                                width: 100.0,
                                height: 100.0,
                                child: Image.asset(
                                  "assets/home/todo.png",
                                  fit: BoxFit.fill,
                                ),
                              ),
                              Text(
                                "Todo-List",
                                style: TextStyle(
                                  fontSize: 20.0,
                                ),
                              ),
                            ],
                          ),
                        ),
                        width: MediaQuery.of(context).size.width / 2.5,
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                SizedBox(
                  // height: 200.0,
                  child: Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.green[800],
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: InkWell(
                          onTap: () {},
                          child: Column(
                            children: [
                              Container(
                                width: 100.0,
                                height: 100.0,
                                child: Image.asset(
                                  "assets/home/keuangan.png",
                                  fit: BoxFit.contain,
                                ),
                              ),
                              Text(
                                "keuangan",
                                style: TextStyle(
                                  fontSize: 20.0,
                                ),
                              ),
                            ],
                          ),
                        ),
                        width: MediaQuery.of(context).size.width / 2.5,
                      ),
                      const SizedBox(
                        width: 20.0,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.green[800],
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: InkWell(
                          onTap: () {
                            _showLogoutConfirmationDialog(context);
                          },
                          child: Column(
                            children: [
                              Container(
                                width: 100.0,
                                height: 100.0,
                                child: const Icon(
                                  Icons.logout_sharp,
                                  size: 60.0,
                                  color: Colors.red,
                                ),
                              ),
                              Text(
                                "Keluar",
                                style: TextStyle(
                                  fontSize: 20.0,
                                ),
                              ),
                            ],
                          ),
                        ),
                        width: MediaQuery.of(context).size.width / 2.5,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Future<void> _showLogoutConfirmationDialog(BuildContext context) async {
  return showDialog<void>(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text('Konfirmasi Keluar'),
        content: const Text('Apakah Anda yakin ingin keluar?'),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.of(context).pop(); // Close the dialog
            },
            child: const Text('Batal'),
          ),
          TextButton(
            onPressed: () async {
              await FirebaseAuth.instance.signOut();

              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                    builder: (context) =>
                        LoginScreen()), // Navigate to LoginScreen after signing out
              );
            },
            child: const Text('Keluar'),
          ),
        ],
      );
    },
  );
}
