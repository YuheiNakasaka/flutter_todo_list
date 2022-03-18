import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:todo_list/app/home/widgets/add_todo_form.dart';
import 'package:todo_list/app/home/widgets/todo_list.dart';
import 'package:todo_list/app/home/widgets/todo_switch.dart';

class HomePage extends ConsumerWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Todo Demo'),
        actions: const [TodoSwitch()],
      ),
      body: const TodoList(),
      floatingActionButton: const AddTodoForm(),
    );
  }
}
