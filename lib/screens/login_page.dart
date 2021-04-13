import 'package:flutter/material.dart';
import './all_page.dart';

class loginpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
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
                  "LOGIN TO YOUR Account",
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
              sign_in_button()
            ],
          )),
        ));
  }
}

class sign_in_button extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      width: 200,
      height: 60,
      padding: EdgeInsets.only(top: 20),
      child: RaisedButton(
        elevation: 10.0,
        onPressed: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => all()));
        },
        color: Colors.white,
        child: Text("LOGIN"),
      ),
    );
  }
}
