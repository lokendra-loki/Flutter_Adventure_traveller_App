import 'package:adventure_travell_app/widgets/app_text.dart';
import 'package:adventure_travell_app/widgets/large_text.dart';
import 'package:flutter/material.dart';

import '../list_of_text.dart';
// import 'package:flutter/rendering.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //body vitrs slider rakhnu paryo by using pageview builder
      //any kind of builder in flutter takes two parameter context and index (_ ,index)
      body: SafeArea(
        child: PageView.builder(
            //pageview builder le chai slide garne kaam garyo
            //lets specify the slide direction default ma chai left to right hunxa
            scrollDirection: Axis.vertical,
            //lets use three images for our slider
            itemCount: images.length,
            itemBuilder: (_, index) {
              //Here we want to return a function
              //so pagebuilder will return a function that return a widget or widget
              return Container(
                child: Container(
                  margin: const EdgeInsets.only(top: 60, left: 40, right: 40),
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          LargeText(text: bigText[index]),
                          const SizedBox(height: 2),
                          AppText(text: smallText[index], size: 30),
                          const SizedBox(height: 20),
                          // ignore: sized_box_for_whitespace
                          Container(
                            width: 250,
                            child: AppText(
                              text: tinyText[index],
                              color: Colors.grey.shade600,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),

                //this container should hold everything that is in slideer like images text icon button etc
                //maximum width of the screen
                width: double.maxFinite,
                height: double.maxFinite,
                decoration: BoxDecoration(
                  color: Colors.white24,
                  image: DecorationImage(
                      image: AssetImage(
                        "img/" + images[index],
                      ),
                      fit: BoxFit.contain,
                      alignment: Alignment.bottomCenter),
                ),
              );
            }),
      ),
    );
  }
}
