import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:widget_testing/drag_widget.dart';

void main() {
  testWidgets('Remove a todo', (tester) async {
    // Inflate the widget tree
    await tester.pumpWidget(const MaterialApp(home: DragWidget()));

    const todoText = "Clean room";

    // Swipe the item to dismiss it.
    await tester.drag(
      find.widgetWithText(Dismissible, todoText),
      const Offset(500, 0),
    );

    // Build the widget until the dismiss animation ends.
    await tester.pumpAndSettle();

    // Ensure that the item is no longer on screen.
    expect(find.text(todoText), findsNothing);
  });
}
