import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class Orders extends StatefulWidget {
  const Orders({Key? key}) : super(key: key);

  @override
  _OrdersPageState createState() => _OrdersPageState();
}

class _OrdersPageState extends State<Orders> {
  List<String> photo = [
    "assets/images/sush.png",
    "assets/images/sushii.png",
    "assets/images/su.png"
  ];
  List<String> name = ["Chirashizushi", "Inarizushi", "Makizushi"];
  List<String> subname = [
    "Salmon and cream cheese",
    "Cooked tuna",
    "Salmon and Cucumber"
  ];
  List<String> price = [
    "\$8.60",
    "\$12.30",
    "\$9.00",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        leading: Icon(Icons.arrow_back_ios, color: Colors.black),
        backgroundColor: Colors.white,
        elevation: 0.0,
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CircleAvatar(
              backgroundColor: Color.fromRGBO(215, 200, 180, 1),
              backgroundImage: NetworkImage(
                  "https://media-exp1.licdn.com/dms/image/C4E03AQE6dtd1KuyViw/profile-displayphoto-shrink_200_200/0/1607049873396?e=1632960000&v=beta&t=qmDZ9pm_cAFYYSHifONmUc0yvr4fo4K3DPX1ed4CvrU"),
            ),
          ),
        ],
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(30))),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Your Order",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 26,
                      fontWeight: FontWeight.w800),
                ),
                ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemExtent: 150,
                  itemCount: 3,
                  itemBuilder: (context, index) => Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Slidable(actionPane: SlidableDrawerActionPane(),
                    actions: [ IconSlideAction(
            caption: "Unread",
            color: Colors.black87,
            icon: CupertinoIcons.rectangle_on_rectangle_angled,
            onTap: () {},
          ),
          IconSlideAction(
            color: Colors.greenAccent.shade700,
            caption: "Pin",
            icon: CupertinoIcons.pin_fill,
          )
        ],
        secondaryActions: [
          IconSlideAction(
            caption: "Muted",
            icon: CupertinoIcons.volume_mute,
            color: Colors.amber.shade700,
          ),
          IconSlideAction(
            caption: "Delete",
            icon: CupertinoIcons.delete,
            color: Colors.red.shade700,
          ),
          IconSlideAction(
            caption: "Archieve",
            icon: CupertinoIcons.archivebox_fill,
          ),],
                      child: Container(
                        decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                offset: Offset(0, 17),
                                blurRadius: 15.0,
                                spreadRadius: -20.0,
                                color: Colors.grey,
                              )
                            ],
                            borderRadius: BorderRadius.circular(20),
                            gradient: LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [Colors.white, Colors.grey.shade100])),
                        child: Stack(
                          children: [
                            Image.asset(
                              photo[index],
                              scale: 0.5,
                              fit: BoxFit.cover,
                            ),
                            Positioned(
                                top: 30,
                                left: 160,
                                child: Text(
                                  name[index],
                                  style: TextStyle(
                                      fontWeight: FontWeight.w800, fontSize: 16),
                                )),
                            Positioned(
                                top: 60,
                                left: 160,
                                child: Text(
                                  subname[index],
                                  style: TextStyle(
                                      color: Colors.grey.shade600, fontSize: 12),
                                )),
                            Positioned(
                                top: 50,
                                right: 15,
                                child: Text(
                                  "2x",
                                  style: TextStyle(color: Colors.grey.shade600),
                                )),
                            Positioned(
                              top: 90,
                              left: 160,
                              child: Text(
                                price[index],
                                style: TextStyle(
                                    fontWeight: FontWeight.w800, fontSize: 16),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Delivery time",
                        style: TextStyle(
                            fontSize: 15,
                            color: Colors.black,
                            fontWeight: FontWeight.w800),
                      ),
                      Text(
                        "45 mins",
                        style: TextStyle(color: Colors.grey[600]),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Promo Code",
                          style: TextStyle(
                              fontSize: 15,
                              color: Colors.black,
                              fontWeight: FontWeight.w800)),
                      Text(
                        "First30",
                        style: TextStyle(color: Colors.grey[600]),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Total",
                          style: TextStyle(
                              fontSize: 15,
                              color: Colors.black,
                              fontWeight: FontWeight.w800)),
                      Text("\$25.50",
                          style: TextStyle(
                              fontSize: 15,
                              color: Colors.black,
                              fontWeight: FontWeight.w800)),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class SlideableWidget extends StatelessWidget {
  final Widget child;

  const SlideableWidget({required this.child, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Slidable(
        actionPane: SlidableDrawerActionPane(),

        child: child,
        actions: [
          IconSlideAction(
            caption: "Unread",
            color: Colors.blue,
            icon: CupertinoIcons.rectangle_on_rectangle_angled,
            onTap: () {},
          ),
          IconSlideAction(
            color: Colors.greenAccent.shade700,
            caption: "Pin",
            icon: CupertinoIcons.pin_fill,
          )
        ],
        secondaryActions: [
          IconSlideAction(
            caption: "Muted",
            icon: CupertinoIcons.volume_mute,
            color: Colors.amber.shade700,
          ),
          IconSlideAction(
            caption: "Delete",
            icon: CupertinoIcons.delete,
            color: Colors.red.shade700,
          ),
          IconSlideAction(
            caption: "Archieve",
            icon: CupertinoIcons.archivebox_fill,
          ),
        ],
      );
}