import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:todo_list/notifiers/todo_type_notifier.dart';

void main() {
  late TodoTypeNotifier notifier;
  group('TodoTypeNotifier Test:', () {
    setUp(() {
      final container = ProviderContainer();
      notifier = container.read(todoTypeProvider.notifier);
    });

    test('setNone', () {
      notifier.setCompleted();
      expect(notifier.debugState, TodoType.completed);
      notifier.setNone();
      expect(notifier.debugState, TodoType.none);
    });

    test('setCompleted', () {
      expect(notifier.debugState, TodoType.none);
      notifier.setCompleted();
      expect(notifier.debugState, TodoType.completed);
    });
  });
}
