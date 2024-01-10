
import 'package:flutter/material.dart';
import 'package:mac/core.dart';
import '../view/surah_detail_view.dart';

class SurahDetailController extends State<SurahDetailView> {
    static late SurahDetailController instance;
    late SurahDetailView view;

    @override
    void initState() {
        instance = this;
        super.initState();
    }

    @override
    void dispose() => super.dispose();

    @override
    Widget build(BuildContext context) => widget.build(context, this);
}
        
    