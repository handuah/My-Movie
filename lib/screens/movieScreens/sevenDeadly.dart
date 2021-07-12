import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:google_fonts/google_fonts.dart';

class SevenDeadlySins extends StatefulWidget {
  // const SevenDeadlySins({ Key? key }) : super(key: key);

  @override
  _SevenDeadlySinsState createState() => _SevenDeadlySinsState();
}

class _SevenDeadlySinsState extends State<SevenDeadlySins> {
  @override
  Widget build(BuildContext context) {
    //setting to fullscreen
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: HexColor('#121212'),
      body: Stack(
        alignment: Alignment.topCenter,
        children: [
          Container(
            alignment: Alignment.topLeft,
            height: screenHeight,
            width: screenWidth,
            decoration: BoxDecoration(
              color: Colors.green,
            ),
            child: Stack(
              alignment: Alignment.topCenter,
              children: [
                Image(
                  image: NetworkImage(
                      'https://lh3.googleusercontent.com/proxy/Ma4IYgliU9RPb2Zwl1haTkbmRnpkuRswhmvS7JTnCnwizWKFJ_ExoK4CiPm9qYAwmglQpaIRt7uKlkbd07H48QZqTuXTwXCAkzZXf4hAmn0na6qp-l1azsNVz7itSbifN6hXfopOs9dmu1AH79zBqMVRlfJdzlQlgER8RFs'),
                  fit: BoxFit.cover,
                  height: screenHeight / 2.6,
                  width: screenWidth,
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: screenHeight * 0.064,
                    left: screenWidth * 0.02,
                    right: screenWidth * 0.02,
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          IconButton(
                            icon: FaIcon(
                              FontAwesomeIcons.chevronLeft,
                              color: Colors.white,
                            ),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                          ),
                          IconButton(
                            icon: FaIcon(
                              FontAwesomeIcons.ellipsisV,
                              color: Colors.white,
                            ),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                          ),
                        ],
                      ),
                      SizedBox(
                        height: screenHeight * 0.04,
                      ),
                      Center(
                        child: IconButton(
                          onPressed: () {},
                          icon: FaIcon(
                            FontAwesomeIcons.play,
                            color: Colors.white,
                            size: 30.0,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: screenHeight / 2.6,
            child: Container(
              alignment: Alignment.topLeft,
              height: screenHeight / 1.4,
              width: screenWidth,
              decoration: BoxDecoration(
                color: Colors.yellow,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20.0),
                  topRight: Radius.circular(20.0),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
