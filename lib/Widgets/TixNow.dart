import 'package:flutter/material.dart';

class Tixnow extends StatelessWidget {
  const Tixnow({super.key});

 @override
Widget build(BuildContext context) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisSize: MainAxisSize.min, // Pastikan ukuran kolom disesuaikan dengan konten
    children: [
      SizedBox(height: 20),
      Container(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        child: Row(
          children: [
            Text(
              'TIX Now',
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
      Container(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        child: Row(
          children: [
            Text(
              'Update berita terbaru seputar dunia film',
              style: TextStyle(
                color: Colors.grey[600],
                fontSize: 15,
              ),
            ),
          ],
        ),
      ),
      ListView(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        children: [
          beritaItem(
            context,
            'We Live in Time',
            'Drama Romansa Terbaru Dari Andrew Garfield dan Florence Pugh',
            '2 jam lalu',
                'Assets/TIX.png',
          ),
          beritaItem(
            context,
            'Mission: Impossible 8',
            'Tom Cruise Rilis Trailer "The Final Reckoning"',
            '3 hari lalu',
                'Assets/TIX.png',
          ),
          beritaItem(
            context,
            'WICKED',
            'Siap-siap Bernyanyi Bersama Ariana Grande dan Cynthia Erivo',
            '4 hari lalu',
                'Assets/TIX2.png',
          ),
          beritaItem(
            context,
            'Betting With Ghost',
            'Sedang Tayang, Intip Dulu Sinopsis Film Asal Vietnam',
            '5 hari lalu',
                'Assets/TIX1.png',
          ),
        ],
      ),
    ],
  );
}


  Widget beritaItem(BuildContext context, String title, String subtitle,
      String time, String imagePath) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 80,
            height: 80,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              image: DecorationImage(
                image: AssetImage(imagePath),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  subtitle,
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey[700],
                  ),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                SizedBox(height: 5),
                Text(
                  time,
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.grey[500],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
