import 'package:flutter/material.dart';

class signuppage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _signpage();
  }
}

class _signpage extends State<signuppage> {
  @override
  String email;
  String password;
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orange,
          title: Text("CATTLE MANAGER",
              style: TextStyle(
                color: Colors.yellow,
              )),
        ),
        body: Container(
          color: Colors.cyan,
          child: Form(
              child: Column(
            children: [
              Container(
                padding: EdgeInsets.only(top: 30.0, right: 10.0, left: 10.0),
                child: Text(
                  "CREATE ACCOUNT",
                  textDirection: TextDirection.ltr,
                  style: TextStyle(color: Colors.white, fontSize: 30),
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 20.0, right: 10.0, left: 10.0),
                child: TextFormField(
                    validator: (String value) {
                      if (value.isEmpty) {
                        return "Enter your Email ID";
                      }
                    },
                    decoration: InputDecoration(
                        labelText: "Email ID",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(4.0),
                        ))),
              ),
              Container(
                padding: EdgeInsets.only(top: 10.0, right: 10.0, left: 10.0),
                child: TextFormField(
                  validator: (String value) {
                    if (value.isEmpty) {
                      return "Enter your password";
                    }
                  },
                  decoration: InputDecoration(
                      labelText: "Password",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(4.0))),
                  obscureText: true,
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 10.0, right: 10.0, left: 10.0),
                child: TextFormField(
                  validator: (String value) {
                    if (value.isEmpty) {
                      return "Confirm your password";
                    }
                  },
                  decoration: InputDecoration(
                      labelText: "Confirm Password",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(4.0))),
                  obscureText: true,
                ),
              ),
              sign_up_button()
            ],
          )),
        ));
  }
}

class sign_up_button extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      width: 200,
      height: 60,
      padding: EdgeInsets.only(top: 20),
      child: RaisedButton(
        elevation: 10.0,
        onPressed: () {},
        color: Colors.white,
        child: Text("SIGN UP"),
      ),
    );
  }
}

void savedata(BuildContext context) {}
