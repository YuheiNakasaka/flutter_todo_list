import 'package:flutter_riverpod/flutter_riverpod.dart';

final todoTypeProvider = StateNotifierProvider<TodoTypeNotifier, TodoType>(
  (ref) => TodoTypeNotifier(),
);

enum TodoType {
  none,
  completed,
}

class TodoTypeNotifier extends StateNotifier<TodoType> {
  TodoTypeNotifier() : super(TodoType.none);

  void setNone() {
    state = TodoType.none;
  }

  void setCompleted() {
    state = TodoType.completed;
  }
}
