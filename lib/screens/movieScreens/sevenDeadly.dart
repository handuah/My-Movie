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
                      'https://qph.fs.quoracdn.net/main-qimg-d64cdb7b9853f522e5f75d3789c98e7a'),
                  fit: BoxFit.cover,
                  height: screenHeight / 2.4,
                  width: screenWidth,
                ),
                Opacity(
                  opacity: 0.5,
                  child: Container(
                    alignment: Alignment.topLeft,
                    height: screenHeight,
                    width: screenWidth,
                    color: Colors.black,
                  ),
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
                        height: screenHeight * 0.03,
                      ),
                      Center(
                        child: IconButton(
                          onPressed: () {
                            Navigator.pushNamed(context, '/sevenDeadlyPlayer');
                          },
                          icon: FaIcon(
                            FontAwesomeIcons.playCircle,
                            color: Colors.white,
                            size: 50.0,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: screenHeight * 0.05,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Seven Deadly Sins",
                                textAlign: TextAlign.left,
                                style: GoogleFonts.oxygen(
                                  textStyle: TextStyle(
                                    color: HexColor("#ffffff"),
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: screenHeight * 0.01,
                              ),
                              Text(
                                "Anime",
                                textAlign: TextAlign.left,
                                style: GoogleFonts.oxygen(
                                  textStyle: TextStyle(
                                    color: HexColor("#ffffff"),
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: screenHeight * 0.01,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    "2021",
                                    textAlign: TextAlign.left,
                                    style: GoogleFonts.oxygen(
                                      textStyle: TextStyle(
                                        color: HexColor("#ffffff"),
                                        fontSize: 10.0,
                                        fontWeight: FontWeight.normal,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: screenWidth * 0.02,
                                  ),
                                  Text(
                                    "2h 30 min",
                                    textAlign: TextAlign.left,
                                    style: GoogleFonts.oxygen(
                                      textStyle: TextStyle(
                                        color: HexColor("#ffffff"),
                                        fontSize: 10.0,
                                        fontWeight: FontWeight.normal,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: screenWidth * 0.02,
                                  ),
                                  Text(
                                    "Drama",
                                    textAlign: TextAlign.left,
                                    style: GoogleFonts.oxygen(
                                      textStyle: TextStyle(
                                        color: HexColor("#ffffff"),
                                        fontSize: 10.0,
                                        fontWeight: FontWeight.normal,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: screenWidth * 0.02,
                                  ),
                                  Text(
                                    "16+",
                                    textAlign: TextAlign.left,
                                    style: GoogleFonts.oxygen(
                                      textStyle: TextStyle(
                                        color: HexColor("#ffffff"),
                                        fontSize: 10.0,
                                        fontWeight: FontWeight.normal,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: screenWidth * 0.02,
                                  ),
                                  Text(
                                    "3.5 stars",
                                    textAlign: TextAlign.left,
                                    style: GoogleFonts.oxygen(
                                      textStyle: TextStyle(
                                        color: HexColor("#ffffff"),
                                        fontSize: 10.0,
                                        fontWeight: FontWeight.normal,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          IconButton(
                            icon: FaIcon(
                              FontAwesomeIcons.heart,
                              color: Colors.white,
                            ),
                            onPressed: () {},
                          ),
                        ],
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
                color: HexColor('#121421'),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20.0),
                  topRight: Radius.circular(20.0),
                ),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(
                  vertical: screenHeight * 0.02,
                  horizontal: screenWidth * 0.02,
                ),
                child: DefaultTabController(
                  initialIndex: 0,
                  length: 3,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      TabBar(
                        labelColor: HexColor('#FFC933'),
                        unselectedLabelColor: Colors.white,
                        indicatorColor: HexColor('#FFC933'),
                        labelPadding: EdgeInsets.symmetric(
                          vertical: screenHeight * 0.01,
                        ),
                        tabs: [
                          Text(
                            "Information",
                            textAlign: TextAlign.left,
                            style: GoogleFonts.oxygen(
                              textStyle: TextStyle(
                                // color: HexColor("#ffffff"),
                                fontSize: 14.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Text(
                            "Cast",
                            textAlign: TextAlign.left,
                            style: GoogleFonts.oxygen(
                              textStyle: TextStyle(
                                // color: HexColor("#ffffff"),
                                fontSize: 14.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Text(
                            "Reviews",
                            textAlign: TextAlign.left,
                            style: GoogleFonts.oxygen(
                              textStyle: TextStyle(
                                // color: HexColor("#ffffff"),
                                fontSize: 14.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: screenHeight * 0.03,
                      ),
                      Container(
                        height: screenHeight * 0.4,
                        width: screenWidth,
                        // color: Colors.red,
                        child: TabBarView(
                          children: [
                            Text(
                              "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
                              textAlign: TextAlign.left,
                              softWrap: true,
                              style: GoogleFonts.oxygen(
                                textStyle: TextStyle(
                                  color: HexColor("#ffffff"),
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Text(
                              "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
                              textAlign: TextAlign.left,
                              softWrap: true,
                              style: GoogleFonts.oxygen(
                                textStyle: TextStyle(
                                  color: HexColor("#ffffff"),
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Text(
                              "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
                              textAlign: TextAlign.left,
                              softWrap: true,
                              style: GoogleFonts.oxygen(
                                textStyle: TextStyle(
                                  color: HexColor("#ffffff"),
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: screenHeight * 0.03,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: screenWidth * 0.04,
                        ),
                        child: SizedBox(
                          height: screenHeight * 0.06,
                          child: TextButton(
                            onPressed: () {},
                            child: Text(
                              "Book Your Show",
                              textAlign: TextAlign.left,
                              style: GoogleFonts.oxygen(
                                textStyle: TextStyle(
                                  color: HexColor("#121212"),
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            style: TextButton.styleFrom(
                              backgroundColor: HexColor('#FFC933'),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
