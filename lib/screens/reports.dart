import 'package:flutter/material.dart';

class reports extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _reports();
  }
}

class _reports extends State<reports> {
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
