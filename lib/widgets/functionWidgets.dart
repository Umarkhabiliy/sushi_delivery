import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BuildImageCard extends StatefulWidget {
  int? index;
  BuildImageCard({required this.index});
  @override
  _BuildImageCardState createState() => _BuildImageCardState();
}

class _BuildImageCardState extends State<BuildImageCard> {
  @override
  Widget build(BuildContext context) {
    return buildImageCard(index: widget.index);
  }

  Widget buildImageCard({index}) => Card(
        //margin: EdgeInsets.zero,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        child: Container(
          margin: EdgeInsets.all(8),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.network(
              "https://source.unsplash.com/random?sig=$index",
              fit: BoxFit.cover,
            ),
          ),
        ),
      );
}

class ButtonsWidget extends StatefulWidget {
  VoidCallback? onClicked;
  String? text;
  Color? color;
  ButtonsWidget({this.text, this.onClicked, this.color});
  @override
  _ButtonsWidgetState createState() => _ButtonsWidgetState();
}

class _ButtonsWidgetState extends State<ButtonsWidget> {
  @override
  Widget build(BuildContext context) {
    return buildButton(
        text: widget.text, onClicked: widget.onClicked, color: widget.color);
  }

  Widget buildButton({required text, required onClicked, required color}) {
    return CupertinoButton(
        padding: EdgeInsets.symmetric(horizontal: 10),
        color: color,
        child: Text(text),
        onPressed: onClicked);
  }
}

class IntroPage extends StatefulWidget {
  String? image;
  IntroPage({
    this.image,
  });

  @override
  _IntroPageState createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(children: [
          Image.asset(
            widget.image!,
            fit: BoxFit.cover,
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
          ),
        ]),
      ),
    );
  }
}

class BuilCard extends StatefulWidget {
  BuilCard({Key? key, required this.text, this.index}) : super(key: key);
  String? text;
  int? index;
  @override
  _BuilCardState createState() => _BuilCardState();
}

class _BuilCardState extends State<BuilCard> {
  @override
  Widget build(BuildContext context) {
    return builCard(index: widget.index, text: widget.text);
  }

  Widget builCard({int? index, text}) => Card(
        elevation: 2,
        child: ListTile(
          title: Text(text),
          leading: CircleAvatar(
            child: Text("$index"),
          ),
        ),
      );
}
