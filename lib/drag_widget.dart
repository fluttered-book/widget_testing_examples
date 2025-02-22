import 'package:flutter/material.dart';

class DragWidget extends StatefulWidget {
  const DragWidget({super.key});

  @override
  State<DragWidget> createState() => _DragWidgetState();
}

class _DragWidgetState extends State<DragWidget> {
  final todos = <String>[
    "Buy groceries",
    "Clean room",
    "Drink beer",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Drag example")),
      body: ListView.builder(
        itemCount: todos.length,
        itemBuilder: (context, index) => Dismissible(
          key: Key('$index'),
          onDismissed: (direction) => todos.removeAt(index),
          background: Container(color: Colors.red),
          child: ListTile(title: Text(todos[index])),
        ),
      ),
    );
  }
}
