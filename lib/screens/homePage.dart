import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  // const HomePage({ Key? key }) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: HexColor('#121212'),
      body: ListView(
        padding: EdgeInsets.only(
          left: screenWidth * 0.04,
          right: screenWidth * 0.04,
          top: screenHeight * 0.08,
        ),
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Stack(
                children: <Widget>[
                  // Stroked text as border.
                  Text(
                    'Handy Movies',
                    style: GoogleFonts.staatliches(
                      textStyle: TextStyle(
                        // color: HexColor("#FFC933"),
                        fontSize: 22.0,
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
                        fontSize: 22.0,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.normal,
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  IconButton(
                    icon: FaIcon(
                      FontAwesomeIcons.search,
                      color: Colors.white,
                      size: 16.0,
                    ),
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: FaIcon(
                      FontAwesomeIcons.bell,
                      color: Colors.white,
                      size: 16.0,
                    ),
                    onPressed: () {},
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            height: screenHeight * 0.0007,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Hannah",
                style: GoogleFonts.oxygen(
                  textStyle: TextStyle(
                    color: HexColor("#ffffff"),
                    fontSize: 14.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                width: screenWidth * 0.04,
              ),
              FaIcon(
                FontAwesomeIcons.chevronRight,
                color: Colors.white,
                size: 12.0,
              ),
            ],
          ),
          SizedBox(
            height: screenHeight * 0.02,
          ),
          Container(
            height: screenHeight * 0.2,
            width: screenWidth,
            // color: Colors.red,
            child: ListView(
              padding: EdgeInsets.symmetric(
                horizontal: screenWidth * 0.02,
              ),
              scrollDirection: Axis.horizontal,
              children: [
                CategoryList('Movies', 'assets/movies.PNG'),
                SizedBox(
                  width: screenWidth * 0.03,
                ),
                CategoryList('Theatre', 'assets/theatre.PNG'),
                SizedBox(
                  width: screenWidth * 0.03,
                ),
                CategoryList('Screens', 'assets/screens.PNG'),
                SizedBox(
                  width: screenWidth * 0.03,
                ),
                CategoryList('Coupons', 'assets/coupon.PNG'),
                SizedBox(
                  width: screenWidth * 0.03,
                ),
                CategoryList('Gift', 'assets/gift.PNG'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// CATEGORIES LIST
class CategoryList extends StatefulWidget {
  // const CategoryList({ Key? key }) : super(key: key);
  final String categoryName;
  final String imagePath;

  const CategoryList(this.categoryName, this.imagePath);
  @override
  _CategoryListState createState() => _CategoryListState();
}

class _CategoryListState extends State<CategoryList> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          height: screenHeight * 0.1,
          width: screenWidth * 0.2,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.0),
            color: HexColor('#ffffff'),
            image: DecorationImage(
              alignment: Alignment.center,
              image: AssetImage(widget.imagePath),
              // image: AssetImage('assets/movies.PNG'),
              fit: BoxFit.fill,
            ),
          ),
        ),
        SizedBox(
          height: screenHeight * 0.02,
        ),
        Text(
          // "Movies",
          widget.categoryName,
          textAlign: TextAlign.center,
          style: GoogleFonts.oxygen(
            textStyle: TextStyle(
              color: HexColor("#ffffff"),
              fontSize: 16.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}
