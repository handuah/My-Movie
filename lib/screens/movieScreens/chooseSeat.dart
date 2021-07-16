import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:google_fonts/google_fonts.dart';

class ChooseSeat extends StatefulWidget {
  // const ChooseSeat({ Key? key }) : super(key: key);

  @override
  _ChooseSeatState createState() => _ChooseSeatState();
}

class _ChooseSeatState extends State<ChooseSeat> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: HexColor('#121212'),
      body: Padding(
        padding: EdgeInsets.only(
          left: screenWidth * 0.02,
          right: screenWidth * 0.02,
          top: screenHeight * 0.064,
          bottom: screenHeight * 0.02,
        ),
        child: Column(
          children: [
            Row(
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
                SizedBox(
                  width: screenWidth * 0.2,
                ),
                Text(
                  "Choose Your Seat",
                  textAlign: TextAlign.left,
                  style: GoogleFonts.oxygen(
                    textStyle: TextStyle(
                      color: HexColor("#ffffff"),
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: screenHeight * 0.02,
            ),
            Container(
              height: screenHeight * 0.2,
              width: screenWidth,
              decoration: BoxDecoration(
                color: Colors.green,
              ),
            ),
            SizedBox(
              height: screenHeight * 0.02,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                NoSeat(),
                SizedBox(
                  width: screenWidth * 0.05,
                ),
                AvailableSeat(),
                SizedBox(
                  width: screenWidth * 0.05,
                ),
                AvailableSeat(),
                SizedBox(
                  width: screenWidth * 0.05,
                ),
                AvailableSeat(),
                SizedBox(
                  width: screenWidth * 0.1,
                ),
                AvailableSeat(),
                SizedBox(
                  width: screenWidth * 0.05,
                ),
                AvailableSeat(),
                SizedBox(
                  width: screenWidth * 0.05,
                ),
                AvailableSeat(),
                SizedBox(
                  width: screenWidth * 0.05,
                ),
                NoSeat(),
              ],
            ),
            SizedBox(
              height: screenHeight * 0.01,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                AvailableSeat(),
                SizedBox(
                  width: screenWidth * 0.05,
                ),
                AvailableSeat(),
                SizedBox(
                  width: screenWidth * 0.05,
                ),
                AvailableSeat(),
                SizedBox(
                  width: screenWidth * 0.05,
                ),
                AvailableSeat(),
                SizedBox(
                  width: screenWidth * 0.1,
                ),
                AvailableSeat(),
                SizedBox(
                  width: screenWidth * 0.05,
                ),
                AvailableSeat(),
                SizedBox(
                  width: screenWidth * 0.05,
                ),
                AvailableSeat(),
                SizedBox(
                  width: screenWidth * 0.05,
                ),
                AvailableSeat(),
              ],
            ),
            SizedBox(
              height: screenHeight * 0.01,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                ReservedSeat(),
                SizedBox(
                  width: screenWidth * 0.05,
                ),
                ReservedSeat(),
                SizedBox(
                  width: screenWidth * 0.05,
                ),
                AvailableSeat(),
                SizedBox(
                  width: screenWidth * 0.05,
                ),
                AvailableSeat(),
                SizedBox(
                  width: screenWidth * 0.1,
                ),
                AvailableSeat(),
                SizedBox(
                  width: screenWidth * 0.05,
                ),
                AvailableSeat(),
                SizedBox(
                  width: screenWidth * 0.05,
                ),
                ReservedSeat(),
                SizedBox(
                  width: screenWidth * 0.05,
                ),
                ReservedSeat(),
              ],
            ),
            SizedBox(
              height: screenHeight * 0.01,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                AvailableSeat(),
                SizedBox(
                  width: screenWidth * 0.05,
                ),
                AvailableSeat(),
                SizedBox(
                  width: screenWidth * 0.05,
                ),
                ReservedSeat(),
                SizedBox(
                  width: screenWidth * 0.05,
                ),
                ReservedSeat(),
                SizedBox(
                  width: screenWidth * 0.1,
                ),
                ReservedSeat(),
                SizedBox(
                  width: screenWidth * 0.05,
                ),
                ReservedSeat(),
                SizedBox(
                  width: screenWidth * 0.05,
                ),
                AvailableSeat(),
                SizedBox(
                  width: screenWidth * 0.05,
                ),
                AvailableSeat(),
              ],
            ),
            SizedBox(
              height: screenHeight * 0.01,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                AvailableSeat(),
                SizedBox(
                  width: screenWidth * 0.05,
                ),
                ReservedSeat(),
                SizedBox(
                  width: screenWidth * 0.05,
                ),
                AvailableSeat(),
                SizedBox(
                  width: screenWidth * 0.05,
                ),
                ReservedSeat(),
                SizedBox(
                  width: screenWidth * 0.1,
                ),
                AvailableSeat(),
                SizedBox(
                  width: screenWidth * 0.05,
                ),
                ReservedSeat(),
                SizedBox(
                  width: screenWidth * 0.05,
                ),
                ReservedSeat(),
                SizedBox(
                  width: screenWidth * 0.05,
                ),
                ReservedSeat(),
              ],
            ),
            SizedBox(
              height: screenHeight * 0.01,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                ReservedSeat(),
                SizedBox(
                  width: screenWidth * 0.05,
                ),
                AvailableSeat(),
                SizedBox(
                  width: screenWidth * 0.05,
                ),
                ReservedSeat(),
                SizedBox(
                  width: screenWidth * 0.05,
                ),
                AvailableSeat(),
                SizedBox(
                  width: screenWidth * 0.1,
                ),
                AvailableSeat(),
                SizedBox(
                  width: screenWidth * 0.05,
                ),
                AvailableSeat(),
                SizedBox(
                  width: screenWidth * 0.05,
                ),
                ReservedSeat(),
                SizedBox(
                  width: screenWidth * 0.05,
                ),
                AvailableSeat(),
              ],
            ),
            SizedBox(
              height: screenHeight * 0.01,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                NoSeat(),
                SizedBox(
                  width: screenWidth * 0.05,
                ),
                AvailableSeat(),
                SizedBox(
                  width: screenWidth * 0.05,
                ),
                AvailableSeat(),
                SizedBox(
                  width: screenWidth * 0.05,
                ),
                ReservedSeat(),
                SizedBox(
                  width: screenWidth * 0.1,
                ),
                AvailableSeat(),
                SizedBox(
                  width: screenWidth * 0.05,
                ),
                AvailableSeat(),
                SizedBox(
                  width: screenWidth * 0.05,
                ),
                ReservedSeat(),
                SizedBox(
                  width: screenWidth * 0.05,
                ),
                NoSeat(),
              ],
            ),
            SizedBox(
              height: screenHeight * 0.03,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: screenWidth * 0.06,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  AvailableSeat(),
                  SizedBox(
                    width: screenWidth * 0.02,
                  ),
                  Text(
                    "Available",
                    textAlign: TextAlign.left,
                    style: GoogleFonts.oxygen(
                      textStyle: TextStyle(
                        color: HexColor("#ffffff"),
                        fontSize: 14.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: screenWidth * 0.06,
                  ),
                  FaIcon(
                    FontAwesomeIcons.stop,
                    color: HexColor('#FFC933'),
                  ),
                  SizedBox(
                    width: screenWidth * 0.02,
                  ),
                  Text(
                    "Selected",
                    textAlign: TextAlign.left,
                    style: GoogleFonts.oxygen(
                      textStyle: TextStyle(
                        color: HexColor("#ffffff"),
                        fontSize: 14.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: screenWidth * 0.06,
                  ),
                  ReservedSeat(),
                  SizedBox(
                    width: screenWidth * 0.02,
                  ),
                  Text(
                    "Reserved",
                    textAlign: TextAlign.left,
                    style: GoogleFonts.oxygen(
                      textStyle: TextStyle(
                        color: HexColor("#ffffff"),
                        fontSize: 14.0,
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
                horizontal: screenWidth * 0.02,
              ),
              child: Stack(
                alignment: Alignment.topLeft,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        height: screenHeight * 0.1,
                        width: screenWidth / 2.3,
                        decoration: BoxDecoration(
                          color: HexColor('#ffffff'),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10.0),
                            bottomLeft: Radius.circular(10.0),
                          ),
                          // border: Border(
                          //   right: BorderSide(
                          //     style: BorderStyle.solid,
                          //     color: Colors.black,
                          //   ),
                          // ),
                        ),
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Your Seat",
                                textAlign: TextAlign.left,
                                style: GoogleFonts.oxygen(
                                  textStyle: TextStyle(
                                    color: HexColor("#000000"),
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Text(
                                "B3 & B4",
                                textAlign: TextAlign.left,
                                style: GoogleFonts.oxygen(
                                  textStyle: TextStyle(
                                    color: HexColor("#000000"),
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: screenWidth * 0.02,
                      ),
                      Container(
                        height: screenHeight * 0.1,
                        width: screenWidth / 2.2,
                        decoration: BoxDecoration(
                          color: HexColor('#ffffff'),
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(10.0),
                            bottomRight: Radius.circular(10.0),
                          ),
                          // border: Border(
                          //   right: BorderSide(
                          //     style: BorderStyle.solid,
                          //     color: Colors.black,
                          //   ),
                          // ),
                        ),
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Total Amount",
                                textAlign: TextAlign.left,
                                style: GoogleFonts.oxygen(
                                  textStyle: TextStyle(
                                    color: HexColor("#000000"),
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Text(
                                "GHS 200",
                                textAlign: TextAlign.left,
                                style: GoogleFonts.oxygen(
                                  textStyle: TextStyle(
                                    color: HexColor("#000000"),
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Positioned(
                    top: screenHeight * 0.03,
                    child: Container(
                      height: screenHeight * 0.04,
                      width: screenWidth * 0.04,
                      decoration: BoxDecoration(
                        color: HexColor('#000000'),
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(20.0),
                          bottomRight: Radius.circular(20.0),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: screenHeight * 0.03,
                    right: screenWidth * 0.01,
                    child: Container(
                      height: screenHeight * 0.04,
                      width: screenWidth * 0.04,
                      decoration: BoxDecoration(
                        color: HexColor('#000000'),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20.0),
                          bottomLeft: Radius.circular(20.0),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: screenHeight * 0.02,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: screenWidth * 0.03,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: screenHeight * 0.07,
                    width: screenWidth / 2.4,
                    child: TextButton(
                      onPressed: () {},
                      child: Text(
                        "Cancel",
                        textAlign: TextAlign.left,
                        style: GoogleFonts.oxygen(
                          textStyle: TextStyle(
                            color: HexColor("#ffffff"),
                            fontSize: 14.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      style: TextButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.0),
                          side: BorderSide(
                            color: HexColor('#FFC933'),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: screenHeight * 0.07,
                    width: screenWidth / 2.4,
                    child: TextButton(
                      onPressed: () {},
                      child: Text(
                        "Next",
                        textAlign: TextAlign.left,
                        style: GoogleFonts.oxygen(
                          textStyle: TextStyle(
                            color: HexColor("#121212"),
                            fontSize: 14.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      style: TextButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.0),
                          side: BorderSide(
                            color: HexColor('#FFC933'),
                          ),
                        ),
                        backgroundColor: HexColor('#FFC933'),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// RESERVED SEAT
class ReservedSeat extends StatefulWidget {
  // const ReservedSeat({ Key? key }) : super(key: key);

  @override
  _ReservedSeatState createState() => _ReservedSeatState();
}

class _ReservedSeatState extends State<ReservedSeat> {
  @override
  Widget build(BuildContext context) {
    return FaIcon(
      FontAwesomeIcons.stop,
      color: HexColor('#3B3E45'),
    );
  }
}

// NO SEAT
class NoSeat extends StatefulWidget {
  // const ReservedSeat({ Key? key }) : super(key: key);

  @override
  _NoSeatState createState() => _NoSeatState();
}

class _NoSeatState extends State<NoSeat> {
  @override
  Widget build(BuildContext context) {
    return FaIcon(
      FontAwesomeIcons.stop,
      color: HexColor('#121212'),
    );
  }
}

// AVAILABLE SEAT
class AvailableSeat extends StatefulWidget {
  // const AvailableSeat({ Key? key }) : super(key: key);

  @override
  _AvailableSeatState createState() => _AvailableSeatState();
}

class _AvailableSeatState extends State<AvailableSeat> {
  bool isAvailable = true;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isAvailable = !isAvailable; //toggling occurs here
        });
      },
      child: FaIcon(
        FontAwesomeIcons.stop,
        color: isAvailable ? HexColor('#CACACA') : HexColor('#FFC933'),
      ),
    );
  }
}
