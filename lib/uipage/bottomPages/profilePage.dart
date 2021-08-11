import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key,required this.callback}) : super(key: key);
 final callback;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 240,
                child: Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: UserAccountsDrawerHeader(
                        decoration: BoxDecoration(color: Colors.black87),
                        accountName: Text("Umar Khabiliy"),
                        accountEmail: Text("habiliy_umar96@mail.ru"),
                        currentAccountPicture: CircleAvatar(
                          backgroundColor: Colors.white,
                        ),
                      ),
                    ),
                    Positioned(
                      top: 165,
                      right: 20,
                      child: CircleAvatar(
                          radius: 15,
                          backgroundColor: Colors.black,
                          child: IconButton(
                            icon: Icon(
                              Icons.edit,
                              color: Colors.white,
                              size: 20,
                            ),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Settings()));
                            },
                          )),
                    )
                  ],
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius:
                          BorderRadius.vertical(top: Radius.circular(30))),
                  height: 512,
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      children: [
                        SizedBox(
                          width: MediaQuery.of(context).size.width,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Column(
                              children: [
                                Container(
                                  height: 80,
                                  width: 80,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.red,
                                  ),
                                  child: IconButton(
                                    icon: Icon(
                                      Icons.light_mode,
                                      color: Colors.white,
                                      size: 25,
                                    ),
                                    onPressed: () {},
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "Light",
                                    style:
                                        TextStyle(fontWeight: FontWeight.w800),
                                  ),
                                )
                              ],
                            ),
                            Column(
                              children: [
                                Container(
                                  height: 80,
                                  width: 80,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.white,
                                    boxShadow: [
                                      BoxShadow(
                                        offset: Offset(17, 17),
                                        blurRadius: 10.0,
                                        spreadRadius: 10.0,
                                        color: Colors.grey.shade100,
                                      )
                                    ],
                                  ),
                                  child: IconButton(
                                    icon: Icon(
                                      Icons.bookmark,
                                      color: Colors.black,
                                      size: 25,
                                    ),
                                    onPressed: () {},
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "Favorite",
                                    style:
                                        TextStyle(fontWeight: FontWeight.w800),
                                  ),
                                )
                              ],
                            ),
                            Column(
                              children: [
                                Container(
                                  height: 80,
                                  width: 80,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.white,
                                    boxShadow: [
                                      BoxShadow(
                                        offset: Offset(17, 17),
                                        blurRadius: 10.0,
                                        spreadRadius: 10.0,
                                        color: Colors.grey.shade100,
                                      )
                                    ],
                                  ),
                                  child: IconButton(
                                    icon: Icon(
                                      Icons.monetization_on,
                                      color: Colors.black,
                                      size: 25,
                                    ),
                                    onPressed: () {},
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "Cashback",
                                    style:
                                        TextStyle(fontWeight: FontWeight.w800),
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                        Divider(thickness: 2),
                        ListTile(
                            title: Text(
                              "My Home",
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.w600),
                            ),
                            trailing: Icon(
                              Icons.arrow_forward_ios,
                              size: 15,
                            )),
                        ListTile(
                            title: Text(
                              "Messages",
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.w600),
                            ),
                            trailing: Icon(
                              Icons.arrow_forward_ios,
                              size: 15,
                            )),
                        ListTile(
                            title: Text(
                              "Familiy Access",
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.w600),
                            ),
                            trailing: Icon(
                              Icons.arrow_forward_ios,
                              size: 15,
                            )),
                        Divider(),
                        ListTile(
                            title: Text(
                              "Change Password",
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.w600),
                            ),
                            trailing: Icon(
                              Icons.arrow_forward_ios,
                              size: 15,
                            )),
                        ListTile(
                            title: Text(
                              "Support",
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.w600),
                            ),
                            trailing: Icon(
                              Icons.arrow_forward_ios,
                              size: 15,
                            )),
                        ListTile(
                            title: Text(
                              "Sign Out",
                              style: TextStyle(
                                  color: Colors.red,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600),
                            ),
                            trailing: Icon(
                              Icons.arrow_forward_ios,
                              size: 15,
                            )),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}

class Settings extends StatefulWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  _SettingsState createState() => _SettingsState();
}

 class _SettingsState extends State<Settings> {
 File? _image;
  final picker = ImagePicker();

  Future getImage() async {
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);

    setState(() {
      if (pickedFile != null) {
        _image = File(pickedFile.path);
      } else {
        print('No image selected.');
      }
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: 50,
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back_ios,
              size: 20,
            ),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ),
        backgroundColor: Colors.black,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 300,
                child: Stack(
                  children: [
                    Center(
                      child:GestureDetector(
            onTap: () => getImage(),
            child: _image == null
                ? Container(
                    height: 100.0,
                    width: 100.0,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.amber, width: 2.5),
                        color: Colors.white),
                    child: Icon(
                      Icons.add_a_photo_outlined,
                      size: 30.0,
                      color: Colors.red,
                    ),
                  )
                : Container(
                    height: 100.0,
                    width: 100.0,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.amber, width: 2.5),
                      color: Colors.white,
                      image: DecorationImage(
                        image: FileImage(_image!),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
          ),
                    ),
                    Positioned(
                      top: 165,
                      left: 205,
                      child: InkWell(
                        onTap: (){}, //=> pickImage(),
                        child: CircleAvatar(
                          radius: 15,
                          backgroundColor: Colors.black,
                          child: Icon(
                            Icons.photo_camera,
                            color: Colors.white,
                            size: 20,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius:
                          BorderRadius.vertical(top: Radius.circular(30))),
                  height: 700,
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      children: [
                        SizedBox(height: 20),
                        TextFormField(
                          initialValue: "Umar",
                          decoration: InputDecoration(
                              labelText: "Username",
                              labelStyle:
                                  TextStyle(color: Colors.grey.shade600),
                              border: OutlineInputBorder(
                                  borderSide: BorderSide.none)),
                        ),
                        TextFormField(
                          initialValue: "habiliy_umar96@mail.ru",
                          decoration: InputDecoration(
                              hintText: "Email",
                              labelText: "Email Address",
                              labelStyle:
                                  TextStyle(color: Colors.grey.shade600),
                              border: OutlineInputBorder(
                                  borderSide: BorderSide.none)),
                        ),
                        TextFormField(
                          initialValue: "+998998977754",
                          decoration: InputDecoration(
                              labelText: "Phone",
                              labelStyle:
                                  TextStyle(color: Colors.grey.shade600),
                              border: OutlineInputBorder(
                                  borderSide: BorderSide.none)),
                        ),
                        TextFormField(
                          initialValue: "Male",
                          decoration: InputDecoration(
                              labelText: "Gender",
                              labelStyle:
                                  TextStyle(color: Colors.grey.shade600),
                              border: OutlineInputBorder(
                                  borderSide: BorderSide.none)),
                        ),
                        TextFormField(
                          initialValue: "14/10/1996",
                          decoration: InputDecoration(
                              labelText: "Date Of Birth",
                              labelStyle:
                                  TextStyle(color: Colors.grey.shade600),
                              border: OutlineInputBorder(
                                  borderSide: BorderSide.none)),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}

