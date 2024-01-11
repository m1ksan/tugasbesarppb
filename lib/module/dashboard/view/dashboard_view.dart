import 'package:flutter/material.dart';
import 'package:mac/core.dart';

class DashboardView extends StatefulWidget {
  const DashboardView({Key? key}) : super(key: key);

  Widget build(context, DashboardController controller) {
    controller.view = this;

    Future<void> showLogoutConfirmationDialog(BuildContext context) async {
      return showDialog<void>(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text('Konfirmasi Keluar'),
            content: const Text('Apakah Anda yakin ingin keluar?'),
            actions: [
              TextButton(
                onPressed: () {
                  Get.back();
                },
                child: const Text('Batal'),
              ),
              TextButton(
                onPressed: () => controller.logout(),
                child: const Text('Keluar'),
              ),
            ],
          );
        },
      );
    }

    return Scaffold(
      backgroundColor: Colors.green,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(25.0),
            child: Column(
              children: [
                Image.asset(
                  "assets/logo/logoapp.png",
                ),
                SizedBox(
                  child: Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.green[800],
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        width: MediaQuery.of(context).size.width / 2.5,
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const QiblahSplashView()),
                            );
                          },
                          child: Column(
                            children: [
                              SizedBox(
                                width: 100.0,
                                height: 100.0,
                                child: Image.asset(
                                  "assets/home/qiblah.png",
                                  fit: BoxFit.contain,
                                ),
                              ),
                              const Text(
                                "Arah Qiblah",
                                style: TextStyle(
                                  fontSize: 20.0,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 20.0,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.green[800],
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        width: MediaQuery.of(context).size.width / 2.5,
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const CalculatorDzikirView()),
                            );
                          },
                          child: Column(
                            children: [
                              SizedBox(
                                width: 100.0,
                                height: 100.0,
                                child: Image.asset(
                                  "assets/home/tasbih.png",
                                  fit: BoxFit.fill,
                                ),
                              ),
                              const Text(
                                "Dzikir",
                                style: TextStyle(
                                  fontSize: 20.0,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                SizedBox(
                  child: Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.green[800],
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        width: MediaQuery.of(context).size.width / 2.5,
                        child: InkWell(
                          onTap: () {},
                          child: Column(
                            children: [
                              SizedBox(
                                width: 100.0,
                                height: 100.0,
                                child: Image.asset(
                                  "assets/home/quran.png",
                                  fit: BoxFit.contain,
                                ),
                              ),
                              const Text(
                                "Alqur'an",
                                style: TextStyle(
                                  fontSize: 20.0,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 20.0,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.green[800],
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        width: MediaQuery.of(context).size.width / 2.5,
                        child: InkWell(
                          onTap: () {
                            Get.to(const TodoListView());
                          },
                          child: Column(
                            children: [
                              SizedBox(
                                width: 100.0,
                                height: 100.0,
                                child: Image.asset(
                                  "assets/home/todo.png",
                                  fit: BoxFit.fill,
                                ),
                              ),
                              const Text(
                                "Todo-List",
                                style: TextStyle(
                                  fontSize: 20.0,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                SizedBox(
                  child: Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.green[800],
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        width: MediaQuery.of(context).size.width / 2.5,
                        child: InkWell(
                          onTap: () {},
                          child: Column(
                            children: [
                              SizedBox(
                                width: 100.0,
                                height: 100.0,
                                child: Image.asset(
                                  "assets/home/keuangan.png",
                                  fit: BoxFit.contain,
                                ),
                              ),
                              const Text(
                                "keuangan",
                                style: TextStyle(
                                  fontSize: 20.0,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 20.0,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.green[800],
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        width: MediaQuery.of(context).size.width / 2.5,
                        child: InkWell(
                          onTap: () {
                            showLogoutConfirmationDialog(context);
                          },
                          child: const Column(
                            children: [
                              SizedBox(
                                width: 100.0,
                                height: 100.0,
                                child: Icon(
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

  @override
  State<DashboardView> createState() => DashboardController();
}
