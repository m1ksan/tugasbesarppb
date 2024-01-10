import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:mac/core.dart';

class TodoListView extends StatefulWidget {
  const TodoListView({Key? key}) : super(key: key);

  Widget build(context, TodoListController controller) {
    controller.view = this;
    var todoService = TodoService();
    PreferredSizeWidget appBar() {
      return AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        title: const Text(
          "Todo",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      );
    }

    Widget messagesListView() {
      return SizedBox(
        height: MediaQuery.sizeOf(context).height * 0.80,
        width: MediaQuery.sizeOf(context).width,
        child: StreamBuilder(
          stream: todoService.getTodos(),
          builder: (context, snapshot) {
            List todos = snapshot.data?.docs ?? [];
            if (todos.isEmpty) {
              return const Center(
                child: Text("Add a todo!"),
              );
            }
            return ListView.builder(
              itemCount: todos.length,
              itemBuilder: (context, index) {
                Todo todo = todos[index].data();
                String todoId = todos[index].id;
                return Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 10,
                    horizontal: 10,
                  ),
                  child: ListTile(
                    tileColor: Theme.of(context).colorScheme.primaryContainer,
                    title: Text(todo.task),
                    subtitle: Text(
                      DateFormat("dd-MM-yyyy h:mm a").format(
                        todo.updatedOn.toDate(),
                      ),
                    ),
                    trailing: Checkbox(
                      value: todo.isDone,
                      onChanged: (value) {
                        Todo updatedTodo = todo.copyWith(
                            isDone: !todo.isDone, updatedOn: Timestamp.now());
                        todoService.updateTodo(todoId, updatedTodo);
                      },
                    ),
                    onLongPress: () {
                      todoService.deleteTodo(todoId);
                    },
                  ),
                );
              },
            );
          },
        ),
      );
    }

    Widget buildUI() {
      return SafeArea(
          child: Column(
        children: [
          messagesListView(),
        ],
      ));
    }

    void displayTextInputDialog() async {
      return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: const Text('Add a todo'),
            content: TextField(
              controller: controller.textEditingController,
              decoration: const InputDecoration(hintText: "Todo...."),
            ),
            actions: <Widget>[
              MaterialButton(
                color: Theme.of(context).colorScheme.primary,
                textColor: Colors.white,
                child: const Text('Ok'),
                onPressed: () {
                  Todo todo = Todo(
                      task: controller.textEditingController.text,
                      isDone: false,
                      createdOn: Timestamp.now(),
                      updatedOn: Timestamp.now());
                  todoService.addTodo(todo);
                  Navigator.pop(context);
                  controller.textEditingController.clear();
                },
              ),
            ],
          );
        },
      );
    }

    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: appBar(),
      body: buildUI(),
      floatingActionButton: FloatingActionButton(
        onPressed: displayTextInputDialog,
        backgroundColor: Theme.of(context).colorScheme.primary,
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
    );
  }

  @override
  State<TodoListView> createState() => TodoListController();
}
