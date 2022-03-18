import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:todo_list/app/home/widgets/todo_switch.dart';

void main() {
  testWidgets('todo_switch worked', (tester) async {
    await tester.pumpWidget(
      const ProviderScope(
        child: MaterialApp(
          home: Scaffold(
            body: TodoSwitch(),
          ),
        ),
      ),
    );

    final switchWidget = tester.widget<Switch>(find.byType(Switch));
    expect(switchWidget.value, false);

    await tester.pump();

    await tester.tap(find.byType(Switch));
    await tester.pump();
    final switchWidget1 = tester.widget<Switch>(find.byType(Switch));
    expect(switchWidget1.value, true);
  });
}
