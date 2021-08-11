import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tcard/tcard.dart';

class SerachPage extends StatelessWidget {
  const SerachPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.vertical(bottom: Radius.circular(30))),
          child: Column(children: [
            SizedBox(height: 20,),
            Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                      image: AssetImage(
                        "assets/images/searchsushi.jpg",
                      ),
                      fit: BoxFit.cover)),
              width: 350,
              height: 250,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CupertinoTextField(
                      clearButtonMode: OverlayVisibilityMode.always,
                      prefix: Icon(Icons.search,
                          color: Colors.white.withOpacity(0.9)),
                      placeholder: "Search",
                      placeholderStyle:
                          TextStyle(color: Colors.white.withOpacity(0.8)),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white.withOpacity(0.6)),
                    ),
                  ),
                  SizedBox(height: 80.0),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Text(
                        "Hi Umar",
                        style: TextStyle(
                            color: Colors.white.withOpacity(0.8), fontSize: 34),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Text("What do you want eat?",
                          style: TextStyle(
                              color: Colors.white.withOpacity(0.8),
                              fontSize: 22)),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 40,
            ),
            TCard(
              cards: [
                Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/su.png"),
                        fit: BoxFit.cover),
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(0, 17),
                        blurRadius: 23.0,
                        spreadRadius: -2.0,
                        color: Colors.grey,
                      )
                    ],
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/onbording.jpg"),
                        fit: BoxFit.cover),
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(0, 17),
                        blurRadius: 23.0,
                        spreadRadius: -13.0,
                        color: Colors.black54,
                      )
                    ],
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white.withOpacity(1),
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/susshi.png"),
                        fit: BoxFit.cover),
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(0, 17),
                        blurRadius: 23.0,
                        spreadRadius: -13.0,
                        color: Colors.black54,
                      )
                    ],
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white.withOpacity(0.8),
                  ),
                )
              ],
              size: Size(460, 300),
              //controller: _controller,
              onForward: (index, info) {
                print(index);
                print(info.direction);
                if (info.direction == SwipDirection.Right) {
                  print('like');
                } else {
                  print('dislike');
                }
              },
              onBack: (index, info) {
                print(index);
              },
              onEnd: () {
                print('end');
              },
            ),
          ]),
        ),
      ),
    );
  }
}
