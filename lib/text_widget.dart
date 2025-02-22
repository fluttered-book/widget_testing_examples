import 'package:flutter/material.dart';

class TextExampleWidget extends StatefulWidget {
  const TextExampleWidget({super.key});

  @override
  State<TextExampleWidget> createState() => _TextExampleWidgetState();
}

class _TextExampleWidgetState extends State<TextExampleWidget> {
  final controller = TextEditingController();
  String _name = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          if (_name.isNotEmpty) Text("Hello $_name"),
          TextField(
            controller: controller,
            decoration: InputDecoration(
              border: UnderlineInputBorder(),
              hintText: "Enter a name",
            ),
            onChanged: (value) {
              setState(() {
                _name = value;
              });
            },
          ),
        ],
      ),
    );
  }
}
