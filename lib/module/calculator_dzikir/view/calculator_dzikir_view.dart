import 'package:flutter/material.dart';
import 'package:mac/core.dart';
import '../controller/calculator_dzikir_controller.dart';

class CalculatorDzikirView extends StatefulWidget {
  const CalculatorDzikirView({Key? key}) : super(key: key);

  Widget build(context, CalculatorDzikirController controller) {
    controller.view = this;
    if (controller.prefs == null) return Container();
    return Scaffold(
      appBar: AppBar(
        title: const Text("Calculator Dzikir"),
        centerTitle: true,
        // shadowColor: Colors.white,
        backgroundColor: Colors.green,
        // surfaceTintColor: Colors.amber,
        actions: const [],
      ),
      backgroundColor: Colors.green,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                Card(
                  child: Column(
                    children: [
                      SizedBox(
                        width: 150,
                        child: Image.asset(
                          "assets/caldzikir/sub.png",
                        ),
                      ),
                      SizedBox(
                        height: 32.0,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              flex: 2,
                              child: Container(
                                child: Center(
                                  child: Text(
                                    controller.tasbih.toString(),
                                    style: const TextStyle(
                                        fontSize: 30, color: Colors.black),
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                child: Center(
                                  child: SizedBox(
                                    width: 28.0,
                                    height: 28.0,
                                    child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        padding: const EdgeInsets.all(0.0),
                                        backgroundColor: Colors.blue,
                                      ),
                                      onPressed: () =>
                                          controller.updateTasbih(),
                                      child: const Icon(
                                        Icons.add,
                                        size: 16.0,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      ListTile(
                        leading: IconButton(
                          onPressed: controller.resetTasbih,
                          icon: const Icon(
                            Icons.restart_alt_rounded,
                            color: Colors.red,
                            size: 30,
                          ),
                        ),
                        subtitle: const Text(
                          'reset perhitungan tasbih',
                          style: TextStyle(color: Colors.red),
                        ),
                      ),
                    ],
                  ),
                ),
                //alhamdulillah
                const SizedBox(
                  height: 20.0,
                ),
                Card(
                  child: Column(
                    children: [
                      SizedBox(
                        width: 150,
                        child: Image.asset(
                          "assets/caldzikir/alham.png",
                        ),
                      ),
                      SizedBox(
                        height: 32.0,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              flex: 2,
                              child: Container(
                                child: Center(
                                  child: Text(
                                    controller.tahmid.toString(),
                                    style: const TextStyle(
                                        fontSize: 30, color: Colors.black),
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                child: Center(
                                  child: SizedBox(
                                    width: 28.0,
                                    height: 28.0,
                                    child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        padding: const EdgeInsets.all(0.0),
                                        backgroundColor: Colors.blue,
                                      ),
                                      onPressed: controller.updateTahmid,
                                      child: const Icon(
                                        Icons.add,
                                        size: 16.0,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      ListTile(
                        leading: IconButton(
                          onPressed: controller.resetTahmid,
                          icon: const Icon(
                            Icons.restart_alt_rounded,
                            color: Colors.red,
                            size: 30,
                          ),
                        ),
                        subtitle: const Text(
                          'reset perhitungan tahmid',
                          style: TextStyle(color: Colors.red),
                        ),
                      ),
                    ],
                  ),
                ),
                //
                const SizedBox(
                  height: 20.0,
                ),
                //takbir
                Card(
                  child: Column(
                    children: [
                      SizedBox(
                        width: 150,
                        child: Image.asset(
                          "assets/caldzikir/akbar.png",
                        ),
                      ),
                      SizedBox(
                        height: 32.0,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              flex: 2,
                              child: Container(
                                child: Center(
                                  child: Text(
                                    controller.takbir.toString(),
                                    style: const TextStyle(
                                      fontSize: 30,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                child: Center(
                                  child: SizedBox(
                                    width: 28.0,
                                    height: 28.0,
                                    child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        padding: const EdgeInsets.all(0.0),
                                        backgroundColor: Colors.blue,
                                      ),
                                      onPressed: controller.updateTakbir,
                                      child: const Icon(
                                        Icons.add,
                                        size: 16.0,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      ListTile(
                        leading: IconButton(
                          onPressed: controller.resetTakbir,
                          icon: const Icon(
                            Icons.restart_alt_rounded,
                            color: Colors.red,
                            size: 30,
                          ),
                        ),
                        subtitle: const Text(
                          'reset perhitungan takbir',
                          style: TextStyle(color: Colors.red),
                        ),
                      ),
                    ],
                  ),
                ),
                //
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  State<CalculatorDzikirView> createState() => CalculatorDzikirController();
}
