import 'dart:typed_data';

import 'package:examumar/datas/classmodels.dart';
import 'package:examumar/datas/datahelper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var iconx = Icons.favorite_border_outlined;
  List<String> name = [
    "Kani Maki",
    "Fresh Salmon",
    " Tikka Maki",
    "Smoked Salmon"
  ];
  List<String> subname = [
    "Salmon and cream",
    "Cooked tuna",
    "Salmon  Cucumber",
    "Salmon fillet avacado"
  ];
  List<String> price = [
    "\$8.60",
    "\$12.30",
    "\$9.00",
    "\$4.35",
  ];
  DataBaseHelper db = DataBaseHelper();
  List<String> photo = [
    "https://images.squarespace-cdn.com/content/v1/5ea22707d502cb41586e628f/1588015636386-1MF4FPVU6RUYVPVGCA0Y/handroll.png",
    "https://citysushiwok.com/wp-content/uploads/2018/11/411-1024x1005.png",
    "https://www.planetsushi.cz/upload/products/54_productsBig.png",
    "https://vkusno-deshevo.ru/assets/files/roly/Sloghnie/KFC.png",
  ];

  void _writeDatabase() async {
    for (var item in photo) {
      var image = await http.get(Uri.parse(item));

      Uint8List bytes = image.bodyBytes;
      db.savePicture(Pictures(picture: bytes));
      print("insert");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0.0,
          leading: Icon(Icons.more_vert, color: Colors.black),
          actions: [Icon(Icons.search, color: Colors.black)],
        ),
        backgroundColor: Colors.black,
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.vertical(bottom: Radius.circular(50))),
          child: Padding(
            padding: const EdgeInsets.all(14.0),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Fresh Healthy",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 24,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Delicious Shushi",
                    style: TextStyle(
                      color: Colors.black87,
                      fontSize: 24,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Chip(
                            avatar: CircleAvatar(
                              backgroundColor: Colors.red,
                              radius: 4,
                            ),
                            label: Text("Rolls"),
                            backgroundColor: Colors.white,
                            elevation: 5),
                        Text("Soups"),
                        Text("Nigiri"),
                        IconButton(
                            onPressed: () {}, icon: Icon(Icons.graphic_eq))
                      ],
                    ),
                  ),
                  GridView.builder(
                          physics: NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemCount: 4,
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                            childAspectRatio: 0.8,
                            crossAxisCount: 2,
                            mainAxisSpacing: 5.0,
                            crossAxisSpacing: 5.0,
                          ),
                          itemBuilder: (BuildContext context, int index) =>
                              Container(
                            decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                  colors: [Colors.white, Colors.grey.shade100],
                                ),
                                borderRadius: BorderRadius.vertical(
                                    top: Radius.circular(20),
                                    bottom: Radius.circular(30))),
                            child: Stack(
                              children: [
                                Image.network(
                                  photo[index],
                                  fit: BoxFit.cover,
                                ),
                                Positioned(
                                  bottom: 60,
                                  left: 15,
                                  child: Text(
                                    name[index],
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Positioned(
                                  bottom: 40,
                                  left: 15,
                                  child: Text(
                                    subname[index],
                                    style:
                                        TextStyle(color: Colors.grey.shade600),
                                  ),
                                ),
                                Positioned(
                                  bottom: 20,
                                  left: 15,
                                  child: Text(price[index],
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600)),
                                ),
                                Positioned(
                                    bottom: 5,
                                    right: 10,
                                    child: IconButton(
                                        onPressed: () {
                                          setState(() {
                                            if (iconx ==
                                                Icons
                                                    .favorite_border_outlined) {
                                              iconx = Icons.favorite;
                                            } else {
                                              iconx = Icons
                                                  .favorite_border_outlined;
                                            }
                                          });
                                        },
                                        icon: Icon(
                                          iconx,
                                          color: Colors.red,
                                        )))
                              ],
                            ),
                          ),
                        )
                ],
              ),
            ),
          ),
        ));
  }
}
