import 'package:flutter/material.dart';
import './add_cattle.dart';
import './searchpage.dart';
import './events.dart';
import './reports.dart';

class all extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _all();
  }
}

class _all extends State<all> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text(
          "CATTLE MANAGER",
          style: TextStyle(
            color: Colors.yellow,
          ),
        ),
      ),
      body: Container(
        color: Colors.cyan,
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(top: 30),
              child: Row(
                children: [
                  Container(
                      height: 200,
                      width: 200,
                      padding: EdgeInsets.only(left: 20, top: 20, right: 10),
                      child: RaisedButton(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                        ),
                        elevation: 20.0,
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => add_cattle()));
                        },
                        color: Colors.white,
                        child: Text("ADD CATTLE"),
                      )),
                  Container(
                      height: 200,
                      width: 200,
                      padding: EdgeInsets.only(top: 20, left: 20, right: 10),
                      child: RaisedButton(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                        ),
                        elevation: 20.0,
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => searchpage()));
                        },
                        color: Colors.white,
                        child: Text("SHOW CATTLE"),
                      )),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 30),
              child: Row(
                children: [
                  Container(
                      height: 200,
                      width: 200,
                      padding: EdgeInsets.only(top: 20, left: 20, right: 10),
                      child: RaisedButton(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                        ),
                        elevation: 20.0,
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => events()));
                        },
                        color: Colors.white,
                        child: Text("EVENTS"),
                      )),
                  Container(
                    height: 200,
                    width: 200,
                    padding: EdgeInsets.only(top: 20, left: 20, right: 10),
                    child: RaisedButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                      ),
                      elevation: 20.0,
                      onPressed: () {
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) => reports()));
                      },
                      color: Colors.white,
                      child: Text("REPORTS"),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
