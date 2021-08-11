import 'package:examumar/uipage/pages.dart';
import 'package:examumar/uipage/smsverify.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class VerfiyPage extends StatefulWidget {
  const VerfiyPage({Key? key}) : super(key: key);

  @override
  _VerfiyPageState createState() => _VerfiyPageState();
}

class _VerfiyPageState extends State<VerfiyPage> {
  var a = Firebase.initializeApp();
  var _formKey = GlobalKey<FormState>();
  String? username;
  String? phone;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.black,
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Pages()));
          },
          child: Icon(Icons.next_plan),
        ),
        body: Form(
          key: _formKey,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          child: Column(
            children: [
              SizedBox(height: 40),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Phone Number",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700),
                ),
              ),
              Flexible(
                child: Text(
                  "Please enter the OTP phone number on your registered Passport ID",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(14.0),
                child: TextFormField(
                  onSaved: (text) {
                    phone = text;
                  },
                  initialValue: "+998",
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.black, width: 20))),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(14.0),
                child: TextFormField(
                  onSaved: (text) {
                    username = text;
                  },
                  decoration: InputDecoration(
                      hintText: "Username",
                      border: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.black, width: 20))),
                ),
              ),
              ElevatedButton(
                onPressed: () async {
                  if (_formKey.currentState!.validate()) {
                    _formKey.currentState!.save();
                    await Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => VerifySms(phone)));
                  }
                },
                child: Text(
                  "Send message",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w600),
                ),
                style: ElevatedButton.styleFrom(
                    primary: Colors.black, shape: StadiumBorder()),
              ),
              ElevatedButton(
                onPressed: () {},
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Resend sms",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w600),
                  ),
                ),
                style: ElevatedButton.styleFrom(
                    primary: Colors.black, shape: StadiumBorder()),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
