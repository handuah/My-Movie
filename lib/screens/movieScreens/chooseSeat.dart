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
                FaIcon(
                  FontAwesomeIcons.stop,
                  color: HexColor('#ffffff'),
                ),
                SizedBox(
                  width: screenWidth * 0.05,
                ),
                FaIcon(
                  FontAwesomeIcons.stop,
                  color: HexColor('#ffffff'),
                ),
                SizedBox(
                  width: screenWidth * 0.05,
                ),
                FaIcon(
                  FontAwesomeIcons.stop,
                  color: HexColor('#ffffff'),
                ),
                SizedBox(
                  width: screenWidth * 0.05,
                ),
                FaIcon(
                  FontAwesomeIcons.stop,
                  color: HexColor('#ffffff'),
                ),
                SizedBox(
                  width: screenWidth * 0.1,
                ),
                FaIcon(
                  FontAwesomeIcons.stop,
                  color: HexColor('#ffffff'),
                ),
                SizedBox(
                  width: screenWidth * 0.05,
                ),
                FaIcon(
                  FontAwesomeIcons.stop,
                  color: HexColor('#ffffff'),
                ),
                SizedBox(
                  width: screenWidth * 0.05,
                ),
                FaIcon(
                  FontAwesomeIcons.stop,
                  color: HexColor('#ffffff'),
                ),
                SizedBox(
                  width: screenWidth * 0.05,
                ),
                FaIcon(
                  FontAwesomeIcons.stop,
                  color: HexColor('#ffffff'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
