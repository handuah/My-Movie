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
          SizedBox(
            height: screenHeight * 0.02,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Latest Movies",
                style: GoogleFonts.oxygen(
                  textStyle: TextStyle(
                    color: HexColor("#ffffff"),
                    fontSize: 20.0,
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
            // color: Colors.red,
            child: ListView(
              padding: EdgeInsets.symmetric(
                horizontal: screenWidth * 0.02,
                vertical: screenHeight * 0.01,
              ),
              scrollDirection: Axis.horizontal,
              children: [
                LatestMovies(
                  'https://hype.my/wp-content/uploads/2020/08/Stranger_2-P1-e1597139208813.jpg',
                ),
                SizedBox(
                  width: screenWidth * 0.04,
                ),
                LatestMovies(
                  'https://www.hellokpop.com/wp-content/uploads/2018/05/misaeng-korean-drama.jpg',
                ),
                SizedBox(
                  width: screenWidth * 0.04,
                ),
                LatestMovies(
                  'https://cosmicbook.news/images/ww84poster-hr.jpg',
                ),
                SizedBox(
                  width: screenWidth * 0.04,
                ),
                LatestMovies(
                  'https://cdna.artstation.com/p/assets/images/images/030/084/918/large/raviteja-g-yeh-jawaani-hai-deewani-albumart.jpg?1599567880',
                ),
              ],
            ),
          ),
          SizedBox(
            height: screenHeight * 0.02,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Upcoming Movies",
                style: GoogleFonts.oxygen(
                  textStyle: TextStyle(
                    color: HexColor("#ffffff"),
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: screenHeight * 0.02,
          ),
          UpcomingMovieCard(
            'https://geek-network.com/wp-content/uploads/2021/06/lokiz.jpg',
            'https://i.pinimg.com/736x/91/50/0a/91500abd4705dbb1f4f3a92870252178.jpg',
            'https://pm1.narvii.com/6726/329053607a757b8e96fc4db41002edf06c29604fv2_hq.jpg',
          ),
          SizedBox(
            height: screenHeight * 0.02,
          ),
          UpcomingMovieCard(
            'https://i.pinimg.com/474x/53/99/ef/5399ef98e8089602ec4e8582ab50f1dc.jpg',
            'https://imagesvc.meredithcorp.io/v3/mm/image?url=https%3A%2F%2Fstatic.onecms.io%2Fwp-content%2Fuploads%2Fsites%2F6%2F2019%2F06%2Fstrangerthings_s3-2000.jpg&q=85',
            'https://static2.showtimes.com/poster/660x980/the-prom-netflix-149579.jpg',
          ),
          SizedBox(
            height: screenHeight * 0.02,
          ),
          UpcomingMovieCard(
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTxtndkCBLIo6iSXozYPMRLeUVdzCWZGLe82Rbo7O0z0UI9Utkreto6nxL9ZiRKvvPHLZM&usqp=CAU',
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTKHdk2KqF5inh1mk55DuBTKWlpSvaMZvJTmw&usqp=CAU',
            'https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/731449f0-8ab0-4a47-872e-2d16d0faf918/d77pexl-66c6f770-4b6b-48c2-9d06-67b69faee590.jpg/v1/fill/w_1024,h_1449,q_75,strp/daredevil_netflix_poster_by_mrpacinohead_d77pexl-fullview.jpg?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7ImhlaWdodCI6Ijw9MTQ0OSIsInBhdGgiOiJcL2ZcLzczMTQ0OWYwLThhYjAtNGE0Ny04NzJlLTJkMTZkMGZhZjkxOFwvZDc3cGV4bC02NmM2Zjc3MC00YjZiLTQ4YzItOWQwNi02N2I2OWZhZWU1OTAuanBnIiwid2lkdGgiOiI8PTEwMjQifV1dLCJhdWQiOlsidXJuOnNlcnZpY2U6aW1hZ2Uub3BlcmF0aW9ucyJdfQ.bxBIi_I1euhP9TZq2TFaNpjteykpKS8vqANnPKKN3Ns',
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

// END OF CATEGORIES LIST

// LATEST IMAGES LIST
class LatestMovies extends StatefulWidget {
  // const LatestMovies({ Key? key }) : super(key: key);
  final String imagePath;

  const LatestMovies(this.imagePath);
  @override
  _LatestMoviesState createState() => _LatestMoviesState();
}

class _LatestMoviesState extends State<LatestMovies> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Container(
      width: screenWidth * 0.54,
      height: screenHeight * 0.05,
      decoration: BoxDecoration(
        color: Colors.yellow,
        borderRadius: BorderRadius.circular(10.0),
        image: DecorationImage(
          image: NetworkImage(
            // 'https://hype.my/wp-content/uploads/2020/08/Stranger_2-P1-e1597139208813.jpg',
            widget.imagePath,
          ),
          fit: BoxFit.cover,
          alignment: Alignment.center,
        ),
      ),
    );
  }
}

// END LATEST IMAGES LIST

// Upcoming Movies Rows
class UpcomingMovieCard extends StatefulWidget {
  // const UpcomingMovieCard({ Key? key }) : super(key: key);
  final String imagePath1;
  final String imagePath2;
  final String imagePath3;

  const UpcomingMovieCard(this.imagePath1, this.imagePath2, this.imagePath3);

  @override
  _UpcomingMovieCardState createState() => _UpcomingMovieCardState();
}

class _UpcomingMovieCardState extends State<UpcomingMovieCard> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          width: screenWidth * 0.28,
          height: screenHeight * 0.20,
          decoration: BoxDecoration(
            color: Colors.yellow,
            borderRadius: BorderRadius.circular(10.0),
            image: DecorationImage(
              image: NetworkImage(
                // 'https://hype.my/wp-content/uploads/2020/08/Stranger_2-P1-e1597139208813.jpg',
                widget.imagePath1,
              ),
              fit: BoxFit.cover,
              alignment: Alignment.center,
            ),
          ),
        ),
        SizedBox(
          width: screenWidth * 0.02,
        ),
        Container(
          width: screenWidth * 0.28,
          height: screenHeight * 0.20,
          decoration: BoxDecoration(
            color: Colors.yellow,
            borderRadius: BorderRadius.circular(10.0),
            image: DecorationImage(
              image: NetworkImage(
                // 'https://hype.my/wp-content/uploads/2020/08/Stranger_2-P1-e1597139208813.jpg',
                widget.imagePath2,
              ),
              fit: BoxFit.cover,
              alignment: Alignment.center,
            ),
          ),
        ),
        SizedBox(
          width: screenWidth * 0.02,
        ),
        Container(
          width: screenWidth * 0.28,
          height: screenHeight * 0.20,
          decoration: BoxDecoration(
            color: Colors.yellow,
            borderRadius: BorderRadius.circular(10.0),
            image: DecorationImage(
              image: NetworkImage(
                // 'https://hype.my/wp-content/uploads/2020/08/Stranger_2-P1-e1597139208813.jpg',
                widget.imagePath3,
              ),
              fit: BoxFit.cover,
              alignment: Alignment.center,
            ),
          ),
        ),
      ],
    );
  }
}
