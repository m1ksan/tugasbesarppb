import 'package:cloud_firestore/cloud_firestore.dart';

import '../model/todo.dart';
// import 'package:flutter_firebase_firestore_tutorial/models/todo.dart';

const String todoCollectionRef = "todos";

class TodoService {
  final _firestore = FirebaseFirestore.instance;

  late final CollectionReference _todosRef;

  TodoService() {
    _todosRef = _firestore.collection(todoCollectionRef).withConverter<Todo>(
        fromFirestore: (snapshots, _) => Todo.fromJson(
              snapshots.data()!,
            ),
        toFirestore: (todo, _) => todo.toJson());
  }

  Stream<QuerySnapshot> getTodos() {
    return _todosRef.snapshots();
  }

  void addTodo(Todo todo) async {
    _todosRef.add(todo);
  }

  void updateTodo(String todoId, Todo todo) {
    _todosRef.doc(todoId).update(todo.toJson());
  }

  void deleteTodo(String todoId) {
    _todosRef.doc(todoId).delete();
  }
}
