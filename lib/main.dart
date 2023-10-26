import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:todo_basic/models/todo.dart';
import 'package:todo_basic/models/todo_adapter.dart';
import 'package:todo_basic/screens/home_screen.dart';

import 'providers/todo_provider.dart';

void main() async {
  await Hive.initFlutter();
  Hive.registerAdapter(TodoAdapter());
  final box = await Hive.openBox<Todo>('todos');
  const todo = Todo(id: 'todo-0', description: 'Buy cookies');
  const todo1 = Todo(id: 'todo-1', description: 'Star Riverpod');
  const todo2 = Todo(id: 'todo-2', description: 'Have a walk');
  const todo3 = Todo(id: 'todo-3', description: 'Buy groceries');
  var list = [todo, todo1, todo2, todo3];

  for (final item in list) {
    if (!box.containsKey(item.id)) {
      box.put(item.id, item);
    }
  }

  final container = ProviderContainer();

  container.read(todoListProvider.notifier).init(list);

  //box.addAll(list);
  runApp(ProviderScope(parent: container, child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}
