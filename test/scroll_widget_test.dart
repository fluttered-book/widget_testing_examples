import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:widget_testing/scroll_widget.dart';

void main() {
  testWidgets('Scrolling reveals additional tiles', (tester) async {
    // Inflate the widget tree
    await tester.pumpWidget(const MaterialApp(home: ScrollWidget()));

    final listFinder = find.byType(Scrollable);
    final itemFinder = find.text("No 50");

    // Scroll until the item to be found appears.
    await tester.scrollUntilVisible(itemFinder, 200.0, scrollable: listFinder);

    // Verify that the item contains the correct text.
    expect(itemFinder, findsOneWidget);
  });

  // Finding widgets by text can be fragile, so it is a good idea to give each
  // item a key.
  testWidgets('Scrolling reveals additional tiles (by key)', (tester) async {
    // Inflate the widget tree
    await tester.pumpWidget(const MaterialApp(home: ScrollWidget()));

    final listFinder = find.byType(Scrollable);
    final itemFinder = find.byKey(const ValueKey('key_for_item_50'));

    // Scroll until the item to be found appears.
    await tester.scrollUntilVisible(itemFinder, 200.0, scrollable: listFinder);

    // Verify that the item contains the correct text.
    expect(itemFinder, findsOneWidget);
  });
}
