import 'dart:async';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:google_fonts/google_fonts.dart';

class StartPage extends StatefulWidget {
  // const StartPage({ Key? key }) : super(key: key);

  @override
  _StartPageState createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
  // @override
  // void initState() {
  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    // Timer(Duration(seconds: 3),
    //     () => Navigator.pushNamed(context, '/onboardingOne'));

    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          Navigator.pushNamed(context, '/onboardingOne');
        },
        child: Stack(
          children: [
            Container(
              height: screenHeight,
              width: screenWidth,
              decoration: BoxDecoration(
                color: Colors.black,
                image: DecorationImage(
                  image: NetworkImage(
                      'https://st3.depositphotos.com/1049680/37692/i/450/depositphotos_376922830-stock-photo-young-beautiful-girl-watching-movie.jpg'),
                  fit: BoxFit.fitHeight,
                  scale: 1.0,
                ),
              ),
            ),
            Container(
              height: screenHeight,
              width: screenWidth,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Colors.transparent, HexColor("#000000")],
                ),
              ),
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    Icons.movie,
                    color: HexColor('#FFC933'),
                    size: 90.0,
                  ),
                  Stack(
                    children: <Widget>[
                      // Stroked text as border.
                      Text(
                        'Handy Movies',
                        style: GoogleFonts.staatliches(
                          textStyle: TextStyle(
                            // color: HexColor("#FFC933"),
                            fontSize: 30.0,
                            fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.normal,
                            foreground: Paint()
                              ..style = PaintingStyle.stroke
                              ..strokeWidth = 1
                              ..color = Colors.black,
                          ),
                        ),
                      ),
                      Text(
                        'Handy Movies',
                        style: GoogleFonts.staatliches(
                          textStyle: TextStyle(
                            color: HexColor("#FFC933"),
                            fontSize: 30.0,
                            fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.normal,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: screenHeight * 0.04,
                  ),
                  CircularProgressIndicator(
                    backgroundColor: HexColor("#FFC933"),
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
