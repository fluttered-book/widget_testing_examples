import 'package:flutter/material.dart';

import 'drag_widget.dart';
import 'scroll_widget.dart';
import 'tap_widget.dart';
import 'text_widget.dart';

void main() {
  runApp(MyApp());
}

final routes = {
  "drag": (_) => DragWidget(),
  "scroll": (_) => ScrollWidget(),
  "tap": (_) => TapWidget(),
  "text": (_) => TextExampleWidget(),
};

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "",
      routes: {"": (_) => SelectionWidget(), ...routes},
    );
  }
}

class SelectionWidget extends StatelessWidget {
  const SelectionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: [
            for (final route in routes.keys)
              OutlinedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed(route);
                },
                child: Text(route.toLowerCase()),
              )
          ],
        ),
      ),
    );
  }
}
