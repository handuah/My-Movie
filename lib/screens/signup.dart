import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SignUp extends StatefulWidget {
  // const SignUp({ Key? key }) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: HexColor('#121421'),
      body: SingleChildScrollView(
        child: Center(
          // padding: EdgeInsets.symmetric(
          //   vertical: screenWidth * 0.2,
          // ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: screenHeight * 0.1,
              ),
              Icon(
                Icons.movie,
                color: HexColor('#FFC933'),
                size: 50.0,
              ),
              Stack(
                children: <Widget>[
                  // Stroked text as border.
                  Text(
                    'Handy Movies',
                    style: GoogleFonts.staatliches(
                      textStyle: TextStyle(
                        // color: HexColor("#FFC933"),
                        fontSize: 20.0,
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
                        fontSize: 20.0,
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
              Text(
                "Sign Up",
                style: GoogleFonts.oxygen(
                  textStyle: TextStyle(
                    color: HexColor("#ffffff"),
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                height: screenHeight * 0.03,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: screenWidth * 0.1,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextFormField(
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        labelText: 'Full Name',
                        labelStyle: TextStyle(
                          fontSize: 14.0,
                          color: Colors.white,
                        ),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: HexColor("#ffffff"),
                          ),
                        ),
                      ),
                    ),
                    // SizedBox(
                    //   height: screenHeight * 0.02,
                    // ),
                    TextFormField(
                      keyboardType: TextInputType.phone,
                      decoration: InputDecoration(
                        labelText: 'Phone Number',
                        labelStyle: TextStyle(
                          fontSize: 14.0,
                          color: Colors.white,
                        ),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: HexColor("#ffffff"),
                          ),
                        ),
                      ),
                    ),
                    // SizedBox(
                    //   height: screenHeight * 0.02,
                    // ),
                    TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        labelText: 'Email Address',
                        labelStyle: TextStyle(
                          fontSize: 14.0,
                          color: Colors.white,
                        ),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: HexColor("#ffffff"),
                          ),
                        ),
                      ),
                    ),
                    // SizedBox(
                    //   height: screenHeight * 0.02,
                    // ),
                    TextFormField(
                      obscureText: true,
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        labelText: 'Password',
                        labelStyle: TextStyle(
                          fontSize: 14.0,
                          color: Colors.white,
                        ),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: HexColor("#ffffff"),
                          ),
                        ),
                      ),
                    ),
                    // SizedBox(
                    //   height: screenHeight * 0.01,
                    // ),
                    TextFormField(
                      obscureText: true,
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        labelText: 'Confirm Password',
                        labelStyle: TextStyle(
                          fontSize: 14.0,
                          color: Colors.white,
                        ),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: HexColor("#ffffff"),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: screenHeight * 0.06,
                    ),
                    SizedBox(
                      width: screenWidth,
                      height: screenHeight * 0.06,
                      child: TextButton(
                        onPressed: () {},
                        child: Text(
                          "Sign Up",
                          style: GoogleFonts.oxygen(
                            textStyle: TextStyle(
                              color: HexColor("#121212"),
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        style: TextButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          backgroundColor: HexColor("#FFC933"),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: screenHeight * 0.04,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          height: screenHeight * 0.002,
                          width: screenWidth * 0.3,
                          color: Colors.grey,
                        ),
                        Text(
                          "Or",
                          style: GoogleFonts.oxygen(
                            textStyle: TextStyle(
                              color: HexColor("#ffffff"),
                              fontSize: 22.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Container(
                          height: screenHeight * 0.002,
                          width: screenWidth * 0.3,
                          color: Colors.grey,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: screenHeight * 0.03,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Material(
                          color: HexColor('#2C292E'),
                          borderRadius: BorderRadius.circular(50.0),
                          elevation: 2.0,
                          child: IconButton(
                            icon: FaIcon(
                              FontAwesomeIcons.google,
                              color: HexColor('#FFC933'),
                              size: 16.0,
                            ),
                            onPressed: () {},
                          ),
                        ),
                        Material(
                          color: HexColor('#2C292E'),
                          borderRadius: BorderRadius.circular(50.0),
                          elevation: 2.0,
                          child: IconButton(
                            icon: FaIcon(
                              FontAwesomeIcons.twitter,
                              color: HexColor('#FFC933'),
                              size: 16.0,
                            ),
                            onPressed: () {},
                          ),
                        ),
                        Material(
                          color: HexColor('#2C292E'),
                          borderRadius: BorderRadius.circular(50.0),
                          elevation: 2.0,
                          child: IconButton(
                            icon: FaIcon(
                              FontAwesomeIcons.facebookF,
                              color: HexColor('#FFC933'),
                              size: 16.0,
                            ),
                            onPressed: () {},
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
