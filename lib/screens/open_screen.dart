import 'package:flutter/material.dart';
import './login_page.dart';
import './sign_in.dart';

class openscreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
        child: Container(
            padding: EdgeInsets.only(top: 30.0),
            alignment: Alignment.topCenter,
            color: Colors.cyan,
            child: Column(
              children: <Widget>[
                Container(
                  child: Text(
                    'Cattle Manager',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30.0,
                    ),
                  ),
                ),
                Spacer(),
                Container(
                  padding: EdgeInsets.only(bottom: 150.0),
                  child: Text(
                    'Track your cattle',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30.0,
                    ),
                  ),
                ),
                Spacer(),
                Container(
                    margin: EdgeInsets.only(bottom: 80.0),
                    child: Column(children: <Widget>[
                      Container(child: sign_up_button1()),
                      Container(child: sign_up_button2())
                    ]))
              ],
            )));
  }
}

class sign_up_button1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      width: 300,
      height: 75,
      padding: EdgeInsets.only(top: 20),
      child: RaisedButton(
        elevation: 10.0,
        onPressed: () {
          _navigateToNextScreen(context);
        },
        color: Colors.white,
        child: Text("SIGN UP"),
      ),
    );
  }

  void _navigateToNextScreen(BuildContext context) {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => signuppage()));
  }
}

class sign_up_button2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      width: 300,
      height: 75,
      padding: EdgeInsets.only(top: 20),
      child: RaisedButton(
        elevation: 10.0,
        onPressed: () {
          _navigateToNextScreen(context);
        },
        color: Colors.white,
        child: Text("LOGIN"),
      ),
    );
  }

  void _navigateToNextScreen(BuildContext context) {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => loginpage()));
  }
}
