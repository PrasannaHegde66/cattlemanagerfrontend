import 'dart:ui';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:dropdownfield/dropdownfield.dart';
import './all_page.dart';
import 'package:dropdown_formfield/dropdown_formfield.dart';
import 'package:flutter/services.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class add_cattle extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _add_cattle();
  }
}

class _add_cattle extends State<add_cattle> {
  var _gender = ["Male", "Female"];
  var _genderval;
  var _select_from = ["Born in farm", "Purchased", "Other"];
  String _selected_from;
  String qrcode;
  String _selected_breed;
  var _select_breed = [
    'Amrith Mahal',
    'Baragur',
    "Dangi",
    'Deoni',
    'Gangatiri',
    'Gaolao',
    'Gir',
    "Hallikar",
    'Hariana',
    'Javari',
    'Kankrej',
    'Kangayam',
    'Kasargod',
    'Kenkatha',
    "Kerighar",
    'Lal Kandhari',
    'Malenadu Gidda',
    'Malvi',
    'Nagori',
    'Nimari',
    'Ongole',
    'Ponuvar',
    'Rathi',
    'Sahiwal',
    'Sindhi',
    'Tharparkar',
    'Umblacheri',
    'Vechur',
  ];
  DateTime _date = DateTime.now();
  final formKey = new GlobalKey<FormState>();
  Future<void> scanqrcode() async {
    try {
      final qrcode = await FlutterBarcodeScanner.scanBarcode(
        '#ff6666',
        'Cancel',
        true,
        ScanMode.QR,
      );
      if (!mounted) return;
      setState(() {
        this.qrcode = qrcode;
      });
    } on PlatformException catch (ex) {
      qrcode = "Failed to get platform version";
    }
  }

  Future<Null> _selectDate(BuildContext contex) async {
    DateTime datepicker = await showDatePicker(
      context: context,
      initialDate: _date,
      firstDate: DateTime(2000),
      lastDate: DateTime(2200),
    );
    if (datepicker != null && datepicker != _date) {
      setState(() {
        _date = datepicker;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromRGBO(235, 180, 70, 1.0),
          title: Text(
            "CATTLE MANAGER",
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: Container(
          alignment: Alignment.topCenter,
          color: Colors.white,
          child: Form(
            child: ListView(
              children: [
                Container(
                  padding: EdgeInsets.only(top: 20.0, right: 10.0, left: 10.0),
                  child: TextFormField(
                      onTap: () {
                        setState(() {
                          scanqrcode();
                        });
                      },
                      decoration: InputDecoration(
                          hintText: qrcode,
                          labelText: "Tag Number",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(4.0),
                          ))),
                ),
                Container(
                  padding: EdgeInsets.only(top: 20.0, right: 10.0, left: 10.0),
                  child: TextFormField(
                      decoration: InputDecoration(
                          labelText: "Name",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(4.0),
                          ))),
                ),
                Container(
                    height: 80,
                    padding: EdgeInsets.only(top: 20, right: 10, left: 10),
                    child: Container(
                        padding:
                            EdgeInsets.only(top: 6, right: 10.0, left: 10.0),
                        decoration: BoxDecoration(
                          border: Border.all(
                              color: Color.fromRGBO(235, 180, 70, 1.0)),
                          borderRadius: BorderRadius.all(Radius.circular(5.0)),
                        ),
                        child: DropdownButtonHideUnderline(
                            child: DropdownButton(
                                hint: Text("Select Breed"),
                                dropdownColor: Colors.white,
                                elevation: 5,
                                isExpanded: true,
                                value: _selected_breed,
                                onChanged: (value) {
                                  setState(() {
                                    _selected_breed = value;
                                  });
                                },
                                items: _select_breed.map(
                                  (value) {
                                    return DropdownMenuItem(
                                      value: value,
                                      child: Text(value),
                                    );
                                  },
                                ).toList())))),
                Container(
                    height: 80,
                    padding: EdgeInsets.only(top: 20, right: 10, left: 10),
                    child: Container(
                        padding:
                            EdgeInsets.only(top: 6, right: 10.0, left: 10.0),
                        decoration: BoxDecoration(
                          border: Border.all(
                              color: Color.fromRGBO(235, 180, 70, 1.0)),
                          borderRadius: BorderRadius.all(Radius.circular(5.0)),
                        ),
                        child: DropdownButtonHideUnderline(
                            child: DropdownButton(
                                hint: Text("Select Gender"),
                                dropdownColor: Colors.white,
                                elevation: 5,
                                isExpanded: true,
                                value: _genderval,
                                onChanged: (value) {
                                  setState(() {
                                    _genderval = value;
                                  });
                                },
                                items: _gender.map(
                                  (value) {
                                    return DropdownMenuItem(
                                      value: value,
                                      child: Text(value),
                                    );
                                  },
                                ).toList())))),
                Container(
                  padding: EdgeInsets.only(top: 20.0, right: 10.0, left: 10.0),
                  child: TextFormField(
                      onTap: () {
                        setState(() {
                          _selectDate(context).toString();
                        });
                      },
                      decoration: InputDecoration(
                          labelText: "Date Of Birth",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(4.0),
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color.fromRGBO(235, 180, 70, 1.0))))),
                ),
                Container(
                  padding: EdgeInsets.only(top: 20.0, right: 10.0, left: 10.0),
                  child: TextFormField(
                      readOnly: true,
                      onTap: () {
                        setState(() {
                          _selectDate(context);
                        });
                      },
                      decoration: InputDecoration(
                          labelText: "Date Of Entry",
                          labelStyle: TextStyle(
                              color: Color.fromRGBO(235, 180, 70, 1.0)),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(4.0),
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color.fromRGBO(235, 180, 70, 1.0))))),
                ),
                Container(
                    height: 80,
                    padding: EdgeInsets.only(top: 20, right: 10, left: 10),
                    child: Container(
                        padding:
                            EdgeInsets.only(top: 6, right: 10.0, left: 10.0),
                        decoration: BoxDecoration(
                          border: Border.all(
                              color: Color.fromRGBO(235, 180, 70, 1.0)),
                          borderRadius: BorderRadius.all(Radius.circular(5.0)),
                        ),
                        child: DropdownButtonHideUnderline(
                            child: DropdownButton(
                                hint: Text("Select how cattle was obtained"),
                                dropdownColor: Colors.white,
                                elevation: 5,
                                isExpanded: true,
                                value: _selected_from,
                                onChanged: (value) {
                                  setState(() {
                                    _selected_from = value;
                                  });
                                },
                                items: _select_from.map(
                                  (value) {
                                    return DropdownMenuItem(
                                      value: value,
                                      child: Text(value),
                                    );
                                  },
                                ).toList())))),
                Container(
                  width: 420,
                  height: 150,
                  padding: EdgeInsets.only(top: 20.0, right: 10.0, left: 10.0),
                  child: TextFormField(
                    validator: (String value) {
                      if (value.isEmpty) {
                        return "Enter your Email ID";
                      }
                    },
                    decoration: InputDecoration(
                        labelText: "Write some notes...",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(4.0),
                        )),
                    maxLines: 4,
                  ),
                ),
                addcat()
              ],
            ),
          ),
        ));
  }
}

class addcat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      width: 200,
      height: 60,
      margin: EdgeInsets.only(bottom: 150, left: 10, right: 10, top: 20),
      child: RaisedButton(
        elevation: 20.0,
        onPressed: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => all()));
        },
        shape: RoundedRectangleBorder(
          borderRadius: new BorderRadius.circular(10.0),
        ),
        color: Color.fromRGBO(235, 180, 70, 1.0),
        child: Text("ADD CATTLE"),
      ),
    );
  }
}
