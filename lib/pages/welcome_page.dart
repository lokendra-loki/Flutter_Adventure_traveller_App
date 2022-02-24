import 'package:flutter/material.dart';
// import 'package:flutter/rendering.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
//images ko list banako
//assets bata images directly use nagarera aaba list bata images use garxau hami
  List images = [
    "camping1.png",
    "camping2.png",
    "camping3.png",
    "camping4.png",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //body vitrs slider rakhnu paryo by using pageview builder
      //any kind of builder in flutter takes two parameter context and index (_ ,index)
      body: PageView.builder(
          //pageview builder le chai slide garne kaam garyo
          //lets specify the slide direction default ma chai left to right hunxa
          scrollDirection: Axis.vertical,
          //lets use three images for our slider
          itemCount: images.length,
          itemBuilder: (_, index) {
            //Here we want to return a function
            //so pagebuilder will return a function that return a widget or widget
            return Container(
              //this container should hold everything that is in slideer like images text icon button etc
              //maximum width of the screen
              width: double.maxFinite,
              height: double.maxFinite,
              // color: Colors.deepPurple,
              decoration: BoxDecoration(
                color: Colors.white24,
                // color: color(#c8c8ed),
                image: DecorationImage(
                    image: AssetImage(
                      "img/" + images[index],
                    ),
                    fit: BoxFit.contain,
                    alignment: Alignment.bottomCenter),
              ),
            );
          }),
    );
  }
}
