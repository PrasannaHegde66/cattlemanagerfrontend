import 'package:flutter/material.dart';

class events extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _events();
  }
}

class _events extends State<events> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text(
          "CATTLE MANAGER",
          style: TextStyle(color: Colors.yellow),
        ),
      ),
    );
  }
}
