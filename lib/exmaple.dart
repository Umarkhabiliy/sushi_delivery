// import 'package:examumar/uipage/pages.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:firebase_core/firebase_core.dart';
// import 'package:flutter/material.dart';


// FirebaseAuth _authUser = FirebaseAuth.instance;

// class SmsPage extends StatefulWidget {
//   const SmsPage({Key? key}) : super(key: key);

//   @override
//   _SmsPageState createState() => _SmsPageState();
// }

// class _SmsPageState extends State<SmsPage> {
//   var send = Firebase.initializeApp();
//   var _formKey = GlobalKey<FormState>();
//   String? phone;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       resizeToAvoidBottomInset: false,
//       appBar: AppBar(
//         elevation: 0,
//         backgroundColor: Colors.transparent,
//         title: Text(
//           "Login Page With SMS",
//           style: TextStyle(
//             color: Colors.black,
//           ),
//         ),
//       ),
//       body: Center(
//         child: Form(
//           key: _formKey,
//           autovalidateMode: AutovalidateMode.onUserInteraction,
//           child: Column(
//             children: [
//               // Email
//               Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: TextFormField(
//                   keyboardType: TextInputType.phone,
//                   decoration: InputDecoration(border: OutlineInputBorder()),
//                   onSaved: (e) {
//                     print("Telefon Uzunligi: ${e!.length}");
//                     phone = e;
//                   },
//                   initialValue: "+998",
//                   maxLength: 13,
//                   validator: (text) {
//                     if (text!.isEmpty) {
//                       return "Bo'sh Qolishi Mumkin Emas !";
//                     }
//                   },
//                 ),
//               ),
//               ElevatedButton(
//                 style: ElevatedButton.styleFrom(primary: Colors.blue),
//                 child: Text("Sms Jo'nat !"),
//                 onPressed: () async {
//                   if (_formKey.currentState!.validate()) {
//                     _formKey.currentState!.save();
//                     await Navigator.push(
//                         context,
//                         MaterialPageRoute(
//                             builder: (context) => VerifySmsCode(phone)));
//                   }
//                 },
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }



// class VerifySmsCode extends StatefulWidget {
//   String? phone;
//   VerifySmsCode(this.phone, {Key? key}) : super(key: key);

//   @override
//   _VerifySmsCodeState createState() => _VerifySmsCodeState();
// }

// class _VerifySmsCodeState extends State<VerifySmsCode> {
//   TextEditingController smsCode = TextEditingController();
//   GlobalKey<FormState> _formKey = GlobalKey<FormState>();
//  var send = Firebase.initializeApp();
//   @override
//   void initState() {
   
//     super.initState();
//     _authUser.verifyPhoneNumber(
//         phoneNumber: widget.phone!,
//         verificationCompleted: (PhoneAuthCredential credential) {},
//         verificationFailed: (FirebaseAuthException credential) {},
//         codeSent: (String verificationId, int? resendToken) async {},
//         codeAutoRetrievalTimeout: (String text) {});
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Sms Kiriting !"),
//       ),
//       body: Center(
//         child: Form(
//           key: _formKey,
//           autovalidateMode: AutovalidateMode.onUserInteraction,
//           child: Column(
//             children: [
//               TextFormField(
//                 controller: smsCode,
//                 validator: (text) {
//                   if (text!.isEmpty) {
//                     return "Bo'sh Bolmasligi Kerak !";
//                   }
//                 },
//               ),
//               ElevatedButton(
//                 onPressed: _phoneVerify,
//                 child: Text("Sms Verify"),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }

//   _phoneVerify() async {
//     if (_formKey.currentState!.validate()) {
//       _formKey.currentState!.save();
//       await _authUser.verifyPhoneNumber(
//           phoneNumber: widget.phone!,
//           verificationCompleted: (PhoneAuthCredential credential) {},
//           verificationFailed: (FirebaseAuthException credential) {
//             ScaffoldMessenger.of(context).showSnackBar(
//               SnackBar(
//                 duration: Duration(seconds: 3),
//                 content: Text("Smsni Tekshirib Qaytadan Urinib Ko'ring !"),
//               ),
//             );
//           },
//           codeSent: (String verificationId, int? resendToken) async {
//             print("Sms Jonatildi !");
//             PhoneAuthCredential phoneAuthCredential =
//                 PhoneAuthProvider.credential(
//                     verificationId: verificationId, smsCode: smsCode.text);
//             await _authUser.signInWithCredential(phoneAuthCredential);
//             await Navigator.pushReplacement(
//                 context, MaterialPageRoute(builder: (context) => Pages()));
//           },
//           codeAutoRetrievalTimeout: (String text) {
//             print("TEXT: $text");
//           });
//     }
//   }

//   phoneverification() async {
//     if (_formKey.currentState!.validate()) {
//       _formKey.currentState!.save();
//     }
//   }
// }

/* /**showDialog(
 * 
                        context: context,
                        builder: (context) => AlertDialog(
                              title: Text("SMS Code"),
                              content: TextFormField(
                                keyboardType: TextInputType.number,
                                decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                        borderSide: BorderSide.none)),
                              ),
                              actions: [
                                CupertinoButton(
                                    child: Text("Ok"),
                                    onPressed: () {
                                      Navigator.pushReplacement(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) => Pages()));
                                    })
                              ],
                            )); */
                         */