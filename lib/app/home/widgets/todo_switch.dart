import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:todo_list/notifiers/todo_type_notifier.dart';

class TodoSwitch extends ConsumerWidget {
  const TodoSwitch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final todoTypeNotifier = ref.watch(todoTypeProvider.notifier);
    final todoType = ref.watch(todoTypeProvider);
    return Switch(
      value: todoType == TodoType.completed,
      onChanged: (val) => val ? todoTypeNotifier.setCompleted() : todoTypeNotifier.setNone(),
    );
  }
}
