import 'package:examumar/uipage/bottomPages/phoneverfiy.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:tcard/tcard.dart';

class IntroductionOnBoardingSkip extends StatefulWidget {
  @override
  _IntroductionOnBoardingSkipState createState() =>
      _IntroductionOnBoardingSkipState();
}

class _IntroductionOnBoardingSkipState
    extends State<IntroductionOnBoardingSkip> {
  final introKey = GlobalKey<IntroductionScreenState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: IntroductionScreen(
          globalBackgroundColor: Color.fromRGBO(255, 255, 250, 1),
          globalFooter: Align(
              alignment: Alignment.bottomRight,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: FloatingActionButton(
                  backgroundColor: Colors.black,
                  onPressed: () {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => VerfiyPage()));
                  },
                  child: Icon(Icons.arrow_forward),
                ),
              )),
          key: introKey,
          pages: [
            PageViewModel(
              title: "The world of sushi",
              body:
                  "Health and delicious, it has become a favorite of may all around the world",
              decoration: PageDecoration(
                  imageFlex: 2,
                  bodyTextStyle:
                      TextStyle(fontSize: 16, color: Colors.grey.shade600),
                  titleTextStyle:
                      TextStyle(fontSize: 26, fontWeight: FontWeight.w800)),
              image: TCard(
                size: Size(350, 280),
                cards: [
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
              ),
            ),
            PageViewModel(
              title: "Delivery Sushi Center",
              body:
                  "Sushi is a traditional Japanese dish of prepared vinegared rice, usually with some sugar and salt",
              decoration: PageDecoration(
                  imageFlex: 2,
                  bodyTextStyle:
                      TextStyle(fontSize: 16, color: Colors.grey.shade600),
                  titleTextStyle:
                      TextStyle(fontSize: 26, fontWeight: FontWeight.w800)),
              image: TCard(
                size: Size(350, 280),
                cards: [
                  Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/images/on2.jpeg"),
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
              ),
            ),
            PageViewModel(
              title: "Makizushi",
              body:
                  "Cone sushi is a variant of inarizushi originating in Hawaii that may include green beans",
              decoration: PageDecoration(
                  imageFlex: 2,
                  bodyTextStyle:
                      TextStyle(fontSize: 16, color: Colors.grey.shade600),
                  titleTextStyle:
                      TextStyle(fontSize: 26, fontWeight: FontWeight.w800)),
              image: TCard(
                size: Size(350, 280),
                cards: [
                  Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/images/on3.jpg"),
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
              ),
            ),
          ],
          showNextButton: false,
          showDoneButton: false,
          dotsDecorator: DotsDecorator(
            size: const Size(10.0, 5),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(2)),
            activeSize: const Size(20.0, 5.0),
            activeColor: Colors.black,
            color: Colors.black26,
            spacing: const EdgeInsets.symmetric(horizontal: 3.0),
            activeShape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(3.0)),
          )),
    ));
  }

  buildPageViewModel({title, body, image, titleWidget, bodyWidget, footer}) {
    return PageViewModel(
        title: title,
        body: body,
        image: Image.asset(image),
        titleWidget: titleWidget,
        bodyWidget: bodyWidget,
        footer: footer,
        decoration: PageDecoration());
  }
}
