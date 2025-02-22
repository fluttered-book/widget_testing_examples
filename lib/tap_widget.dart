import 'package:flutter/material.dart';

class TapWidget extends StatefulWidget {
  const TapWidget({super.key});

  @override
  State<TapWidget> createState() => _TapWidgetState();
}

class _TapWidgetState extends State<TapWidget> {
  bool ok = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: ok
            ? Text('Button was tapped')
            : Text("I'm Not Okay (I Promise) - MCR"),
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
