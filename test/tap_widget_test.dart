import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:widget_testing_examples/tap_widget.dart';

void main() {
  testWidgets('Tapping "OK" provides feedback', (tester) async {
    // Inflate the widget tree
    await tester.pumpWidget(const MaterialApp(home: TapWidget()));

    // Tap the button.
    await tester.tap(find.widgetWithText(FloatingActionButton, "OK"));

    // Rebuild the widget after the state has changed.
    await tester.pump();

    // Expect to find the item on screen.
    expect(find.text('Button was tapped'), findsOneWidget);
  });
}
