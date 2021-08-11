import 'package:examumar/uipage/pages.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

FirebaseAuth _authUser = FirebaseAuth.instance;

class VerifySms extends StatefulWidget {
  String? phone;

  VerifySms(this.phone);
  @override
  State<StatefulWidget> createState() {
    return VerifySmsState();
  }
}

class VerifySmsState extends State<VerifySms> {
 
  TextEditingController smsCode = TextEditingController();
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    _authUser.verifyPhoneNumber(
        phoneNumber: widget.phone!,
        verificationCompleted: (PhoneAuthCredential credential) {},
        verificationFailed: (FirebaseAuthException credential) {},
        codeSent: (String verificationId, int? resendToken) async {},
        codeAutoRetrievalTimeout: (String text) {});
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Form(
            key: _formKey,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            child: Column(
            
              children: [
                SizedBox(height: 60),
                Text("Enter sended sms code",style: TextStyle(fontWeight: FontWeight.w800,fontSize: 30),),

                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: TextFormField(
                    controller: smsCode,
                    validator: (text) {
                      if (text!.isEmpty) {
                        return "Bo'sh Bolmasligi Kerak !";
                      }
                    },
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Colors.black),
                  onPressed: _phoneVerify,
                  child: Text("Sms Verify"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  _phoneVerify() async {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();
      await _authUser.verifyPhoneNumber(
          phoneNumber: widget.phone!,
          verificationCompleted: (PhoneAuthCredential credential) {},
          verificationFailed: (FirebaseAuthException credential) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                duration: Duration(seconds: 3),
                content: Text("Smsni Tekshirib Qaytadan Urinib Ko'ring !"),
              ),
            );
          },
          codeSent: (String verificationId, int? resendToken) async {
            print("Sms Jonatildi !");
            PhoneAuthCredential phoneAuthCredential =
                PhoneAuthProvider.credential(
                    verificationId: verificationId, smsCode: smsCode.text);
            await _authUser.signInWithCredential(phoneAuthCredential);
            await Navigator.pushReplacement(
                context, MaterialPageRoute(builder: (context) => Pages()));
          },
          codeAutoRetrievalTimeout: (String text) {
            print("TEXT: $text");
          });
    }
  }

  phoneverification() async {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();
    }
  }
}
