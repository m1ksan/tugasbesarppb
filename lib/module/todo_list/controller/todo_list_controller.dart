import 'package:flutter/material.dart';
import 'package:mac/core.dart';
import '../view/todo_list_view.dart';

class TodoListController extends State<TodoListView> {
  static late TodoListController instance;
  late TodoListView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  final TextEditingController textEditingController = TextEditingController();
}
