import 'package:flutter/material.dart';

class Sedangtayang extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          child: Row(
            children: [
              Text(
                'Sedang Tayang',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Spacer(),
              Text(
                "Semua",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                ),
              ),
              Icon(Icons.arrow_circle_right),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                _buildTab("Semua Film"),
                SizedBox(width: 10),
                _buildTab("XXI"),
                SizedBox(width: 10),
                _buildTab("CGV"),
                SizedBox(width: 10),
                _buildTab("Cinepolis"),
                SizedBox(width: 10),
                _buildTab("❤️ Watchlist"),
              ],
            ),
          ),
        ),
        Container(
          height: 450,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              _buildMovieImageWithText(
                'Assets/Movie1.png',
                'Bila Esok Ibu Tiada',
                'Film ini dapat rating ⭐ 9,2 dari penonton lho! Harus ditonton nih!',
              ),
              _buildMovieImageWithText(
                'Assets/Movie2.png',
                'Bila Esok Ibu Tiadat',
                'Film ini dapat rating ⭐ 9,2 dari penonton lho! Harus ditonton nih!',
              ),
              _buildMovieImageWithText(
                'Assets/Movie.png',
                'Bila Esok Ibu Tiada',
                'Film ini dapat rating ⭐ 9,2 dari penonton lho! Harus ditonton nih!',
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildTab(String text) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 8),
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(
        text,
        style: TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}

Widget _buildMovieImageWithText(String image, String title, String description) {
  return Container(
    
    width: 270,
    margin: EdgeInsets.only(left: 7),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image.asset(
            image,
            fit: BoxFit.cover,
            width: double.infinity,
            height: 300,
          ),
        ),
        SizedBox(height: 8),
        Center(
          child: Text(
            title,
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),

        SizedBox(height: 10,),

        Center(
          child: Text(
            description,
            style: TextStyle(
              fontSize: 14,
              color: Colors.black,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ],
    ),
  );
}
