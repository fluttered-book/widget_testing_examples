import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:widget_testing/text_widget.dart';

void main() {
  testWidgets("Entering a name shows a greeting", (tester) async {
    // Inflate the widget tree
    await tester.pumpWidget(MaterialApp(home: TextExampleWidget()));

    // Enter "Bob" into the TextField
    await tester.enterText(find.byType(TextField), "Bob");

    // Trigger a rebuild
    await tester.pump();

    // Expect to find a greeting for Bob.
    expect(find.text("Hello Bob"), findsOneWidget);
  });
}
