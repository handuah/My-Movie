import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:google_fonts/google_fonts.dart';

class OnboardingScreenThree extends StatefulWidget {
  // const OnboardingScreenThree({ Key? key }) : super(key: key);

  @override
  _OnboardingScreenThreeState createState() => _OnboardingScreenThreeState();
}

class _OnboardingScreenThreeState extends State<OnboardingScreenThree> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: HexColor('#121421'),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: screenHeight * 0.2,
            ),
            Container(
              height: screenHeight * 0.2,
              width: screenWidth * 0.4,
              decoration: BoxDecoration(
                // color: Colors.red,
                image: DecorationImage(
                  image: AssetImage('assets/onboard3.PNG'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(
              height: screenHeight * 0.04,
            ),
            Text(
              'Book Your Ticket',
              style: GoogleFonts.staatliches(
                letterSpacing: 2.0,
                textStyle: TextStyle(
                  color: HexColor("#FFFFFF"),
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              height: screenHeight * 0.04,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: screenWidth * 0.1,
              ),
              child: Text(
                'This is just dummy text to show that something should be here you see?',
                style: GoogleFonts.oxygen(
                  textStyle: TextStyle(
                    color: HexColor("#FFFFFF"),
                    fontSize: 16.0,
                    fontWeight: FontWeight.normal,
                  ),
                ),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              height: screenHeight * 0.2,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: screenWidth * 0.08,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/login');
                    },
                    child: Text(
                      "Let's go!",
                      style: GoogleFonts.oxygen(
                        textStyle: TextStyle(
                          color: HexColor("#000000"),
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    style: TextButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      backgroundColor: HexColor("#FFC933"),
                      padding: EdgeInsets.symmetric(
                        horizontal: screenWidth * 0.3,
                        vertical: screenHeight * 0.017,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: screenHeight * 0.06,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: screenWidth * 0.1,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: screenHeight * 0.005,
                    width: screenWidth * 0.2,
                    decoration: BoxDecoration(
                      color: HexColor("#524828"),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                  SizedBox(
                    width: screenWidth * 0.04,
                  ),
                  Container(
                    height: screenHeight * 0.005,
                    width: screenWidth * 0.2,
                    decoration: BoxDecoration(
                      color: HexColor("#524828"),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                  SizedBox(
                    width: screenWidth * 0.04,
                  ),
                  Container(
                    height: screenHeight * 0.005,
                    width: screenWidth * 0.2,
                    decoration: BoxDecoration(
                      color: HexColor("#FFC933"),
                      borderRadius: BorderRadius.circular(10.0),
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
