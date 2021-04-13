import 'package:flutter/material.dart';

class show_cattle extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _show_cattle();
  }
}

class _show_cattle extends State<show_cattle> {
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
