import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class caldzikir extends StatefulWidget {
  const caldzikir({Key? key}) : super(key: key);

  @override
  State<caldzikir> createState() => _caldzikir();
}

class _caldzikir extends State<caldzikir> {
  late SharedPreferences prefs;
  int tasbih = 0;
  int tahmid = 0;
  int takbir = 0;
  @override
  void initState() {
    super.initState();
    _loadValues();
  }

  _loadValues() async {
    prefs = await SharedPreferences.getInstance();
    setState(() {
      tasbih = prefs.getInt('tasbih') ?? 0;
      tahmid = prefs.getInt('tahmid') ?? 0;
      takbir = prefs.getInt('takbir') ?? 0;
    });
  }

  _saveValues() async {
    await prefs.setInt('tasbih', tasbih);
    await prefs.setInt('tahmid', tahmid);
    await prefs.setInt('takbir', takbir);
  }

  Widget build(BuildContext context) {
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
                      Container(
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
                                    tasbih.toString(),
                                    style: TextStyle(
                                        fontSize: 30, color: Colors.black),
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                child: Center(
                                  child: Container(
                                    width: 28.0,
                                    height: 28.0,
                                    child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        padding: const EdgeInsets.all(0.0),
                                        backgroundColor: Colors.blue,
                                      ),
                                      onPressed: () {
                                        setState(() {
                                          tasbih++;
                                          _saveValues();
                                        });
                                      },
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
                          onPressed: () {
                            setState(() {
                              tasbih = 0;
                              _saveValues();
                            });
                            // _saveValues();
                          },
                          icon: const Icon(
                            Icons.restart_alt_rounded,
                            color: Colors.red,
                            size: 30,
                          ),
                        ),
                        subtitle: Text(
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
                      Container(
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
                                    tahmid.toString(),
                                    style: TextStyle(
                                        fontSize: 30, color: Colors.black),
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                child: Center(
                                  child: Container(
                                    width: 28.0,
                                    height: 28.0,
                                    child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        padding: const EdgeInsets.all(0.0),
                                        backgroundColor: Colors.blue,
                                      ),
                                      onPressed: () {
                                        setState(() {
                                          tahmid++;
                                          _saveValues();
                                        });
                                      },
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
                          onPressed: () {
                            setState(() {
                              tahmid = 0;
                              _saveValues();
                            });
                          },
                          icon: const Icon(
                            Icons.restart_alt_rounded,
                            color: Colors.red,
                            size: 30,
                          ),
                        ),
                        subtitle: Text(
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
                      Container(
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
                                    takbir.toString(),
                                    style: TextStyle(
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
                                  child: Container(
                                    width: 28.0,
                                    height: 28.0,
                                    child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        padding: const EdgeInsets.all(0.0),
                                        backgroundColor: Colors.blue,
                                      ),
                                      onPressed: () {
                                        setState(() {
                                          takbir++;
                                          _saveValues();
                                        });
                                      },
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
                          onPressed: () {
                            setState(() {
                              takbir = 0;
                              _saveValues();
                            });
                          },
                          icon: const Icon(
                            Icons.restart_alt_rounded,
                            color: Colors.red,
                            size: 30,
                          ),
                        ),
                        subtitle: Text(
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
}
