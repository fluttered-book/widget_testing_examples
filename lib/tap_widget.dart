import 'package:flutter/material.dart';

class TapWidget extends StatefulWidget {
  const TapWidget({super.key});

  @override
  State<TapWidget> createState() => _TapWidgetState();
}

class _TapWidgetState extends State<TapWidget> {
  bool ok = false;

  final tracks = [
    "I'm Not Okay (I Promise) - MCR",
    "Are You Really Okay? - Sleep Token",
    "I Think I'm OKAY - mgk"
  ]..shuffle();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Tap example")),
      body: Center(
        child: ok ? Text('Button was tapped') : Text(tracks[0]),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            ok = true;
          });
        },
        child: Text("OK"),
      ),
    );
  }
}
