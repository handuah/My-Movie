import 'package:better_player/better_player.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:google_fonts/google_fonts.dart';

class SevenDeadlyPlayer extends StatefulWidget {
  // const SevenDeadlyPlayer({ Key? key }) : super(key: key);

  @override
  _SevenDeadlyPlayerState createState() => _SevenDeadlyPlayerState();
}

class _SevenDeadlyPlayerState extends State<SevenDeadlyPlayer> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: HexColor('#121421'),
      body: AspectRatio(
        aspectRatio: screenWidth / screenHeight,
        child: BetterPlayer.network(
          "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerBlazes.mp4",
          betterPlayerConfiguration: BetterPlayerConfiguration(
            aspectRatio: screenWidth / screenHeight,
            autoPlay: true,
          ),
        ),
      ),
    );
  }
}
