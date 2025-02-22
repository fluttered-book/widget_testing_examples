import 'package:flutter/material.dart';

class ScrollWidget extends StatelessWidget {
  static final List<String> items = List.generate(1000, (i) => 'No $i');

  const ScrollWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(
              items[index],
              // Add a key to the Text widget for each item. This makes
              // it possible to look for a particular item in the list
              // and verify that the text is correct
              key: Key('key_for_item_$index'),
            ),
          );
        },
      ),
    );
  }
}
