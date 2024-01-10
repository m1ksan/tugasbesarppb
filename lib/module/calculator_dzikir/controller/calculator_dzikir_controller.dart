import 'package:flutter/material.dart';
import 'package:mac/core.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../view/calculator_dzikir_view.dart';

class CalculatorDzikirController extends State<CalculatorDzikirView> {
  static late CalculatorDzikirController instance;
  late CalculatorDzikirView view;
  SharedPreferences? prefs;
  int tasbih = 0;
  int tahmid = 0;
  int takbir = 0;

  @override
  void initState() {
    instance = this;
    super.initState();
    loadValues();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  loadValues() async {
    prefs = await SharedPreferences.getInstance();
    setState(() {
      tasbih = prefs!.getInt('tasbih') ?? 0;
      tahmid = prefs!.getInt('tahmid') ?? 0;
      takbir = prefs!.getInt('takbir') ?? 0;
    });
  }

  saveValues() async {
    // await prefs!.setInt('tasbih', tasbih);
    // await prefs!.setInt('tahmid', tahmid);
    // await prefs!.setInt('takbir', takbir);
    setState(() {});
  }

  updateTasbih() {
    tasbih = tasbih + 1;
    saveValues();
  }

  updateTakbir() {
    takbir++;
    saveValues();
  }

  updateTahmid() {
    tahmid++;
    saveValues();
  }

  resetTasbih() {
    tasbih = 0;
    saveValues();
  }

  resetTakbir() {
    takbir = 0;
    saveValues();
  }

  resetTahmid() {
    tahmid = 0;
    saveValues();
  }
}
